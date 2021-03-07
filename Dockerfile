FROM python:3.8-alpine

WORKDIR /usr/src/app
ADD requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["uvicorn", "main:app", "--reload", "--host", "165.232.162.119", "--port", "8000"]