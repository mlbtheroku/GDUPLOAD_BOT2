FROM python:3.10.6

WORKDIR /root/bot

COPY . .

RUN pip3 install --upgrade pip setuptools

RUN pip install -U -r requirements.txt
EXPOSE 5000
# Starting Worker
CMD ["python3","-m","bot"]
