# Database Normalization to 3NF

This document explains how the database design for the ALX Airbnb project adheres to the Third Normal Form (3NF).

---

## Step 1: First Normal Form (1NF)

**Requirement:** Eliminate repeating groups; ensure atomicity.

**Action:**
- All attributes are atomic (no lists or arrays).
- Example: In the `User` table, each email and phone number is stored in separate rows if needed.

---

## Step 2: Second Normal Form (2NF)

**Requirement:** Be in 1NF and eliminate partial dependencies (i.e., no non-prime attribute should depend on part of a composite key).

**Action:**
- Ensured that tables with composite keys (like in a potential `Booking` junction table) do not have attributes dependent on part of the key.
- Example: Moved `property_address` out of `Booking` and into `Property`.

---

## Step 3: Third Normal Form (3NF)

**Requirement:** Be in 2NF and eliminate transitive dependencies (i.e., non-prime attributes should depend only on the key).

**Action:**
- Identified and removed transitive dependencies:
    - Removed `host_name` from `Property` and ensured it's referenced via the `User` table (`host_id`).
    - Ensured `city_name` is not in `Property`; instead used a foreign key to a `City` table.

---

## Final Schema Highlights

- `User(id, name, email, ...)`
- `Property(id, name, location_id, host_id, ...)`
- `Location(id, city, country)`
- `Booking(id, user_id, property_id, start_date, end_date)`

---

## Conclusion

The schema was revised to meet 3NF by ensuring:
- Atomicity (1NF)
- Removal of partial dependencies (2NF)
- Removal of transitive dependencies (3NF)

This reduces redundancy and enhances data integrity.
