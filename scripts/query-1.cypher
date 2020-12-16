//This query will give user a idea how database is structructred and and how the 
//relationships are  made in database .

Match (n) 
Return n


//This query will shows a user that how many nodes are in the databse 
//It will count a total number of nodes .

start n=node(*)
match (n)
return count(n)