FROM python:3.9-slim

WORKDIR /projectdir

RUN apt update && \
    apt install -y libpq-dev gcc && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY test.py .

CMD [ "python3", "test.py" ]