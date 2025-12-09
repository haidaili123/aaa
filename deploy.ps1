# GitHub部署PowerShell脚本
Write-Host "🚀 开始部署到GitHub..." -ForegroundColor Green

# 切换到项目目录
Set-Location "c:/Users/Administrator/CodeBuddy/20251209164246"

try {
    # 检查Git状态
    Write-Host "📋 检查Git状态..." -ForegroundColor Blue
    git status

    # 添加所有文件
    Write-Host "➕ 添加文件到暂存区..." -ForegroundColor Blue  
    git add .

    # 提交更改
    Write-Host "💾 提交更改..." -ForegroundColor Blue
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

    # 强制推送到GitHub
    Write-Host "📤 推送到GitHub..." -ForegroundColor Blue
    git push origin main --force

    # 检查推送结果
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ 部署成功！" -ForegroundColor Green
        Write-Host "🌐 访问地址: https://haidaili123.github.io/QQQ/" -ForegroundColor Cyan
        Write-Host "⚙️  请在GitHub仓库设置中启用GitHub Pages:" -ForegroundColor Yellow
        Write-Host "   1. 访问 https://github.com/haidaili123/QQQ" -ForegroundColor White
        Write-Host "   2. 点击 Settings > Pages" -ForegroundColor White  
        Write-Host "   3. Source: Deploy from a branch" -ForegroundColor White
        Write-Host "   4. Branch: main" -ForegroundColor White
        Write-Host "   5. Folder: / (root)" -ForegroundColor White
        Write-Host "   6. 点击 Save" -ForegroundColor White
    } else {
        Write-Host "❌ 部署失败，请检查网络连接和仓库权限" -ForegroundColor Red
    }

} catch {
    Write-Host "❌ 执行过程中发生错误: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "🎉 部署脚本执行完成！" -ForegroundColor Green