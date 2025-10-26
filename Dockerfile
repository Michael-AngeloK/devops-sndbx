# Build stage
FROM python:3.11-slim as builder
WORKDIR /build
COPY app.py .
RUN pip install --no-cache-dir --user pytest

# Runtime stage
FROM python:3.11-alpine
WORKDIR /build
COPY --from=builder /build/app.py .
CMD ["python", "app.py"]