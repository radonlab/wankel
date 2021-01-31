#include <stdio.h>

#include "parser/wk_state.h"
#include "parser/goparser.h"

int main(int argc, const char** argv) {
  wk_state_t state;
  if (argc > 1) {
    const char* name = argv[1];
    FILE* file = fopen(name, "r");
    wk_parse(&state, file);
  }
  return 0;
}
