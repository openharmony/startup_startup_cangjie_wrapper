/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file.

package ohos.device_info

import ohos.labels.{APILevel, Hide}

foreign {
    func FfiOHOSDeviceInfoGetHardwareProfile(): CString

    func FfiOHOSDeviceInfoDeviceType(): CString

    func FfiOHOSDeviceInfoOsFullName(): CString

    func FfiOHOSDeviceInfoProductModel(): CString

    func FfiOHOSDeviceInfoBrand(): CString

    func FfiOHOSDeviceInfoUdid(): CString

    func FfiOHOSDeviceInfoBuildRootHash(): CString

    func FfiOHOSDeviceInfoBuildTime(): CString

    func FfiOHOSDeviceInfoBuildHost(): CString

    func FfiOHOSDeviceInfoBuildUser(): CString

    func FfiOHOSDeviceInfoBuildType(): CString

    func FfiOHOSDeviceInfoVersionId(): CString

    func FfiOHOSDeviceInfoFirstApiVersion(): Int64

    func FfiOHOSDeviceInfoSdkApiVersion(): Int64

    func FfiOHOSDeviceInfoBuildVersion(): Int64

    func FfiOHOSDeviceInfoFeatureVersion(): Int64

    func FfiOHOSDeviceInfoSeniorVersion(): Int64

    func FfiOHOSDeviceInfoMajorVersion(): Int64

    func FfiOHOSDeviceInfoDisplayVersion(): CString

    func FfiOHOSDeviceInfoSerial(): CString

    func FfiOHOSDeviceInfoOsReleaseType(): CString

    func FfiOHOSDeviceInfoIncrementalVersion(): CString

    func FfiOHOSDeviceInfoSecurityPatchTag(): CString

    func FfiOHOSDeviceInfoAbiList(): CString

    func FfiOHOSDeviceInfoBootloaderVersion(): CString

    func FfiOHOSDeviceInfoHardwareModel(): CString

    func FfiOHOSDeviceInfoSoftwareModel(): CString

    func FfiOHOSDeviceInfoProductSeries(): CString

    func FfiOHOSDeviceInfoManufacture(): CString

    func FfiOHOSDeviceInfoMarketName(): CString

    func FfiOHOSDeviceInfoDistributionOSName(): CString

    func FfiOHOSDeviceInfoDistributionOSVersion(): CString

    func FfiOHOSDeviceInfoDistributionOSApiVersion(): Int64

    func FfiOHOSDeviceInfoDistributionOSReleaseType(): CString

    func FfiOHOSDeviceInfoDevOdid(): CString

    func FfiOHOSDeviceInfoDistributionOSApiName(): CString
}

/**
 *  A static class pertaining to the product information.
 */
@!APILevel[
    since: "22",
    syscap: "SystemCapability.Startup.SystemInfo"
]
public class DeviceInfo {
    init() {}
    /**
      * Obtains the device type represented by a string, which can be phone (or default for phones), wearable,
      * liteWearable, tablet, tv, car, or smartVision.
      */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop deviceType: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDeviceType() }
            cValue.toString()
        }
    }

    /**
     * Obtains the device manufacturer represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop manufacture: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoManufacture() }
            cValue.toString()
        }
    }

    /**
     * Obtains the device brand represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop brand: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBrand() }
            cValue.toString()
        }
    }

    /**
     * Obtains the external product series represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop marketName: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoMarketName() }
            cValue.toString()
        }
    }

    /**
     * Obtains the product series represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productSeries: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoProductSeries() }
            cValue.toString()
        }
    }

    /**
     * Obtains the product model represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productModel: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoProductModel() }
            cValue.toString()
        }
    }

    /**
     * Obtains the product model alias represented by a string.
     */
    @!Hide[isChecked: true]
    internal static prop productModelAlias: String {
        get() {
            return ""
        }
    }

    /**
     * Obtains the software model represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop softwareModel: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoSoftwareModel() }
            cValue.toString()
        }
    }

    /**
     * Obtains the hardware model represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareModel: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoHardwareModel() }
            cValue.toString()
        }
    }

    /**
     * Obtains the device serial number represented by a string.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop serial: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoSerial() }
            cValue.toString()
        }
    }

    /**
     * Obtains the bootloader version number represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop bootloaderVersion: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBootloaderVersion() }
            cValue.toString()
        }
    }

    /**
     * Obtains the application binary interface (Abi) list represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop abiList: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoAbiList() }
            cValue.toString()
        }
    }

    /**
     * Obtains the security patch level represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop securityPatchTag: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoSecurityPatchTag() }
            cValue.toString()
        }
    }

    /**
     * Obtains the product version represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop displayVersion: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDisplayVersion() }
            cValue.toString()
        }
    }

    /**
     * Obtains the incremental version represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop incrementalVersion: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoIncrementalVersion() }
            cValue.toString()
        }
    }

    /**
     * Obtains the OS release type represented by a string.
     * The OS release category can be Release, Beta, or Canary.
     * The specific release type may be Release, Beta1, or others alike.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osReleaseType: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoOsReleaseType() }
            cValue.toString()
        }
    }

    /**
     * Obtains the OS version represented by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osFullName: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoOsFullName() }
            cValue.toString()
        }
    }

    /**
     * Obtains the major (M) version number, which increases with any updates to the overall architecture.
     * The M version number monotonically increases from 1 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop majorVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoMajorVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the senior (S) version number, which increases with any updates to the partial
     * architecture or major features.
     * The S version number monotonically increases from 0 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop seniorVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoSeniorVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the feature (F) version number, which increases with any planned new features.
     * The F version number monotonically increases from 0 or 1 to 99.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop featureVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoFeatureVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the build (B) version number, which increases with each new development build.
     * The B version number monotonically increases from 0 or 1 to 999.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoBuildVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the SDK API version number.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop sdkApiVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoSdkApiVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the first API version number.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop firstApiVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoFirstApiVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the version ID by a string.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop versionId: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoVersionId() }
            cValue.toString()
        }
    }

    /**
     * Obtains the build types of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildType: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBuildType() }
            cValue.toString()
        }
    }

    /**
     * Obtains the different build user of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildUser: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBuildUser() }
            cValue.toString()
        }
    }

    /**
     * Obtains the different build host of the same baseline code.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildHost: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBuildHost() }
            cValue.toString()
        }
    }

    /**
     * Obtains the build time.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildTime: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBuildTime() }
            cValue.toString()
        }
    }

    /**
     * Obtains the version hash.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildRootHash: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoBuildRootHash() }
            cValue.toString()
        }
    }

    /**
     * Obtains the device udid.
     */
    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop udid: String {
        get() {
            let cValue = unsafe { FfiOHOSDeviceInfoUdid() }
            let value = cValue.toString()
            unsafe { LibC.free(cValue) }
            return value
        }
    }

    /**
     * Obtains the Distribution OS name.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS name.
     * distributionOsName will return the ISV OS name
     * If ISV not specified, it will return an empty string
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSName: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDistributionOSName() }
            cValue.toString()
        }
    }

    /**
     * Obtains the Distribution OS version.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS version.
     * distributionOSVersion will return the ISV OS version
     * If ISV not specified, it will return the same value as osFullName
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSVersion: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDistributionOSVersion() }
            cValue.toString()
        }
    }

    /**
     * Obtains the Distribution OS version.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS api version.
     * distributionOSVersion will return the ISV OS api version
     * If ISV not specified, it will return the same value as sdkApiVersion
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiVersion: Int32 {
        get() {
            let ret = unsafe { FfiOHOSDeviceInfoDistributionOSApiVersion() }
            Int32(ret)
        }
    }

    /**
     * Obtains the Distribution OS api name.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS api name.
     * distributionOSApiName will return the ISV OS api name
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiName: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDistributionOSApiName() }
            cValue.toString()
        }
    }

    /**
     * Obtains the Distribution OS release type.
     * Independent Software Vendor (ISV) may distribute OHOS with their own OS release type.
     * distributionOSVersion will return the ISV OS release type
     * If ISV not specified, it will return the same value as osReleaseType
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSReleaseType: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDistributionOSReleaseType() }
            cValue.toString()
        }
    }

    /**
     * Open Device Identifier (ODID): a developer-level non-permanent device identifier.
     * A developer can be an enterprise or individual developer.
     * Example: dff3cdfd-7beb-1e7d-fdf7-1dbfddd7d30c
     *
     * An ODID will be regenerate in the following scenarios:
     * Restore a phone to its factory settings.
     * Uninstall and reinstall all apps of one developer on one device.
     *
     * An ODID is generated based on the following rules:
     * For apps from the same developer, which are running on the same device, they have the same ODID.
     * For apps from different developers, which are running on the same device, each of them has its own ODID.
     * For apps from the same developer, which are running on different devices, each of them has its own ODID.
     * For apps from different developers, which are running on different devices, each of them has its own ODID.
     */
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop ODID: String {
        get() {
            // cValue is local static variable from native, no need to free.
            let cValue = unsafe { FfiOHOSDeviceInfoDevOdid() }
            cValue.toString()
        }
    }

    /**
     * Obtaining the hard drive serial number.
     */
    @!Hide[isChecked: true]
    internal static prop diskSN: String {
        get() {
            return ""
        }
    }

    /**
     * Obtaining the performance class.
     */
    @!Hide[isChecked: true]
    internal static prop performanceClass: PerformanceClassLevel {
        get() {
            return PerformanceClassLevel.ClassLevelHigh
        }
    }

    /**
     * Obtains the device CPU chipType by a string.
     */
    @!Hide[isChecked: true]
    internal static prop chipType: String {
        get() {
            return ""
        }
    }

    /**
     * Obtains the deviceboot count by a number
     * if get failed, it will return -1
     */
    @!Hide[isChecked: true]
    internal static prop bootCount: Int32 {
        get() {
            -1
        }
    }
}

/**
 * Performance Class level of a device.
 */
@!Hide[isChecked: true]
internal enum PerformanceClassLevel {
    /**
     * Device Capability Level is high.
     */
    @!Hide[isChecked: true]
    ClassLevelHigh
    |
    /**
     * Device Capability Level is medium.
     */
    @!Hide[isChecked: true]
    ClassLevelMedium
    |
    /**
     * Device Capability Level is low.
     */
    @!Hide[isChecked: true]
    ClassLevelLow
    | ...
}
