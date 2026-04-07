#!/bin/bash
# 电子科技大学清水河校区天气检查脚本

echo "🌤️ 电子科技大学清水河校区天气报告（$(date '+%Y-%m-%d %H:%M')）"
echo "=========================================================="
curl -s "wttr.in/电子科技大学清水河校区?format=%l:+%c+%t+(feels+like+%f),+%w+wind,+%h+humidity,+%p+precipitation"
echo ""
echo ""
echo "📅 今日天气概况："
curl -s "wttr.in/电子科技大学清水河校区?0" | head -10
echo ""
echo "温馨提示：根据当前位置天气情况，合理安排出行～"