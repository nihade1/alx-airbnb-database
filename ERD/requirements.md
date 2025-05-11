# Entity-Relationship Diagram (ERD) Requirements

## Objective
Create an Entity-Relationship (ER) diagram based on the database specification.

## Instructions
1. **Identify Entities and Attributes**:
    - **User**:
      - `id` (Primary Key)
      - `name`
      - `email`
      - `password`
      - `created_at`
      - `updated_at`
    - **Property**:
      - `id` (Primary Key)
      - `name`
      - `description`
      - `location`
      - `price`
      - `owner_id` (Foreign Key referencing `User.id`)
      - `created_at`
      - `updated_at`
    - **Booking**:
      - `id` (Primary Key)
      - `user_id` (Foreign Key referencing `User.id`)
      - `property_id` (Foreign Key referencing `Property.id`)
      - `start_date`
      - `end_date`
      - `status`
      - `created_at`
      - `updated_at`

2. **Define Relationships**:
    - A **User** can own multiple **Properties** (1-to-Many).
    - A **User** can make multiple **Bookings** (1-to-Many).
    - A **Property** can have multiple **Bookings** (1-to-Many).

3. **Create Visual Representation**:
    - Use a tool like Draw.io, Lucidchart, or any ERD software.
    - Represent entities as rectangles with attributes listed inside.
    - Use lines to connect entities, indicating relationships with cardinality (e.g., 1-to-Many).

4. **Export and Save**:
    - Save the diagram as `ERD.png` or `ERD.pdf` in the `/ERD/` directory.

## Notes
- Ensure all attributes are properly labeled.
- Use consistent naming conventions for clarity.
- Validate relationships and cardinality for accuracy.
- Include timestamps (`created_at`, `updated_at`) for tracking changes.
