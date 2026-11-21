---
weight: 16
title: "Kalkulator BMI"
date: 2025-10-01T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "BMI calculator backed by a Go serverless function that returns the BMI value and category, deployed on Vercel."
images: []
resources: []

tags: ["go", "serverless", "vercel"]
categories: ["projects"]

lightgallery: true

toc:
  auto: false
---

- **Type:** Personal project
- **Period:** September – October 2025
- **Status:** Completed · [Source on GitHub](https://github.com/davadinata/kalkulatorBMI)

## Overview

A simple Body Mass Index calculator. The page sends weight and height to a Go serverless function on Vercel, which validates the input, calculates the BMI, and returns the category.

## Key Features

- **Input validation** with clear error responses.
- **BMI categories:** underweight, normal, overweight, and obese.
- **Serverless:** the Go handler runs as a Vercel function at `/api/bmi`.

## Tech Stack

Go (net/http), HTML, JavaScript (Fetch API), Vercel
