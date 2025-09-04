FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY .. capstone_projects
COPY .. utils

CMD ["python", "capstone_projects/langchain/main.py"]
