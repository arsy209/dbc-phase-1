# Queries

## Release 1

1.
 SELECT politician_id, COUNT(*) from congress_members JOIN votes .politician_id = congress_members.id WHERE politician_id = 524;

2.
SELECT congress_members.name, COUNT(*) FROM congress_members JOIN votes ON votes.politician_id = congress_members.id WHERE congress_members.name='Rep. Erik Paulsen';

3.
SELECT congress_members.name, COUNT(*) AS vote_count FROM congress_members JOIN votes ON votes.politician_id = congress_members.id GROUP BY congress_members.name ORDER BY vote_count DESC LIMIT 8;


4.
 SELECT congress_members.name, COUNT(*) AS vote_count FROM congress_members JOIN votes ON votes.politician_id=congress_members.id GROUP BY congress_members.id HAVING vote_count < 10 ORDER BY vote_count;

5.
SELECT voters.first_name, voters.last_name FROM voters
JOIN votes ON votes.voter_id=voters.id
JOIN congress_members ON votes.politician_id=congress_members.id
WHERE congress_members.name='Rep. Marcia Fudge' AND voters.gender='female';


6.
SELECT congress_members.id, congress_members.name FROM congress_members
JOIN votes ON votes.politician_id=congress_members.id
JOIN voters ON votes.voter_id=voters.id
WHERE voters.first_name='Lizzie' AND voters.last_name='Rath';

7.

SELECT congress_members.grade_current, congress_members.name, congress_members.location, COUNT(*) AS vote_count FROM congress_members
JOIN votes ON votes.politician_id=congress_members.id
WHERE congress_members.grade_current < 9
GROUP BY congress_members.name
ORDER BY congress_members.grade_current DESC;


8.
SELECT congress_members.location, COUNT(DISTINCT voters.id) as voter_turnout FROM congress_members
JOIN votes ON congress_members.id=votes.politician_id
JOIN voters ON voters.id=votes.voter_id
GROUP BY congress_members.location
ORDER BY voter_turnout DESC
LIMIT 1;


9.
SELECT COUNT(*) as votes_cast, voters.first_name, voters.last_name FROM voters
JOIN votes ON voters.id=votes.voter_id
GROUP BY voters.id
HAVING votes_cast > 5
ORDER BY votes_cast DESC, voters.first_name;

10.
SELECT COUNT(votes.id) as votes_count, congress_members.name, voters.first_name, voters.last_name FROM congress_members
JOIN votes ON congress_members.id=votes.politician_id
JOIN voters ON voters.id=votes.voter_id
GROUP BY congress_members.name, voters.first_name, voters.last_name
HAVING votes_count >= 2
ORDER BY votes_count DESC, voters.first_name;

