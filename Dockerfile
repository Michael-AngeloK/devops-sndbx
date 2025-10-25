FROM python:3.11-slim
WORKDIR /app
COPY add.py .
CMD ["python","app.py"]