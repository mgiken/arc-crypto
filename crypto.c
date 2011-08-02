#include <stdio.h>
#include <string.h>
#include <openssl/sha.h>

char *
arc_sha512(const char *d)
{
  int i;
  unsigned char md[SHA512_DIGEST_LENGTH];
  static char o[SHA512_DIGEST_LENGTH*2];

  memset(o, 0, sizeof(o));
  SHA512((unsigned char*)d, strlen(d), md);

  for (i = 0; i < SHA512_DIGEST_LENGTH; i++) {
    sprintf(o+i*2, "%02x", md[i]);
  }

  return o;
}
