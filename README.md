# Neo4j-Project


##  Professor - Dr IAN McLOUGHLIN

#### The project is made for as a part of college work , Module GRAPH THEORY .

#### Neo4j 
![](https://github.com/sarabDevOps/RacketProject/blob/main/rpn.JPG)
Neo4j is the world's leading open source Graph Database which is developed using Java technology. It is highly scalable and schema free (NoSQL).

A graph is a pictorial representation of a set of objects where some pairs of objects are connected by links. It is composed of two elements - nodes (vertices) and relationships (edges).

Graph database is a database used to model the data in the form of graph. In here, the nodes of a graph depict the entities while the relationships depict the association of these nodes.

### Database

To create this Database all the information is retrieved from the Wikipedia , The nature of datbase is each and every node is created sepretly and each and every single node represents either a county or a members , so there is 40 consituencies is in Ireland so there is all together 40 nodes in the database which represents all the consituencies of ireland.

### Querie Shows how to create the node in database which represents a consituency Carlow–Kilkenny.


```
     CREATE ( CarlowKilkenny : constituencies {Name : "Carlow–Kilkenny" })
```

### Querie Shows how to create the node in database which represents a each member of Carlow–Kilkenny.


```
    CREATE 	(CarlowKillkenny1 : candidate_CK { Name : "John McGuiness", Gender : "Male" , Age : 40 , 

    PartyName : "FiannaFail",	TotalVotes : 11903	,County : "Carlow–Kilkenny"	,Win : "Yes"	})

    
```

### Querie Shows how to create a relationship between the given candidate with the given county .

```
    MATCH (u:constituencies {Name:"Carlow–Kilkenny"}), (r:candidate_CK) 

    CREATE (u)-[:Ran_IN_Election]->(r)

```

Above query shows how to create a relationship between constituency name Carlow–Kilkenny with the all the candidate of that constituency, 
firstly we have to match the nodes together in datbase , For eg in the constituencies match a node name called Carlow–Kilkenny and match a another node in that candidate_CK and make a relationship between them and give a relationship name called a Ran_IN_Election.

### Quickstart

First, you need to have a local Neo4j running. The easiest way is Docker. If you have a docker installed locally, than please run .

```
     docker run --publish=7474:7474 --publish=7687:7687 -e 'NEO4J_AUTH=neo4j/secret' neo4j:4.1
     
```
Another option is to use Neo4j desktop, which can be downloaded from here: http://neo4j.com/download. If you chose that way, install and start as instructed by the desktop application. You need to start a new database inside desktop.

1.  After you have Neo4j up and running, open up a browser and goto http://localhost:7474. Enter the credentials (neo4j:secret if you chose the Docker approach above                         or the credentials you supplied in Neo4j Desktop). 

2. click and run the Cypher statement to insert the dataset .

3. Clone this project from GitHub.

###  Queries Walkthrough

```
     MATCH
	       (n)
     RETURN
	        n;

```

This query Will Shows whats actually exixts in database and how is the structure of database. 
In terms of relationship with all of the members of the given county .


### This query will show a user that how many nodes are in the databse It will count a total number of nodes .

```

     start n=node(*)
	
	match (n)
	
	return count(n)


```

### This query will Get the number of female members were there in county kerry, who run in election With there names and age .


```

     MATCH(a:constituencies{Name : "Kerry"})-[:Ran_IN_Election]-> 
	
	(b:candidateKerry)
	
	WHERE b.Gender = "Female"
	
	RETURN b.Name , b.Age;

```


### This query retreives a oldest man name and age who run in election in county clare.

```
     MATCH(a:constituencies{Name : "Clare"})-[:Ran_IN_Election]-> 
	
	(b:candidate_Clare)
	
	WHERE b.Age >= 70
	
	RETURN b.Name , b.Age;



```

### This query will Find the list of people who won the election for more than 12000 votes , Their Names , Total Number of votes they got And was male or female and count them how many are their were .


```

     MATCH(a:constituencies{Name : "Clare"})-[:Ran_IN_Election]-> 
	
	(b:candidate_Clare)
	
	WHERE b.TotalVotes >=12000
	
	RETURN b.Name , b.TotalVotes, b.Gender ,b.Age, Count(*);




```



## Built With
* [Neo4J](http://neo4j.com/download) - Neo4j 




## Authors

[SarabDevOps](https://github.com/sarabDevOps)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/sarbjeetkumar/Neo4j-Project/blob/master/LICENSE) file for details





## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. http://neo4j.com/developer/cypher/
3. https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland.
4. https://neo4j.com/developer/neo4j-browser/
5.https://neo4j.com/download-center/



























