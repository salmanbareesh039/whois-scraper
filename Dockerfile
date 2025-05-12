# Apify recommended base image for Python actors
FROM apify/actor-python:3.11

# Copy all files to the working directory in the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the entrypoint for Apify
CMD ["python", "main.py"] 