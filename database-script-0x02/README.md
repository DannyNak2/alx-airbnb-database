# Airbnb Database: Sample Seed Data

## 📌 Overview

This script inserts sample records into all main tables of the Airbnb database to simulate realistic usage.

## 📂 Contents

- `User`: 4 users (2 guests, 2 hosts)
- `Property`: 2 properties hosted by different users
- `Booking`: 2 bookings linked to guests and properties
- `Payment`: 1 confirmed payment
- `Review`: 2 user reviews with ratings
- `Message`: 2 user messages simulating chat between guest and host

## ✅ Usage

To run the seed script:

```bash
psql -U your_username -d your_database -f seed.sql
