# Step 1: Use an official lightweight Nginx image
FROM nginx:alpine

# Step 2: Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Remove default nginx static files
RUN rm -rf ./*

# Step 4: Copy your project files into the container
COPY . .

# Step 5: Expose port 80 to access the app
EXPOSE 80

# Step 6: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
