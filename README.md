# 🤖 ai-daily-log

小虾米 AI 助手日常调试图记录 | Daily AI Assistant Debug Log

---

## 📖 项目简介

本仓库用于记录 AI 助手（小虾米🦐）的日常调试过程、配置变更和解决方案。

---

## 📅 配置历史（按日期）

### 2026-03-22 — 初始化配置
- **模型配置**：配置双模型切换
  - 主模型：智谱 GLM-4.7-Flash（免费）
  - 复杂任务：DeepSeek Chat
  - 规则：对话开头使用 `##` 切换模型
- **Token 优化**：配置 6 种节约 tokens 的方法（压缩会话、精简心跳等）
- **飞书集成**：配置飞书消息发送（App ID: `【飞书AppID】`）
- **首次连接**：Q1an 首次对话，完成基础配置

### 2026-03-23 — 天气任务修复
- **问题**：9:00 天气任务未发送
- **原因**：HEARTBEAT.md 中未配置天气检查
- **修复**：添加 9:00/11:00 天气检查到心跳任务
- **创建**：`check_weather.sh` 天气检查脚本
- **模型路由**：修复 webchat 绑定到错误模型的问题

### 2026-03-24 — 飞书配置修复
- **问题**：天气 cron 任务报错 "Feishu account 'default' not configured"
- **原因**：`openclaw.json` 飞书配置重复，缺少 `defaultAccount`
- **修复**：清理配置，添加 `defaultAccount: "main"`

### 2026-03-26 — 天气位置精确化
- **修改**：天气提醒位置从"【城市】"精确到"【用户位置】"
- **验证**：wttr.in 可正确识别新位置

### 2026-04-05 — 心跳环境问题
- **问题**：Heartbeat 环境不支持 exec，9:00/11:00 天气报告无法发送
- **状态**：需要使用 cron 任务发送天气报告

### 2026-04-07 — GitHub 同步配置
- **PAT Token**：配置 GitHub Personal Access Token
- **仓库**：`Q1an2333/ai-daily-log`
- **教训**：Token 不能写在文件里，GitHub 会自动扫描并拦截
- **解决**：Token 保存在 `~/.git-credentials`
- **清理**：删除敏感信息（API keys、tokens），重写 git 历史

---

## 🔧 目录结构

```
/
├── README.md              # 项目说明（本文件）
├── AGENTS.md              # Agent 配置
├── SOUL.md                # AI 人格定义
├── MEMORY.md              # 长期记忆
├── HEARTBEAT.md           # 心跳检查配置
├── TOOLS.md               # 本地工具配置
├── IDENTITY.md            # 身份信息
├── USER.md                # 用户信息
├── check_weather.sh       # 天气检查脚本
├── memory/                # 每日调试日志
│   ├── 2026-03-22.md
│   ├── 2026-03-23.md
│   ├── 2026-03-25.md
│   ├── 2026-03-26.md
│   └── 2026-04-07.md
└── skills/                # 技能配置
    ├── tavily/
    ├── multi-search-engine/
    ├── playwright/
    └── skill-vetter/
```

---

## 🤖 关于小虾米

- **名字**：小虾米 🦐
- **框架**：OpenClaw
- **主模型**：智谱 GLM-4.7-Flash
- **用户位置**：【用户位置】（【城市】）

---

*本项目由 AI 自动维护*
