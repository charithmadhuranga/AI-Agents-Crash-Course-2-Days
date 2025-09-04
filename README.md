# 🚀 AI Agents Crash Course (2 Days)

This repository is a **2-day intensive study plan** to learn and build **complex AI agents** using:

- [LangChain](https://www.langchain.com/) – chains, tools, memory, agents  
- [LangGraph](https://www.langchain.com/langgraph) – graph-based workflows  
- [CrewAI](https://www.crewai.com/) – multi-agent collaboration  
- [n8n](https://n8n.io/) – workflow automation & orchestration  

The goal: by the end of Day 2, you’ll have built **production-ready AI agent systems** and a **capstone project** combining all four tools.

---

## 📅 Study Plan

### **Day 1 – Foundations & Core Agent Building**

**Goal**: Get comfortable with LangChain + LangGraph.

#### Morning (3–4 hrs) – LangChain Core
- Learn: chains, tools, memory, agents.  
- Practice:
  - Q&A chain
  - Add tools (calculator, API calls)
  - Add memory  

👉 Mini-project: Agent that answers questions + does math + fetches API data.

#### Afternoon (3–4 hrs) – LangGraph
- Learn: nodes, edges, state, conditional branching.  
- Practice:
  - Build a graph workflow (classification → API → summarization).  

👉 Mini-project: “Support Agent” that classifies requests and routes them.

#### Evening (2 hrs) – Reflection
- Review learnings
- Skim docs
- Brainstorm 2–3 capstone ideas

---

### **Day 2 – Advanced Orchestration & Automation**

**Goal**: Build multi-agent collaboration (CrewAI) + workflow automation (n8n).

#### Morning (3–4 hrs) – CrewAI
- Learn: agent roles, goals, collaboration.  
- Practice:
  - Research Agent (gathers info)  
  - Writer Agent (summarizes)  
  - Critic Agent (reviews)  

👉 Mini-project: “Research + Report” crew (researched, written, reviewed).

#### Afternoon (3–4 hrs) – n8n
- Learn: triggers, nodes, external services.  
- Practice:
  - Email → AI summary → Notion
  - Slack bot → LangGraph workflow  

👉 Mini-project: Automated workflow using CrewAI + LangGraph inside n8n.

#### Evening (2–3 hrs) – Capstone Project
- Combine all tools into one project:
  - **AI Research Assistant**
  - **E-commerce Support Bot**

# ⚡ Makefile Usage Guide

This project includes a `Makefile` to simplify working with Docker containers for **n8n** and **AI agents**. Instead of remembering long `docker-compose` commands, you can run simple `make` commands.

---

## 📋 Available Commands

| Command         | Description |
|-----------------|-------------|
| `make help`     | Show all available commands |
| `make build`    | Build Docker images for agents and n8n |
| `make up`       | Start containers in the background |
| `make logs`     | View logs from running containers |
| `make stop`     | Stop running containers without removing them |
| `make down`     | Stop and remove containers, but keep volumes/images |
| `make restart`  | Restart containers (equivalent to down + up) |
| `make clean`    | Remove containers, volumes, and images (⚠️ full reset) |

---