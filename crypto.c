#include <stdio.h>
#include <string.h>

#include <openssl/md5.h>
#include <openssl/sha.h>

#define CRYPTO(ALGO)\
char * \
arc_##ALGO(const char *d, char *o) \
{ \
  int i; \
  unsigned char md[ALGO##_DIGEST_LENGTH]; \
  ALGO((unsigned char*)d, strlen(d), md); \
  for (i = 0; i < ALGO##_DIGEST_LENGTH; i++) sprintf(o+i*2, "%02x", md[i]); \
  return o;\
}

CRYPTO(MD5)
CRYPTO(SHA512)
