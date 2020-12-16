//Query that displays all the female members of the county kerry who run 
//in election With there names and age .


MATCH(a:constituencies{Name : "Kerry"})-[:Ran_IN_Election]-> 
(b:candidateKerry)
WHERE b.Gender = "Female"
RETURN b.Name , b.Age;

