# Grant insert, update privilege to the user. Then perform the operations to verify the privileges.

---

## Step 1: Create a New User

```sql
CREATE USER testuser WITH PASSWORD '1234';
```

## Step 2: Grant Privileges

```sql
GRANT INSERT, UPDATE ON employee TO testuser;
```

## Step 3: Switch to the user

```sql
SET ROLE testuser;
```

## Step 4: Verify INSERT Privilege

```sql
INSERT INTO employee (empid, empname, dob, city, doj, salary, deptid)
VALUES (30, 'TestUser', '2000-01-01', 'Kochi', '2024-01-01', 30000, 101);
```

## Step 5: Verify UPDATE Privilege

```sql
UPDATE employee
SET salary = 35000
WHERE empid = 30;
```

## Step 6: Verify Restriction

```sql
DELETE FROM employee WHERE empid = 30;
```

## Step 7: Reset Role

```sql
RESET ROLE;
```
