# Database Normalization Notes
- Normalization is the process of organizing data to reduce redundancy and improve data integrity.

# 1NF – First Normal Form
- Eliminate repeating groups
- Ensure atomic (indivisible) values
- Each row must be unique

- Example:
| ID | Name     | Courses       ❌ |
|----|----------|-----------------|
| 1  | Karishma | C, C++, Python  |

✅ Should be:
| ID | Name     | Course    |
|----|----------|-----------|
| 1  | Karishma | C         |
| 1  | Karishma | C++       |
| 1  | Karishma | Python    |

# 2NF – Second Normal Form
- Must be in 1NF
- Remove partial dependencies (non-key attributes depend on full primary key)

- Example:
In a table with a composite key, ensure non-key columns depend on the whole key.

# 3NF – Third Normal Form
- Must be in 2NF
- Remove transitive dependencies (non-key columns depend only on the key)

- Example:
Don't store department_name in `employees` table if department_id is already there. Use a separate `departments` table.

# Benefits of Normalization
- Reduces data duplication
- Ensures consistency
- Makes maintenance easier
