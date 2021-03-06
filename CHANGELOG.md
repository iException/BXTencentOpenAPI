# Changelog

注意：早些时候的版本变更信息已经不可考，遂未列入

## Version 3.3.0 (2017/09/18)

* SDK 包体大幅优化，缩减 40%
* 优化了底层架构，提升稳定性，减少登录和分享失败概率
* 增强了数据存储和传输的安全性，修复了底层组件的安全漏洞
* 支持了 TIM 和 QIM 的登录和分享，优化现有用户体验


## Version 3.1.3 (2016/12/06)

* 内部网络接口全面支持 HTTPS
* 修复和第三方 hook 消息转发可能崩溃的问题
* 支持 CPU 指令集补充对模拟器的支持


## Version 3.1.0 (2016/05/17)

* 新增功能：一键加群功能
* 修正 log 文件从 Documents 目录移到 Caches 目录
* 修正通过 HTML 5 登录，分享到『手Q』提示账号不符合
* 修正分享到群部落
* 修正 SDK 添加游戏好友获取好友设置失败
* 修复登录 web view 界面，放大镜穿透的问题
* 支持 CPU 指令集版本由 arm7、arm7s、arm64、i386 、x86_64 变更到 armv7、x86_64、arm64


## Version 2.9.5 (2015/12/16)

* 关闭以下功能: 第三方 app 直接上传图片和视频到空间，分享的图片支持在动态直接展示，视频支持动态里直接播放


## Version 2.9.3 (2015/11/03)

* 支持第三方 APP 直接上传图片和视频到空间，分享的图片支持在动态直接展示，视频支持动态里直接播放
* 修改分享流程，启用 web view 权限的 app 只有在无安装『手Q』或者『手Q』版本过旧才会启用 HTML 5 页面分享
* 修改一些 bug（QQ 空间分享时打开外部浏览器问题、模拟器里 HTML 5 登陆页面空白问题、分享 HTML 5 页面空白问题等）
* TencentOpenApi_IOS_Bundle.bundle 去除 info.plist，SDK 增加版本号标记
