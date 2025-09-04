from fastapi import FastAPI
from capstone_projects.langchain.main import run_research
from capstone_projects.langchain.main import run_chain

app = FastAPI()

@app.get("/ping")
def ping():
    return {"status": "ok"}

@app.get("/chain")
def chain_query(q: str):
    return {"response": run_chain(q)}

@app.post("/research")
def research(query: str):
    return {"report": run_research(query)}