# Graph Theory

## A Graph What?

### 300(ish) years of "graphing"

The paper written by Leonhard Euler on the Seven Bridges of Königsberg and
published in 1736 is regarded as the first paper in the history of graph theory.

Graph databases address one of the great macroscopic business trends of today:
lever‐ aging complex and dynamic relationships in highly connected data to generate insight and competitive
advantage.

Today, general-purpose graph databases are a reality, enabling mainstream users
to experience the benefits of connected data without having to invest in building
their own graph infrastructure

Graph theory was pioneered by Euler in the 18th century, and has been actively
researched and improved by mathematicians, sociologists, anthro‐ pologists, and others ever since.

### Nodes, Edges, & Properties

Formally, a graph is just a collection of vertices and edges or, in less intimidating
language, a set of nodes and the relationships that connect them.

**Nodes** represent entities such as people, businesses, accounts, or any other
item you might want to keep track of.

### storage with index-free adjacency

By definition, a graph database is any storage system that provides index-free
adjacency.

Every element contains a direct pointer to its adjacent element and no index
lookups are necessary.

## What's it Worth?

Relational databases were initially designed to codify paper forms and tabular
structures—something they do exceedingly well—they struggle when attempting
to model the ad hoc, exceptional relationships that crop up in the real world.

Semantic relationships are hidden in a relational database

Join tables add accidental complexity; they mix business data with foreign key
metadata

>EASY: Which place did a user visit?

>HARD: Which users visited the Grand Canyon.

Several expensive joins are needed just to discover which places a user visited.

Relational databases struggle with this regard to this highly connected domains.

Another expensive example: "Who are Bob's friends?"

An even more expensive example: "Who are Bob's friend's friends?"

## Depth Comparison

>For a social network containing 1,000,000 people, each with approximately 50
friends...finding extended friends

>Queries that extend to four, five, or six degrees of friendship deteriorate
significantly due to the computational and space complexity of recursively joining tables.

The flexibility of the graph model has allowed us to add new nodes and new
relationships without compromising the existing network or migrating data the
original data and its intent remain intact

## Last Slide

### Other Shit I Should Have Had

- <http://docs.neo4j.org/chunked/stable/rest-api-graph-algos.html>

---

## Hack Notez

*Other* concepts connected to the *idea* of **sushi**.

```
START sushi=node:Concepts(id="/c/en/sushi")
MATCH sushi-[r]-other_concepts
RETURN sushi.id, TYPE(r), other_concepts.id;
```



```
START delicious=node:Concepts(id="/c/en/delicious")
MATCH delicious-[r]-other_concepts
RETURN TYPE(r), other_concepts.id
```


```
START sushi=node:Concepts(id="/c/en/sushi"), beer=node:Concepts(id="/c/en/beer")
MATCH p = AllShortestPaths(sushi-[*..10]-beer)
RETURN p.weight;
```

...returns...

```
[Node[29]{id:"/c/en/sushi"},
  :IsA[54288]
     {weight:"1L",
     reason:""fish" is a type of "sushi"",
     context:"all"},
     Node[497]{id:"/c/en/fish"},
       :AtLocation[6842560]
         {weight:"1L",
         reason:"Something you find "in a restaurant" is "fish".",
         context:"all"},
         Node[5516]{id:"/c/en/in_restaurant"},
           :AtLocation[6851390]
             {weight:"1L",
             reason:"Something you find "in a restaurant" is "beer".",
             context:"all"},
             Node[422]  {id:"/c/en/beer"}]
```