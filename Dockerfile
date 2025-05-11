FROM docker.n8n.io/n8nio/n8n:1.91.3

# Configure Node.js maximum heap to use available memory
ENV NODE_OPTIONS="--max-old-space-size=460"

# No additional configuration needed, using the official image directly
