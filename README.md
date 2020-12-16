# Neo4j-Project


##  Professor - Dr IAN McLOUGHLIN

#### The project is made for as a part of college work , Module GRAPH THEORY .

#### Neo4j 
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














