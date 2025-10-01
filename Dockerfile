FROM node:22.20-alpine AS builder
WORKDIR /build
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM node:22.20-alpine
ENV NODE_ENV=production
WORKDIR /app
COPY --from=builder /build/package*.json ./
COPY --from=builder /build/dist ./dist
RUN npm clean-install --omit=dev
EXPOSE 3000
CMD ["npm", "run", "start"]
