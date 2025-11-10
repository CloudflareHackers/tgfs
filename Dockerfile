FROM python:3.9-alpine
WORKDIR /app
COPY . .

# Install git (required for cloning repository)
RUN apk add --no-cache git

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make start.sh executable
RUN chmod +x start.sh

CMD ["sh", "start.sh"]
