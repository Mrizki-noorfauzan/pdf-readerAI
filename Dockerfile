FROM python:3.10
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8090

COPY . /app

CMD streamlit run --server.port 8090  --server.enableCORS false app.py

