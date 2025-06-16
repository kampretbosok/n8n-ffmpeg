FROM docker.n8n.io/n8nio/n8n:1.98.1

# Set Node.js heap size to 90% of available memory for n8n, reserving 10% for Docker
ENV NODE_OPTIONS="--max-old-space-size=460"

# No additional configuration needed, using the official image directly
