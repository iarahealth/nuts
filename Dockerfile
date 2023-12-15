FROM node:18-alpine

# Switch to /app
WORKDIR /app
# Install deps
COPY package.json ./
RUN npm install --production
# Copy source
COPY . ./

ENTRYPOINT ["npm", "start"]
