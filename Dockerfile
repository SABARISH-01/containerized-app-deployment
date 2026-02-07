# 1. Base Image: Start with a pre-built OS that has Python installed.
# We use 'slim' to keep the image small (Best Practice).
FROM python:3.9-slim

# 2. Work Directory: Create a folder inside the container to hold our app.
# Think of this like 'cd /app' inside the container.
WORKDIR /app

# 3. Copy Dependencies: We copy ONLY the requirements file first.
# Why? Docker caches layers. If requirements don't change, it skips re-installing.
COPY requirements.txt .

# 4. Install Dependencies: Run the command to install libraries inside the container.
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy Code: Now copy the rest of the application code.
COPY . .

# 6. Documentation Port: This tells Docker we intend to use port 5000.
EXPOSE 5000

# 7. Startup Command: This is what runs when the container starts.
CMD ["python", "app.py"]
