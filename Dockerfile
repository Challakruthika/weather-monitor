# 1. Use official Node image
FROM node:18

# 2. Set working directory
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install --legacy-peer-deps

# 4. Copy rest of the files
COPY . .

# 5. Build the SvelteKit app
RUN npm run build

# 6. Expose the port and run
EXPOSE 3000
CMD ["node", "build"]

