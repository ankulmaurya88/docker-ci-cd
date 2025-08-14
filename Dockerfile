# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ ./app
COPY tests/ ./tests

ENV PYTHONPATH=/app
# Run pytest as default command (CI check)
CMD ["pytest", "--maxfail=1", "--disable-warnings", "-q"]
