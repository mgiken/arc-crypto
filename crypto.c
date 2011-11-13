#include <stdio.h>
#include <string.h>
#include <openssl/md5.h>
#include <openssl/sha.h>

#define DEF(name, algo, len) \
char * \
name(const char *d) \
{ \
  int i; \
  unsigned char md[len]; \
  static char o[len*2]; \
  memset(o, 0, sizeof(o)); \
  algo((unsigned char*)d, strlen(d), md); \
  for (i = 0; i < len; i++) sprintf(o+i*2, "%02x", md[i]); \
  return o;\
}


DEF(arc_md5,    MD5,    MD5_DIGEST_LENGTH)
DEF(arc_sha512, SHA512, SHA512_DIGEST_LENGTH)
