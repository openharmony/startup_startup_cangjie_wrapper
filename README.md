# startup_startup_cangjie_wrapper

## Introduction

The startup_startup_cangjie_wrapper is a device information query service provided for developers to conduct application development using the Cangjie language on OpenHarmony. The currently open startup_startup_cangjie_wrapper only supports standard devices.

## System Architecture

**Figure 1** startup_cangjie_wrapper architecture

![startup_cangjie_wrapper architecture](figures/startup_cangjie_wrapper_architecture_en.png)

As shown in the architecture diagram, the current startup_startup_cangjie_wrapper provides device information services:

Interface Layer：
- DeviceInfo: Provides developers with the capability to query device information. The device information mainly includes OHOS fixed-value parameters, manufacturer fixed-value parameters, and manufacturer dynamic parameters.

Framework Layer：
- DeviceInfo Wrapper: It is the encapsulation of device information functions implemented based on the device information SA service provided by the underlying init. It provides device type information, device manufacturer information, system software API version information, and device UDID information, etc.

Dependency Components Introduction in Architecture:
- init: Relies on the device information SA service provided by the init for querying device information.
- cangjie_ark_interop: Depends on APILevel class definitions and BusinessException class definitions for API annotation and throwing exceptions to users in error branches.

## Directory Structure

```
base/startup/startup_cangjie_wrapper
├── figures         # architecture pictures
└── ohos            # Cangjie startup subsystem interface implementation
│   └── device_info # DeviceInfo module implementation
└── test            # Cangjie startup subsystem test cases
    └── device_info # DeviceInfo test cases
```

## Usage

The current startup_startup_cangjie_wrapper mainly provides device information services.

For startup related APIs, please refer to [ohos.device_info (Device Information)](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_en/apis/BasicServicesKit/cj-apis-device_info.md).

## Constraints

To obtain the device serial number information, the ohos.permission.sec.ACCESS_UDID permission is required (this permission is only available for system applications and enterprise custom applications to apply for).

## Code Contribution

Developers are welcome to contribute code, documentation, etc. For specific contribution processes and methods, please refer to [Code Contribution](https://gitcode.com/openharmony/docs/blob/master/en/contribute/code-contribution.md).

## Repositories Involved

[arkcompiler_cangjie_ark_interop](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop)

[startup_init](https://gitcode.com/openharmony/startup_init)