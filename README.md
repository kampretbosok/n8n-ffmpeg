# 🚀 n8n Render.com Blueprint  

**One-click deployment for n8n v1.90.0 on Render.com**  
Pre-configured with production-ready settings for Free and Paid plans.

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)  

## 🔧 Features  

✅ **Optimized for n8n 1.90.0**  
- Queue mode execution (`N8N_EXECUTIONS_MODE=queue`)  
- Persistent workflows (1GB disk mount)  
- Health check endpoint (`/healthz`)

✅ **Preconfigured Environment**  
- Timezone: `America/Los_Angeles` (Oregon region)  
- Secure HTTPS (Port 443)  
- Disabled telemetry (`N8N_DIAGNOSTICS_ENABLED=false`)  

✅ **Render.com Ready**  
- Free/Paid plan compatible  
- Node.js 22.14.0 support  

## 🛠️ Quick Start  

### 1. Deploy to Render  
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/your-repo/n8n-render-blueprint)  

### 2. Manual Setup  
```bash
git clone https://github.com/your-repo/n8n-render-blueprint.git
cd n8n-render-blueprint
```

## ⚙️ Configuration  

| Key Setting               | Value                      |  
|---------------------------|----------------------------|  
| `N8N_USER_FOLDER`         | `/opt/render/.n8n`         |  
| `N8N_PROTOCOL`            | `https`                    |  
| `N8N_EDITOR_BASE_URL`     | `https://your-app.onrender.com` |  

**For paid plans**: Increase disk size in `render.yaml`:  
```yaml
disk:
  sizeGB: 5  # Recommended for production
```

## 📜 License  
MIT License - See [LICENSE](LICENSE).  

## 🌟 Why This Blueprint?  
- **Battle-tested**: Optimized for Render's infrastructure.  
- **Version-pinned**: No breaking changes from untested updates.  
- **Community-friendly**: Contributions welcome!  

### 🔗 Resources  
- [n8n Official Docs](https://docs.n8n.io)  
- [Render.com Pricing](https://render.com/pricing)  
