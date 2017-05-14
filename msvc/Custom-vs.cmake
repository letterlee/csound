# CUSTOM PROPERTIES TO SET
# GLOBAL
set(CMAKE_VERBOSE_MAKEFILE ON)

# Csound build options for MSVC
set(BUILD_BUCHLA_OPCODES ON)
set(BUILD_CHUA_OPCODES ON)
set(BUILD_CSBEATS ON)
set(BUILD_CSOUNDVST OFF)
set(BUILD_CSOUND_AC OFF)
set(BUILD_CSOUND_AC_LUA_INTERFACE OFF)
set(BUILD_CSOUND_AC_PYTHON_INTERFACE OFF)
set(BUILD_CUDA_OPCODES OFF)
set(BUILD_CXX_INTERFACE ON)
set(BUILD_DSSI_OPCODES OFF)
set(BUILD_EMUGENS_OPCODES ON)
set(BUILD_EXCITER_OPCODES ON)
set(BUILD_FAUST_OPCODES OFF)
set(BUILD_FLUID_OPCODES OFF)
set(BUILD_FRAMEBUFFER_OPCODES ON)
set(BUILD_HDF5_OPCODES ON)
set(BUILD_IMAGE_OPCODES ON)
set(BUILD_INSTALLER ON)
set(BUILD_JACK_OPCODES OFF)
set(BUILD_JAVA_INTERFACE ON)
set(BUILD_LINEAR_ALGEBRA_OPCODES ON)
set(BUILD_LUA_INTERFACE ON)
set(BUILD_LUA_OPCODES ON)
set(BUILD_MULTI_CORE ON)
set(BUILD_OPENCL_OPCODES OFF)
set(BUILD_OSC_OPCODES ON)
set(BUILD_P5GLOVE_OPCODES OFF)
set(BUILD_PADSYNTH_OPCODES OFF)
set(BUILD_PD_CLASS OFF)
set(BUILD_PLATEREV_OPCODES ON)
set(BUILD_PYTHON_INTERFACE ON)
set(BUILD_PYTHON_OPCODES ON)
set(BUILD_RELEASE ON)
set(BUILD_SCANSYN_OPCODES ON)
set(BUILD_SELECT_OPCODE ON)
set(BUILD_SERIAL_OPCODES ON)
set(BUILD_STACK_OPCODES ON)
set(BUILD_STATIC_LIBRARY ON)
set(BUILD_STK_OPCODES ON)
set(BUILD_TESTS ON)
set(BUILD_UTILITIES ON)
set(BUILD_VIRTUAL_KEYBOARD ON)
set(BUILD_WEBSOCKET_OPCODE ON)
set(BUILD_WIIMOTE_OPCODES OFF)
set(BUILD_WINDSOUND ON)

# Csound use features
set(USE_ALSA 0) # N/A
set(USE_ATOMIC_BUILTIN 0) # Needs code changes for MSVC
set(USE_AUDIOUNIT 0) # N/A
set(USE_CURL 0) # Not working, necessary even?
set(USE_COMPILER_OPTIMIZATIONS 1)
set(USE_COREMIDI 0) # N/A
set(USE_DOUBLE 1)
set(USE_FLTK 1)
set(USE_GETTEXT	0)
set(USE_IPMIDI 0)
set(USE_JACK 0) # N/A
set(USE_LIB64 1) 
set(USE_LRINT 1)
set(USE_OPEN_MP 0)
set(USE_PORTAUDIO 1)
set(USE_PORTMIDI 1)
set(USE_PULSEAUDIO 0) # N/A
set(USE_SYSTEM_PORTSMF 1)

# Misc build options
set(HAVE_BIG_ENDIAN 0)
set(CMAKE_16BIT_TYPE "unsigned short")
set(FAIL_MISSING OFF) # Enable when packaging

# Explicit settings for locally downloaded dependencies
# TODO ideally find all of these on path
set(FLEX_EXECUTABLE "../deps/win_flex_bison/win_flex.exe")
set(BISON_EXECUTABLE "../deps/win_flex_bison/win_bison.exe")
set(LIBSNDFILE_LIBRARY "../../deps/lib/libsndfile-1")
set(SWIG_DIR "")
set(PORTAUDIO_INCLUDE_PATH "../../deps/include")
set(PORTAUDIO_LIBRARY "../../deps/lib/portaudio_x64")
set(OSC_HEADER "../../deps/include")
set(LIBLO_LIBRARY "../../deps/lib/lo")

# Disable the following warnings in msvc
# - C4244 loss of data in conversion
# - C4267 loss of data in conversion
# - C4005 macro refinitions
# - C4996 unsafe functions
# - C4047 levels of indirection difference (int and void*)
# - C4090 different const qualifiers
# - C4477 format string type differences
set(CMAKE_C_FLAGS "${CMAKE_CX_FLAGS} /wd4244 /wd4267 /wd4005 /wd4996 /wd4047 /wd4090 /wd4477")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /wd4244 /wd4267 /wd4005 /wd4996 /wd4047 /wd4090 /wd4477")

# FIXME this is supposedly a bad thing, figure out something else maybe
list(APPEND CMAKE_SYSTEM_INCLUDE_PATH 
  "${CMAKE_CURRENT_BINARY_DIR}/../deps/include")
list(APPEND CMAKE_SYSTEM_LIBRARY_PATH
  "${CMAKE_CURRENT_BINARY_DIR}/../deps/lib")
