---
weight: 4
title: "Trip Planner AI"
date: 2026-03-06T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "Agentic AI workflow that turns a destination, budget, duration, and interests into a day-by-day itinerary delivered as a PDF."
images: []
resources: []

tags: ["ai", "agentic-workflow", "fastapi", "celery"]
categories: ["projects"]

lightgallery: true
featuredImage: "/images/projects/trip-planner.png"
featuredImagePreview: "/images/projects/trip-planner.png"
cover:
  image: "/images/projects/trip-planner.png"

toc:
  auto: false
---

- **Type:** Personal project
- **Period:** March 2026
- **Status:** Completed · [Source on GitHub](https://github.com/davadinata/trip-planner)

## Overview

Trip Planner AI builds a complete trip plan from four inputs: destination, budget, trip length, and interests. The planning runs as a background task on Celery, so the long chain of search and LLM calls doesn't block the API.

## Workflow

1. **Input:** the user sends destination, budget, duration, and interests.
2. **Search attractions:** Tavily searches attractions by category.
3. **Rank attractions:** an LLM ranks the results by the user's interests and ratings.
4. **Select attractions:** an LLM keeps the top picks that fit the budget and time.
5. **Generate itinerary:** an LLM groups the attractions into a day-by-day plan.
6. **Estimate budget:** an LLM breaks the costs down per category.
7. **Generate report:** everything is compiled into a PDF.

## Sample Output

A 7-day Yogyakarta plan for two travelers with a 10,000,000 IDR budget. It covers a destination overview, weather and visa notes, a daily itinerary (Borobudur sunrise, a Mount Merapi jeep tour, Jomblang Cave, Timang Beach), and a cost breakdown that stays within the budget.

## Tech Stack

- **API:** FastAPI with Scalar API docs
- **Background jobs:** Celery with Redis as the message broker
- **AI and search:** OpenRouter (Gemini Flash and GPT models), Tavily
- **Reporting:** WeasyPrint (HTML to PDF)
- **Tooling:** uv
