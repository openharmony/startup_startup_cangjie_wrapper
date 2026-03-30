/*
 * Copyright (c) 2026 Huawei Device Co., Ltd.
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

package ohos.device_info

import ohos.labels.APILevel

@!APILevel[
    since: "22",
    syscap: "SystemCapability.Startup.SystemInfo"
]
public class DeviceInfo {
    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop deviceType: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osFullName: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productModel: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop brand: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop udid: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildRootHash: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildTime: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildHost: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildUser: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildType: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop versionId: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop firstApiVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop sdkApiVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop buildVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop featureVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop seniorVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop majorVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop displayVersion: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        permission: "ohos.permission.sec.ACCESS_UDID",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop serial: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop osReleaseType: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop incrementalVersion: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop securityPatchTag: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop abiList: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop bootloaderVersion: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop hardwareModel: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop softwareModel: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop productSeries: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop marketName: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop manufacture: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSName: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSVersion: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiVersion: Int32 {
        
        get() {
            return 0
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSReleaseType: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop ODID: String {
        
        get() {
            return String()
        }
    }

    @!APILevel[
        since: "22",
        syscap: "SystemCapability.Startup.SystemInfo"
    ]
    public static prop distributionOSApiName: String {
        
        get() {
            return String()
        }
    }
    
    init() {
        super()
    }
}
