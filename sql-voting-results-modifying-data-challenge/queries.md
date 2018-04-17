# Queries

## Release 0
1.
INSERT INTO congress_members
(name, party, location, grade_1996, grade_current, years_in_congress, dw1_score, created_at, updated_at)
VALUES
('Sen. Ada Lovelace', 'Democrat', 'NJ', 8.0, 8.56, 86, -0.99, DATETIME('now'), DATETIME('now'));

2.
INSERT INTO voters
(first_name, last_name, gender, party, party_duration, age, married, children_count, homeowner, employed, created_at, updated_at)
VALUES
('Pokemon Master', 'ASH', 'IDK', 'Pokemon', 6, 16, 0, 22, 1, 2, DATETIME('now'), DATETIME('now')),
('jack', 'John', 'alien', 'alien party', 4, 19, 1, 2, 1, 4, DATETIME('now'), DATETIME('now'));

INSERT INTO votes
(voter_id, politician_id, created_at, updated_at)
VALUES
(5001, 145, DATETIME('now'), DATETIME('now')),
(5001, 499, DATETIME('now'), DATETIME('now')),
(5002, 145, DATETIME('now'), DATETIME('now')),
(5002, 499, DATETIME('now'), DATETIME('now'));


## Release 1
1.
 SELECT id, name, location FROM congress_members WHERE location='NJ' AND name like 'Sen%';

UPDATE votes
SET politician_id=531
WHERE politician_id=102;

2.
  ```sql
Paste SQL query here.
```

3.
  ```sql
Paste SQL query here.
```


## Release 2
1.
  ```sql
Paste SQL query here.
```

2.
  ```sql
Paste SQL query here.
```

3.
  ```sql
Paste SQL query here.
```