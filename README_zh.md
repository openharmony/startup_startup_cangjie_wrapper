# 启动恢复仓颉接口


## 简介

启动恢复仓颉接口是在 OpenHarmony 上基于启动恢复子系统能力之上封装的仓颉API。启动恢复负责在内核启动之后到应用启动之前的系统关键进程和服务的启动过程的功能。涉及以下组件：

-   init组件

    支持使用LiteOS-A和Linux内核的平台。

    负责处理从内核加载第一个用户态进程开始，到第一个应用程序启动之间的系统服务进程启动过程。启动恢复子系统除负责加载各系统关键进程之外，还需在启动的同时设置其对应权限，并在子进程启动后对指定进程实行保活（若进程意外退出要重新启动），对于核心进程意外退出时，启动恢复子系统还要执行系统重启操作。


-   appspawn应用孵化器组件

    提供了Lite和Standard两个版本，Lite版本支持使用LiteOS-A内核的平台；Standard版本支持使用Linux内核的平台。

    负责接受应用程序框架的命令孵化应用进程，设置其对应权限，并调用应用程序框架的入口。

-   bootstrap启动引导组件

    支持使用LiteOS-M内核的平台。

    提供了各服务和功能的启动入口标识。在SAMGR启动时，会调用bootstrap标识的入口函数，并启动系统服务。

-   syspara系统参数组件

    负责提供获取与设置操作系统相关的系统属性。

    支持全量系统平台。支持的系统属性包括：默认系统属性、OEM厂商系统属性和自定义系统属性。OEM厂商部分仅提供默认值，具体值需OEM产品方按需进行调整。


## 目录

**表 1**  启动恢复源代码目录结构



<table><thead align="left"><tr id="row7977610131417"><th class="cellrowborder" valign="top" width="20.880000000000003%" id="mcps1.2.4.1.1"><p id="p18792459121314">名称</p>
</th>
<th class="cellrowborder" valign="top" width="65.2%" id="mcps1.2.4.1.2"><p id="p77921459191317">描述</p>
</th>
<th class="cellrowborder" valign="top" width="13.919999999999998%" id="mcps1.2.4.1.3"><p id="p101617019356">适配平台</p>
</th>
</tr>
</thead>
<tbody><tr id="row17977171010144"><td class="cellrowborder" valign="top" width="20.880000000000003%" headers="mcps1.2.4.1.1 "><p id="p2793159171311">base/startup/appspawn_lite</p>
</td>
<td class="cellrowborder" valign="top" width="65.2%" headers="mcps1.2.4.1.2 "><p id="p879375920132">应用孵化器组件，appspawn进程，负责通过IPC机制接收Ability Manager Service消息，然后根据消息解析结果启动应用进程并赋予其对应权限。</p>
</td>
<td class="cellrowborder" valign="top" width="13.919999999999998%" headers="mcps1.2.4.1.3 ">LiteOS-A内核平台
</td>
</tr>
<tr id="row17977171010144"><td class="cellrowborder" valign="top" width="20.880000000000003%" headers="mcps1.2.4.1.1 "><p id="p2793159171311">base/startup/appspawn_standard</p>
</td>
<td class="cellrowborder" valign="top" width="65.2%" headers="mcps1.2.4.1.2 "><p id="p879375920132">应用孵化器组件，appspawn进程，负责通过IPC机制接收Ability Manager Service消息，然后根据消息解析结果启动应用进程并赋予其对应权限。</p>
</td>
<td class="cellrowborder" valign="top" width="13.919999999999998%" headers="mcps1.2.4.1.3 ">Linux内核平台
</td>
</tr>
<tr id="row6978161091412"><td class="cellrowborder" valign="top" width="20.880000000000003%" headers="mcps1.2.4.1.1 "><p id="p37931659101311">base/startup/bootstrap_lite</p>
</td>
<td class="cellrowborder" valign="top" width="65.2%" headers="mcps1.2.4.1.2 "><p id="p6793059171318">启动引导组件，启动系统核心服务外的其他服务。</p>
</td>
<td class="cellrowborder" valign="top" width="13.919999999999998%" headers="mcps1.2.4.1.3 ">LiteOS-M内核平台
</td>
</tr>
<tr id="row6978201031415"><td class="cellrowborder" align="left" valign="top" width="20.880000000000003%" headers="mcps1.2.4.1.1 "><p id="p117935599130">base/startup/init</p>
</td>
<td class="cellrowborder" valign="top" width="65.2%" headers="mcps1.2.4.1.2 "><p id="p0793185971316">init组件，init进程，内核完成初始化后加载的第一个用户态进程，启动后解析/etc/init.cfg配置文件，并根据解析结果拉起其他系统关键进程，同时分别赋予其对应权限。</p>
</td>
<td class="cellrowborder" valign="top" width="13.919999999999998%" headers="mcps1.2.4.1.3 ">LiteOS-A内核平台以及Linux内核平台</td>
</tr>
<tr id="row1897841071415"><td class="cellrowborder" valign="top" width="20.880000000000003%" headers="mcps1.2.4.1.1 "><p id="p469782418557">base/startup/syspara_lite</p>
</td>
<td class="cellrowborder" valign="top" width="65.2%" headers="mcps1.2.4.1.2 "><p id="p15697102412558">系统属性组件。提供获取设备信息接口，如：产品名、品牌名、品类名、厂家名等。</p>
</td>
<td class="cellrowborder" valign="top" width="13.919999999999998%" headers="mcps1.2.4.1.3 ">全量平台</td>
</tr>
</tbody>
</table>


```
base/startup/startup_cangjie_wrapper
├── ohos         # 仓颉启动恢复子系统接口实现
```

## 相关仓

**启动恢复子系统**

[startup_init](https://gitee.com/openharmony/startup_init/blob/master/README_zh.md)
