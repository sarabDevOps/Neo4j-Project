//Find a oldest man name and age who run in election in county clare 

MATCH(a:constituencies{Name : "Clare"})-[:Ran_IN_Election]-> 
(b:candidate_Clare)
WHERE b.Age >= 70
RETURN b.Name , b.Age;



// This query willFind the list of people who won the election 
//for more than 12000 votes , Their Names , Total Number of votes they get 
//And Was male or female and count Them how many are they.

MATCH(a:constituencies{Name : "Clare"})-[:Ran_IN_Election]-> 
(b:candidate_Clare)
WHERE b.TotalVotes >=12000
RETURN b.Name , b.TotalVotes, b.Gender ,b.Age, Count(*);