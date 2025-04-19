FROM ghcr.io/gitroomhq/postiz-app:latest

# Create necessary directories
RUN mkdir -p /data/uploads

# Set environment variables
ENV PORT=8080
ENV UPLOAD_DIRECTORY=/data/uploads
ENV NEXT_PUBLIC_UPLOAD_DIRECTORY=/data/uploads

# Expose the port
EXPOSE 8080

# Start the application
CMD ["npm", "start"] 