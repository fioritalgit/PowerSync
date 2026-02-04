FROM journeyapps/powersync-service:latest

# Copy the configuration file
COPY powersync.yaml /app/powersync.yaml

# Expose the port
EXPOSE 8080

# Start PowerSync with the configuration file
CMD ["start", "-r", "unified", "-c", "/app/powersync.yaml"]
