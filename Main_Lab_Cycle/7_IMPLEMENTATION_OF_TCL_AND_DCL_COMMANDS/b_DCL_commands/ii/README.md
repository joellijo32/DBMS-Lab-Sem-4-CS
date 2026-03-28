# Revoke update privilege from the user. Verify the same.

---

## Step 1: Revoke UPDATE Privilege

```sql
REVOKE UPDATE ON employee FROM testuser;
```

## Step 2: Switch to the User

```sql
SET ROLE testuser;
```

## Step 3: Verify UPDATE Restriction

```sql
UPDATE employee
SET salary = 99999
WHERE empid = 1;
```

## Step 4: Verify INSERT Working

```sql
INSERT INTO employee (empid, empname, dob, city, doj, salary, deptid)
VALUES (31, 'CheckUser', '2000-01-01', 'Kochi', '2024-01-01', 30000, 101);
```

## Step 5: Reset Role

```sql
RESET ROLE;
```
