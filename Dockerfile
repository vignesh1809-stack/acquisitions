# Base Node.js image
FROM node:22-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies (only package.json is present)
COPY package.json ./
RUN npm install --production=false

# Copy the rest of the source code
COPY . .

# Expose application port (matches PORT env var)
EXPOSE 3001

# Default to production; override in docker-compose.dev.yml
ENV NODE_ENV=production

# Default command for production
CMD ["npm", "start"]
