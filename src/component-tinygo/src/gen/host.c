// Generated by `wit-bindgen` 0.22.0. DO NOT EDIT!
#include "host.h"
#include <stdlib.h>
#include <string.h>

// Imported Functions from `host`

__attribute__((__import_module__("$root"), __import_name__("print")))
extern void __wasm_import_host_print(uint8_t *, size_t);

// Exported Functions from `host`


// Canonical ABI intrinsics

__attribute__((__weak__, __export_name__("cabi_realloc")))
void *cabi_realloc(void *ptr, size_t old_size, size_t align, size_t new_size) {
  (void) old_size;
  if (new_size == 0) return (void*) align;
  void *ret = realloc(ptr, new_size);
  if (!ret) abort();
  return ret;
}

// Helper Functions

void host_string_set(host_string_t *ret, char*s) {
  ret->ptr = (uint8_t*) s;
  ret->len = strlen(s);
}

void host_string_dup(host_string_t *ret, const char*s) {
  ret->len = strlen(s);
  ret->ptr = cabi_realloc(NULL, 0, 1, ret->len * 1);
  memcpy(ret->ptr, s, ret->len * 1);
}

void host_string_free(host_string_t *ret) {
  if (ret->len > 0) {
    free(ret->ptr);
  }
  ret->ptr = NULL;
  ret->len = 0;
}

// Component Adapters

void host_print(host_string_t *msg) {
  __wasm_import_host_print((uint8_t *) (*msg).ptr, (*msg).len);
}

__attribute__((__export_name__("run")))
void __wasm_export_host_run(void) {
  host_run();
}

// Ensure that the *_component_type.o object is linked in

extern void __component_type_object_force_link_host(void);
void __component_type_object_force_link_host_public_use_in_this_compilation_unit(void) {
  __component_type_object_force_link_host();
}
