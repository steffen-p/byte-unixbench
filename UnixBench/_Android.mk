#Optimized for Qualcomm: Compiler flags reccomended in DCN: 80-P5465-5 A

LOCAL_CFLAGS:= -DTIME -pedantic -O2 -Wno-error -fomit-frame-pointer -fno-inline -fno-lto -fforce-addr -ffast-math -falign-functions=8 -fno-common -fno-jump-tables -fno-strict-aliasing -funwind-tables

ifdef EXTRA_FLAGS
LOCAL_CFLAGS:= $(LOCAL_CFLAGS) $(EXTRA_FLAGS)
endif

ifndef LOCAL_SRC_FILES
LOCAL_SRC_FILES:= src/$(TARGET_MODULE).c
endif

LOCAL_MODULE:= unixbench_$(TARGET_MODULE)
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
