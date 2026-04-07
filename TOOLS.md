# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

## Email Configuration

### QQ Mail (SMTP)
- **Account**: `【QQ号】@qq.com`
- **SMTP Server**: `smtp.qq.com`
- **Port**: `587`
- **Auth**: 使用QQ邮箱授权码（需定期刷新）
- **授权码**: (已保存在本地配置)
- **Status**: ✅ 已配置，可直接发送邮件
- **收件人**: 【163邮箱】@163.com

> ⚠️ 敏感凭据已脱敏，请勿直接写入文件！

---

## GitHub Configuration

### GitHub Personal Access Token
- **Token**: (已保存在 ~/.git-credentials)
- **Username**: `Q1an2333`
- **Repository**: `Q1an2333/ai-daily-log`
- **Status**: ✅ 已配置
- **用途**: 同步调试记录到GitHub

> ⚠️ Token不要直接写入文件！

---

Add whatever helps you do your job. This is your cheat sheet.
