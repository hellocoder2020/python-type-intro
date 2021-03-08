from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def hello_coder():
    return {"message": "Hello Coder Fan :). CICD is ready to use..."}
