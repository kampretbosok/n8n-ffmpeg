FROM n8nio/n8n:latest
USER root
RUN apk add --no-cache ffmpeg
USER node

# Set Node.js heap size to 90% of available memory for n8n, reserving 10% for Docker
ENV NODE_OPTIONS="--max-old-space-size=460"

# Crypto for Zoho SalesIQ Security
ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto

# No additional configuration needed, using the official image directly
