---
weight: 1
title: "UNissi - Church Management SaaS"
date: 2026-07-27T00:00:00+07:00
draft: false
author: "Theodoxa"
description: "Multi-tenant SaaS that helps churches manage members, small groups, attendance, offerings, and events in one platform."
images: []
resources: []

tags: ["saas", "fastapi", "react", "postgresql", "multi-tenant"]
categories: ["projects"]

lightgallery: true
featuredImage: "/images/projects/unissi.png"
featuredImagePreview: "/images/projects/unissi.png"
cover:
  image: "/images/projects/unissi.png"

toc:
  auto: false
---

- **Type:** SaaS product, built solo
- **Period:** 2025 – 2026
- **Status:** Live at [unissi.id](https://unissi.id)

## Overview

Many churches still run on spreadsheets, paper attendance sheets, and scattered chat groups. UNissi brings member data, small groups, attendance, offerings, and events into one platform that any church can sign up for.

The product is made of three applications that share one PostgreSQL database:

- **Landing page** ([unissi.id](https://unissi.id)) for marketing, pricing, and sign-up.
- **Church app** ([app.unissi.id](https://app.unissi.id)) used by church admins and small-group leaders.
- **Super-admin console** for managing tenants, licenses, and admin accounts.

## Key Features

- **Church operations:** members, small groups (komsel), attendance, offerings, events, and a community feed.
- **Multi-tenancy:** every church gets its own PostgreSQL schema, and a middleware resolves the tenant on each request.
- **Role-based access:** church admins have full access, while leaders only see data within their own small group.
- **Tiered licensing:** a free tier plus paid plans, with per-tenant feature flags and payments through Midtrans Snap (webhook-driven).
- **Super-admin console:** tenant management, license management, admin accounts, and an activity log, protected by TOTP two-factor authentication.
- **Security:** JWT in httpOnly cookies (Bearer tokens for mobile clients), bcrypt password hashing, and rate limiting.
- **Multi-language UI** on the church app and landing page.

## Tech Stack

- **Backend:** Python, FastAPI, SQLAlchemy, Alembic, PostgreSQL 15, Redis (license cache), Cloudflare R2 (file storage), Midtrans
- **Frontend:** React 19, TypeScript, Vite, Tailwind CSS v4, shadcn/ui (Radix UI), React Hook Form + Zod
- **Infrastructure:** Docker Compose, Caddy, GitHub Actions, Firebase Hosting (landing page)
- **Mobile:** Expo / React Native app in progress

## My Role

I designed and built UNissi end to end: product scope, multi-tenant architecture, both FastAPI backends, the React frontends, the landing page, and the production deployment.
