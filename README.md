# startup_startup_cangjie_wrapper

## Introduction

The startup_startup_cangjie_wrapper is a Cangjie API encapsulated on OpenHarmony based on the capabilities of the startup subsystem. The startup subsystem is mainly responsible for the startup process of key system processes and services after the kernel is started and before the application is started. The currently open startup Cangjie API only supports standard devices.

## System Architecture

**Figure 1** startup_cangjie_wrapper architecture

![startup_cangjie_wrapper architecture](figures/startup_cangjie_wrapper_architecture_en.png)

As shown in the architecture diagram, the current startup Cangjie API provides device information services:

- DeviceInfo: Mainly includes OHOS fixed-value parameters, manufacturer fixed-value parameters, and manufacturer dynamic parameters.
- Cangjie Startup FFI Interface Definition: Responsible for defining C language interoperation Cangjie interfaces, used to implement Cangjie startup capabilities.
- init: Responsible for providing device information SA services, encapsulating C interfaces for interoperation with Cangjie.
- ark_interop: Provides APILevel and BusinessException.

## Directory Structure

```
base/startup/startup_cangjie_wrapper
├── figures         # architecture pictures
└── ohos            # Cangjie startup subsystem interface implementation
│   └── device_info # DeviceInfo module implementation
└── test            # Cangjie startup subsystem test cases
```

## Usage

The current startup Cangjie API mainly provides device information services.

For startup related APIs, please refer to [ohos.device_info (Device Information)](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-device_info.md).

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Repositories Involved

[arkcompiler_cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop)
[startup_init](https://gitcode.com/openharmony/startup_init)