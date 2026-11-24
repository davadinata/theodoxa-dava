---
weight: 3
title: "FinTrack AI Receipt Scanner"
date: 2026-03-07T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "AI service that turns a photo of a receipt into a ready-to-save FinTrack transaction, built as my contribution to a team project."
images: []
resources: []

tags: ["ai", "llm", "fastapi", "team-project"]
categories: ["projects"]

lightgallery: true
featuredImage: "/images/projects/fintrack-ai.png"
featuredImagePreview: "/images/projects/fintrack-ai.png"
cover:
  image: "/images/projects/fintrack-ai.png"
  alt: "A shopping receipt converted into a JSON transaction"

toc:
  auto: false
---

- **Type:** Team project (2 developers)
- **Period:** March 2026
- **Status:** Completed

## Overview

FinTrack is a self-hosted personal finance platform built with a teammate. It runs as Docker microservices with a React + TypeScript frontend, a Hono API, and MongoDB.

My part was AI receipt scanning: a user uploads a photo of a shopping receipt and gets a transaction that is already filled in and ready to save.

## What I Built

- **Receipt extractor service:** a FastAPI service with a `POST /struk/extract` endpoint that sends the receipt image to a vision LLM through OpenRouter and returns structured JSON.
- **Prompts and schemas:** prompts and Pydantic schemas that map a receipt to FinTrack's transaction format (amount, type, description, date, category, notes, currency, status), summarizing the purchased items into the notes.
- **App integration:** connected the scanner to the transaction form in the React frontend.
- **Deployment:** containerized the service, added it to the development and production Docker Compose stacks, and fixed the CI/CD deployment workflow.

## Example Response

```json
{
  "amount": -11000,
  "type": "expense",
  "description": "Alfamart",
  "date": "2026-03-06T00:00:00.000Z",
  "category": "Groceries",
  "notes": "Indomie Goreng x2=7000, Aqua 600ml x1=4000",
  "currency": "IDR",
  "status": "cleared",
  "isRecurring": false
}
```

## Tech Stack

- **AI service:** Python 3.13, FastAPI, Pydantic, uv, OpenRouter (vision LLM)
- **Platform:** React, TypeScript, Hono, MongoDB, Docker Compose, GitHub Actions
