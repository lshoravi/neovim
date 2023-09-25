#include <libguile.h>

void *guile_primitive_load(void *data) 
{
  char *filename = (char *) data;

  if (filename != null) 
  {
    scm_c_primitive_load(filename);
  }
}
