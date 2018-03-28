// Stolen from http://www.dimkovic.com/node/22

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>

typedef struct fastrand_t {
    
    //
    // MWC1616 data
    
    int a[4];
    int b[4];
    int mask[4];
    int m1[4];
    int m2[4];
    
    //
    // Result (4 32-bit random numbers)
    
    int res[4];
    
} fastrand;


fastrand InitFastRand()
{
    
    //
    // Initialize MWC1616 masks and multipliers
    // Default values of 18000 and 30903 used
    // for multipliers
    
    fastrand f;
    
    uint8_t i;
    
    for(i=0;i<4;i++) {
        f.mask[i]=0xFFFF;
        f.m1[i]=0x4650;
        f.m2[i]=0x78B7;
    }
    
    f.a[0] = random();
    f.a[1] = random();
    f.a[2] = random();
    f.a[3] = random();
    f.b[0] = random();
    f.b[1] = random();
    f.b[2] = random();
    f.b[3] = random();
    return f;
}

static inline void FastRand(fastrand *f)
{
    __m128i a = _mm_load_si128((const __m128i *)f->a);
    __m128i b = _mm_load_si128((const __m128i *)f->b);
    
    const __m128i mask = _mm_load_si128((const __m128i *)f->mask);
    const __m128i m1 = _mm_load_si128((const __m128i *)f->m1);
    const __m128i m2 = _mm_load_si128((const __m128i *)f->m2);
    
    __m128i amask = _mm_and_si128(a, mask);
    __m128i ashift = _mm_srli_epi32(a, 0x10);
    __m128i amul = _mm_mullo_epi32(amask, m1);
    __m128i anew = _mm_add_epi32(amul, ashift);
    _mm_store_si128((__m128i *)f->a, anew);
    
    __m128i bmask = _mm_and_si128(b, mask);
    __m128i bshift = _mm_srli_epi32(b, 0x10);
    __m128i bmul = _mm_mullo_epi32(bmask, m2);
    __m128i bnew = _mm_add_epi32(bmul, bshift);
    _mm_store_si128((__m128i *)f->b, bnew);
    
    __m128i bmasknew = _mm_and_si128(bnew, mask);
    __m128i ashiftnew = _mm_slli_epi32(anew, 0x10);
    __m128i res = _mm_add_epi32(ashiftnew, bmasknew);
    _mm_store_si128((__m128i *)f->res, res);
}
