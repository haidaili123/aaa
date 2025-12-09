#!/bin/bash
# 简化的GitHub部署脚本

echo "🚀 开始部署到GitHub..."

# 1. 切换到项目目录
cd "c:/Users/Administrator/CodeBuddy/20251209164246"

# 2. 检查Git状态
echo "📋 检查Git状态..."
git status

# 3. 添加所有文件
echo "➕ 添加文件到暂存区..."
git add .

# 4. 提交更改
echo "💾 提交更改..."
git commit -m "🚀 Deploy interactive data visualization website

✨ Features:
- Low-saturation warm yellow theme
- Interactive charts with Chart.js
- Responsive design
- Chapter 5 data visualization examples

📊 Visualizations:
- Product sales analysis
- Pet ownership statistics  
- Douyin user demographics
- Weather data correlation
- Car sales comparison

🎨 Theme: Warm yellow color palette"

# 5. 强制推送到GitHub
echo "📤 推送到GitHub..."
git push origin main --force

# 6. 检查推送结果
if [ $? -eq 0 ]; then
    echo "✅ 部署成功！"
    echo "🌐 访问地址: https://haidaili123.github.io/QQQ/"
    echo "⚙️  请在GitHub仓库设置中启用GitHub Pages:"
    echo "   1. 访问 https://github.com/haidaili123/QQQ"
    echo "   2. 点击 Settings > Pages"
    echo "   3. Source: Deploy from a branch"
    echo "   4. Branch: main"
    echo "   5. Folder: / (root)"
    echo "   6. 点击 Save"
else
    echo "❌ 部署失败，请检查网络连接和仓库权限"
fi

echo "🎉 部署脚本执行完成！"