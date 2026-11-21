---
weight: 15
title: "Daily Verse API"
date: 2025-11-17T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "REST API that serves Bible verses: verse of the day, random verse, lookup by reference, and keyword search."
images: []
resources: []

tags: ["fastapi", "go", "rest-api", "mysql"]
categories: ["projects"]

lightgallery: true

toc:
  auto: false
---

- **Type:** Personal project
- **Period:** August – November 2025
- **Status:** Completed

## Overview

A small API for apps that want to show a Bible verse, backed by a MySQL database of Bible translations. The current version is built with FastAPI; an earlier version was written in Go.

## Endpoints

- **Random verse:** a different verse on every request.
- **Daily verse:** the same verse for the whole day.
- **Specific verse:** look up a verse by book, chapter, and verse number.
- **Search:** find verses that contain a keyword.

## Tech Stack

- **Current version:** Python, FastAPI, Uvicorn, Pydantic, MySQL (mysql-connector-python)
- **Earlier version:** Go
- **Data:** Bible translations, including KJV
