# Apify recommended base image for Python actors
FROM apify/actor-python:3.11

# Set environment variables for UTF-8 output
ENV PYTHONIOENCODING=UTF-8 \
    LANG=C.UTF-8

# Set the working directory
WORKDIR /usr/src/app

# Install system dependencies (if needed, e.g., for python-whois)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy only requirements first for better caching
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Set the entrypoint for Apify
CMD ["python", "main.py"] 
