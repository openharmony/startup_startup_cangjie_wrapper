# 启动恢复仓颉接口

## 简介

启动恢复仓颉接口是在 OpenHarmony 上基于启动恢复子系统能力之上封装的仓颉API。启动恢复负责在内核启动之后到应用启动之前的系统关键进程和服务的启动过程的功能。

## 系统架构

**图 1** 启动恢复仓颉架构图

![启动恢复仓颉架构图](figures/startup_cangjie_wrapper_architecture_zh.png "启动恢复仓颉架构图")

## 目录

```cangjie
base/startup/startup_cangjie_wrapper
├── figures      # 存放readme中的架构图
└── ohos         # 仓颉启动恢复子系统接口实现
```

## 约束

当前开放的启动恢复仓颉接口仅支持小型系统设备（参考内存≥1MB），标准系统Hi3516DV300、Hi3518EV300以及RK3568等。

## 使用说明

如架构图所示，当前启动恢复仓颉接口仅提供设备信息服务。

启动恢复相关API请参见[ohos.device_info（设备信息）](https://gitcode.com/openharmony-sig/arkcompiler_cangjie_ark_interop/blob/master/doc/API_Reference/source_zh_cn/apis/BasicServicesKit/cj-apis-device_info.md)。

## 参与贡献

欢迎广大开发者贡献代码、文档等，具体的贡献流程和方式请参见[参与贡献](https://gitcode.com/openharmony/docs/blob/master/zh-cn/contribute/%E5%8F%82%E4%B8%8E%E8%B4%A1%E7%8C%AE.md)。

## 相关仓

[startup_init](https://gitee.com/openharmony/startup_init/blob/master/README_zh.md)
