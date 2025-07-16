# 🚀 n8n Render.com Blueprint

**One-click deployment for n8n v1.102.3 on Render.com**
Pre-configured with production-ready settings for Free and Paid plans.

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

## 🔧 Features

✅ **Optimized for n8n 1.102.3**
- Persistent workflows (1GB disk mount)
- Health check endpoint (`/healthz`)

✅ **Preconfigured Environment**
- Environment variables configured for production
- Secure HTTPS

✅ **Render.com Ready**
- Free/Paid plan compatible

## 🛠️ Quick Start

### 1. Deploy to Render
[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/louisjimenezp/n8n-render-blueprint)

### 2. Manual Setup
```bash
git clone https://github.com/louisjimenezp/n8n-render-blueprint
cd n8n-render-blueprint
```

## ⚙️ Configuration

| Key Setting               | Value                      |
|---------------------------|----------------------------|
| `NODE_ENV`                | `production`               |
| `N8N_USER_FOLDER`         | `/opt/render/.n8n`         |
| `N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS` | `true` |
| `N8N_RUNNERS_ENABLED`     | `true`                     |
| `N8N_EXECUTIONS_MODE`     | `queue`                    |
| `N8N_HOST`                | (not synced)               |
| `N8N_EDITOR_BASE_URL`     | (not synced)               |

### Memory Configuration

For optimal n8n performance, configure `NODE_OPTIONS` to use 90% of the available memory, reserving 10% for Docker overhead. Update the `NODE_OPTIONS` environment variable in your `Dockerfile` or Render configuration:

```bash
NODE_OPTIONS="--max-old-space-size=<90% of available memory in MB>"
```

When scaling between starter and standard configurations, adjust this value accordingly to ensure optimal performance.

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
