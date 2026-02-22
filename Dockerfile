# Use Bun image
FROM oven/bun:1 AS base
WORKDIR /app

# Install dependencies
FROM base AS deps
COPY package.json bun.lockb* ./
RUN bun install

# Build the application
FROM base AS builder
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Build for production
RUN bun run build

# Production image - using Node.js for the server
FROM node:20-slim AS runner
WORKDIR /app

ENV NODE_ENV=production
ENV PORT=8787
ENV HOST=0.0.0.0

# Copy built application
COPY --from=builder /app/build ./build
COPY --from=builder /app/package.json ./
# Copy src directory for runtime file access (courses.yaml)
COPY --from=builder /app/src ./src

EXPOSE 8787

# Start the production Node.js server
CMD ["node", "build"]
