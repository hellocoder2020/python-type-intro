FROM python:3.8-alpine

WORKDIR /usr/src/app
ADD /usr/src/app/requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt 

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]
