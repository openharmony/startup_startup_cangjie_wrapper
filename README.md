# startup_startup_cangjie_wrapper

## Introduction

The startup_startup_cangjie_wrapper is a Cangjie API encapsulated on OpenHarmony based on the capabilities of the startup subsystem. The startup subsystem is responsible for starting key system processes and services after the kernel is started and before applications are started. The currently open CommonEvent apis only support standard devices.

## System Architecture

**Figure 1** startup_cangjie_wrapper architecture

![startup_cangjie_wrapper architecture](figures/startup_cangjie_wrapper_architecture_en.png "startup_cangjie_wrapper architecture")

As shown in the architecture pictures, startup provides DeviceInfo:

- DeviceInfo mainly includes OHOS fixed-value parameters, manufacturer fixed-value parameters, and manufacturer dynamic parameters.
- Cangjie Startup FFI Interface Definition： Responsible for defining the C-interoperable Cangjie interface, which is used to realize Cangjie's startup capabilities.
- INIT：Responsible for providing the device information SA service, and encapsulating the C interface for interoperation with Cangjie.

## Directory Structure

```
base/startup/startup_cangjie_wrapper
├── figures      # architecture pictures
└── ohos         # Cangjie Startup code
│   └── device_info
└── test         # Cangjie Startup test cases
```

## Usage

The following features provides the capability to query deviceinfo.

For relevant API of startup, please refer to [ohos.device_info (Device Information)](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-device_info.md).

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Repositories Involved

[startup_init](https://gitee.com/openharmony/startup_init/blob/master/README_zh.md)
