from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def hello_coder():
    return {"message": "Hello Coder Fan :), Project with docker is working well now."}
