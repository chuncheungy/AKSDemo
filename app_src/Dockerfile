# Builder stage
FROM python:3.12-alpine AS builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

# Final image
FROM python:3.12-alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

COPY --from=builder /root/.local /home/appuser/.local
ENV PATH=/home/appuser/.local/bin:$PATH
COPY . .

RUN chown -R appuser:appgroup /app
USER appuser

ENV FLASK_APP=main.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]