
# 1. Use Python 3.12 slim as the base image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements.txt into the container
COPY requirements.txt .

# 4. Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the application source code
COPY app/ ./app/

# 6. Document that the application uses port 8000
EXPOSE 8000

# 7. Start the FastAPI application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

# TODO 1: Copy requirements.txt into the image.
# TODO 2: Install Python dependencies with pip.
# TODO 3: Copy the app/ folder into /app/app/.
# TODO 4: Document the port the API listens on.
# TODO 5: Start uvicorn app.main:app on host 0.0.0.0 port 8000.
