# TXT Reader 项目结构

## 1. 项目描述
本项目是一个跨平台的TXT小说阅读器，基于 Flutter 框架开发，使用 GetX 进行状态管理和页面跳转。

## 2. 主要功能
- 选择并读取本地TXT文件
- 分离TXT文件中的章节
- 章节目录和正文展示
- 支持自定义字体和样式

## 3. 目录结构
```
lib/
├── main.dart               # 应用程序入口
├── controllers/            # GetX 控制器
│   └── txt_controller.dart # 用于管理TXT文件的解析和章节状态
├── screens/                # 屏幕页面
│   ├── home_screen.dart    # 主页，选择文件
│   ├── chapter_screen.dart # 章节列表页面
│   └── content_screen.dart # 正文展示页面
├── services/               # 服务类
│   └── txt_parser.dart     # 用于解析TXT文件
└──

 widgets/                # 可重用的UI组件
```
