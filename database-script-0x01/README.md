# Database Schema for Airbnb Clone

## 📌 Overview

This schema defines the core structure of an Airbnb-style platform. It includes tables for Users, Properties, Bookings, Payments, Reviews, and Messages.

## 🧱 Tables

### 1. `User`
Stores personal and account-related data for hosts, guests, and admins.

### 2. `Property`
Houses information about listed rental properties by hosts.

### 3. `Booking`
Tracks which users booked which properties and when.

### 4. `Payment`
Captures transaction information linked to bookings.

### 5. `Review`
User-generated ratings and comments for properties.

### 6. `Message`
Direct communication between users (guests and hosts).

## 🔐 Constraints and Indexes

- **Primary keys:** Defined for all tables using UUIDs.
- **Foreign keys:** Enforce referential integrity between related entities.
- **Constraints:** Enforce value integrity (e.g., ENUM roles, status, and payment_method).
- **Indexes:** Added on frequently queried columns to optimize performance.

## 🗂️ Directory Structure

