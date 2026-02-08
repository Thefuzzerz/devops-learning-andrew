# ---- Build stage ----
FROM node:20-alpine AS build
WORKDIR /app

# Copy only package files first for better layer caching
COPY apps/package*.json ./apps/
WORKDIR /app/apps
RUN npm ci

# Copy app source and build
COPY apps/ ./
RUN npm run build

# ---- Runtime stage ----
FROM node:20-alpine AS runtime
WORKDIR /app/apps

ENV NODE_ENV=production

# Copy only what we need to run "vite preview"
COPY --from=build /app/apps/package*.json ./
RUN npm ci --omit=dev

COPY --from=build /app/apps/dist ./dist
COPY --from=build /app/apps/vite.config.* ./

EXPOSE 3000

# Serve the built app on port 3000
CMD ["npx", "vite", "preview", "--host", "0.0.0.0", "--port", "3000", "--strictPort"]