# AI Research Agent

A lightweight AI research agent built with Python, LangChain, and OpenRouter.

The project demonstrates the basic concepts behind AI agents: an LLM can decide when to use external tools, receive the results from those tools, and then produce a structured response.

## Features

- 🤖 Uses an LLM through OpenRouter
- 🆓 Uses OpenRouter's free model router
- 🌐 Searches the web using DuckDuckGo
- 📚 Searches Wikipedia
- 💾 Saves research results to a text file
- 📋 Produces structured research responses using Pydantic
- 🧰 Demonstrates LangChain tool calling
- 🔄 Demonstrates an agent/tool/reasoning loop

## How It Works

The basic workflow is:

```text
User
  │
  ▼
LangChain Agent
  │
  ▼
OpenRouter LLM
  │
  ├──► Wikipedia
  │
  ├──► DuckDuckGo Search
  │
  └──► Save Research
  │
  ▼
Structured ResearchResponse
  │
  ▼
Terminal
```

## Getting an OpenRouter API Key

This project uses OpenRouter to access the LLM, so you will need an OpenRouter API key to run it.

### 1. Create an OpenRouter account

Go to [OpenRouter](https://openrouter.ai/) and create an account or sign in.

### 2. Create an API key

Open the **API Keys** section of your OpenRouter account and create a new API key.

Copy the generated key. It should look similar to:

```text
sk-or-v1-xxxxxxxxxxxxxxxxxxxxxxxx
