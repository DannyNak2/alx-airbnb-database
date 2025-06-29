# Database Normalization: Airbnb Clone Schema

## 📌 Objective
Ensure the database design adheres to the principles of **Third Normal Form (3NF)** to reduce data redundancy and improve integrity.

---

## 🧩 Step 1: First Normal Form (1NF)

**Definition:**  
A relation is in 1NF if:
- All attributes contain only atomic (indivisible) values.
- Each record is unique (i.e., there is a defined primary key).

**Compliance Check:** ✅  
All tables in the schema:
- Use atomic data types (e.g., `VARCHAR`, `INTEGER`, `DECIMAL`, `ENUM`, `UUID`).
- Define a **Primary Key** (`user_id`, `property_id`, etc.).

➡️ **Conclusion:** All tables satisfy **1NF**.

---

## 🧩 Step 2: Second Normal Form (2NF)

**Definition:**  
A relation is in 2NF if:
- It is in 1NF.
- It has no partial dependency (i.e., non-key attributes depend on the whole primary key, not part of it).

**Compliance Check:** ✅  
- All tables use a **single-column primary key** (UUID).
- There are no composite keys.
- Therefore, no partial dependencies exist.

➡️ **Conclusion:** All tables satisfy **2NF**.

---

## 🧩 Step 3: Third Normal Form (3NF)

**Definition:**  
A relation is in 3NF if:
- It is in 2NF.
- There are no **transitive dependencies** (i.e., non-key attributes should not depend on other non-key attributes).

**Compliance Check and Justifications:**

### ✅ `User`
- `email` is unique, but not a determinant of any other attribute.
- No transitive dependencies.
- All attributes depend only on `user_id`.

### ✅ `Property`
- All attributes describe the property directly.
- `host_id` is a foreign key (no transitive dependency).

### ✅ `Booking`
- All fields depend on the full `booking_id`.
- `user_id` and `property_id` are foreign keys, not derived data.

### ✅ `Payment`
- All fields depend on `payment_id`.
- `booking_id` is a direct foreign key.

### ✅ `Review`
- `rating`, `comment`, etc. depend on `review_id` and indirectly on `property_id` and `user_id`, but these are explicitly linked through foreign keys (not derived).

### ✅ `Message`
- `sender_id`, `recipient_id`, and `message_body` all depend solely on `message_id`.

➡️ **Conclusion:** All tables satisfy **3NF**.

---

## ✅ Summary

| Table      | 1NF | 2NF | 3NF | Normalized |
|------------|-----|-----|-----|------------|
| User       | ✅  | ✅  | ✅  | Yes        |
| Property   | ✅  | ✅  | ✅  | Yes        |
| Booking    | ✅  | ✅  | ✅  | Yes        |
| Payment    | ✅  | ✅  | ✅  | Yes        |
| Review     | ✅  | ✅  | ✅  | Yes        |
| Message    | ✅  | ✅  | ✅  | Yes        |

---

## 🧾 Final Notes

- No changes were required to bring the schema into 3NF.
- All entities are well-structured with clear foreign key relationships and no redundancy.
- Indexes and constraints further support data integrity.

