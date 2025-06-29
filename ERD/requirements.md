# Entity-Relationship Diagram (ERD) - ALX Airbnb Database

## Objective

This document provides the database design specification for the ALX Airbnb project. The ERD (Entity-Relationship Diagram) visually represents the key entities, their attributes, and the relationships between them, based on the system's requirements.

## ER Diagram

![ER Diagram](./ERD.png)

> The diagram illustrates how Users, Properties, Bookings, Reviews, and other core components interact within the system.

## Identified Entities and Attributes

### 1. **User**
- id (PK)
- name
- email
- password
- created_at

### 2. **Property**
- id (PK)
- name
- description
- location
- price_per_night
- owner_id (FK → User.id)
- created_at

### 3. **Booking**
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- check_in_date
- check_out_date
- total_price
- created_at

### 4. **Review**
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- rating
- comment
- created_at

### 5. **Amenity**
- id (PK)
- name

### 6. **PropertyAmenity** (junction table for many-to-many)
- property_id (FK → Property.id)
- amenity_id (FK → Amenity.id)

---

## Relationships

- A **User** can have multiple **Bookings**.
- A **User** can post multiple **Reviews**.
- A **User** can own multiple **Properties**.
- A **Property** can have many **Bookings** and **Reviews**.
- A **Property** can have many **Amenities**, and an **Amenity** can be linked to many **Properties** (many-to-many).

---

## Notes

- All timestamps follow UTC format.
- Foreign keys ensure data integrity between related tables.
- Normalization is applied to reduce redundancy.

---

## File Info

- `ERD.png`: The visual representation of the database structure.
- `requirements.md`: The written specification and explanation of the ER diagram.


