FROM journeyapps/powersync-service:latest

# Copy the configuration file
COPY powersync.yaml /app/powersync.yaml

# Expose the port
EXPOSE 8080

# Set working directory
WORKDIR /app

# Start PowerSync with the configuration file
CMD ["sh", "-c", "start -r unified -c /app/powersync.yaml"]
