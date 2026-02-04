FROM journeyapps/powersync-service:latest

# Copy the configuration file
COPY powersync.yaml /app/powersync.yaml

# Expose the port
EXPOSE 8080

# Set environment variable for config path
ENV POWERSYNC_CONFIG_PATH=/app/powersync.yaml

# Start PowerSync
ENTRYPOINT ["start"]
CMD ["-r", "unified"]
