FROM python:3.10

WORKDIR /app

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Set environment variables
ENV PROJECT_ID=""
ENV LOCATION=""
ENV DATASTORE_ID=""
ENV AGENT_APPLICATION_ID=""

# Expose the application port
EXPOSE 8000

# Start the application
CMD ["fastapi","run"]
