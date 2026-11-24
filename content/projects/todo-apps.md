---
weight: 14
title: "Todo Apps"
date: 2026-02-27T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "Full-stack todo app: a versioned FastAPI REST API with migrations and pagination, plus a React 19 Kanban board."
images: []
resources: []

tags: ["fastapi", "react", "full-stack"]
categories: ["projects"]

lightgallery: true
featuredImage: "/images/projects/todo-apps.png"
featuredImagePreview: "/images/projects/todo-apps.png"
cover:
  image: "/images/projects/todo-apps.png"
  alt: "Todo Apps Kanban board with Pending, Ongoing, and Done columns"

toc:
  auto: false
---

- **Type:** Learning project
- **Period:** February 2026
- **Status:** Completed

## Overview

A full-stack task manager. The backend is a versioned REST API with database migrations, and the frontend shows tasks on a Kanban board grouped by status.

## Key Features

- **REST API (`/api/v1`):** create, read, update (including partial updates), and delete todos.
- **Data model:** UUID primary keys and an enum status (`pending`, `ongoing`, `done`).
- **Validation and pagination** with Pydantic schemas and query parameters.
- **Migrations** with Alembic.
- **API docs:** Swagger UI and Scalar.
- **Kanban board:** one column per status, with todo cards (title, description, deadline) loaded from the API.

## Tech Stack

- **Backend:** FastAPI, SQLModel, SQLite, Alembic, Pydantic, Uvicorn
- **Frontend:** React 19, TypeScript, Vite, Tailwind CSS v4, shadcn/ui
