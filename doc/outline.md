# Graph Databases

[Prezi: GraphDatabases](http://prezi.com/jgx8vrvcntdk/?utm_campaign=share&utm_medium=copy)

Overview:

- give a quick background about graph theory
- look at the abstract implementation of a graph database
- why would we want to use a graph database?
- what options are out there, and why pick Neo4j?
- code samples & some "live code"
- wrap up and some reflections on GDB

## A Graph What?

### 300(ish) years of "graphing"

The paper written by **Leonhard Euler** on the **Seven Bridges of Königsberg** and **published in 1736** is regarded as the **first paper in the history of graph theory**.

Graph databases address one of the great macroscopic business trends of today: **leveraging complex and dynamic relationships in highly connected data to generate insight and competitive advantage.**

Optimally performant when used in memory... 

Although Neo4j does indeed handle ultra-mega-large DB's gracefully.

It's not a cached either, it's a fully persistent transactional store.

Today, general purpose graph databases are a reality, enabling mainstream users to experience the benefits of connected data without having to invest in building their own graph infrastructure

Graph theory was pioneered by Euler in the 18th century, and has been actively researched and improved by mathematicians, sociologists, anthropologists, and others ever since.

### Nodes, Edges, & Properties

Formally, a graph is just a collection of vertices and edges or, in less intimidating language, a set of nodes and the relationships that connect them.

**Nodes** represent entities such as people, businesses, accounts, or any other item you might want to keep track of.

### storage with index-free adjacency

By definition, a graph database is any storage system that provides index-free adjacency.

Every element contains a direct pointer to its adjacent element and no index lookups are necessary.

## What's it Worth?

Relational databases were initially designed to codify paper forms and tabular structures—something they do exceedingly well—they struggle when attempting to model the ad hoc, exceptional relationships that crop up in the real world.

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

>For a social network containing 1,000,000 people, each with approximately 50 friends...finding extended friends

>Queries that extend to four, five, or six degrees of friendship deteriorate significantly due to the computational and space complexity of recursively joining tables.

The flexibility of the graph model has allowed us to add new nodes and new relationships without compromising the existing network or migrating data the original data and its intent remain intact

## Sorting Through the Selection

A large # of GDB's exist. Roughly 30 well know projects in fact.

### You are the One, Neo.

GitHub Stats:

- 338 Stars
- Issues: 364 / 738 (open / closed)

Community:

- active community with engaged users (good for any OSP)

Licensing:

- Three level of licensing (development / advanced / enterprise)
  - free / $6000 / $2400
- worthwhile and useful documentation

Scalability:

- MASSIVE scalability - can easily handle a GDB with several billion nodes / relationships / properties on a single machine.
- No native sharding - should rarely be needed, but solutions do exist

Performance:

- Obviously out performs a RBD on a number of meaningful use cases.
- Small footprint:
  - Neo4j is a single <500k jar with one dependency (the Java Transaction API).

Usability:

- Simple and easy to use OO-API
- **retrieving children is a trival task**, since the backbone of a GDB is a relationship based structure

Dependency:

- fully transactional
- Supports JTA / JTS, XA, 2PC, Tx recovery, deadlock detection, etc.

---

>Separates data and logic with a more "natural" representation than tables. This makes it easy to use Neo4j as the storage tier for OO code while keeping behaviour and state separate.

>Neo4j traverses depths of 1000 levels and beyond at millisecond speed. That's many orders of magnitude faster than relational systems

## Code Stuff

Overview to the syntax involved when using Neo4j / GQL.

Give some insight to the way in which "traditional" DB's handle their data.

### Adding Nodes

### Adding Relationships

### Return a Single Node

### The Match Clause

### Filtered Matches

### Paths Between Nodes

### Hack Notez

Asking for all other concepts connected to the sushi concept, and asking the graph to tell us what type of relationship exists between them.

```
START sushi=node:Concepts(id="/c/en/sushi")
MATCH sushi-[r]-other_concepts
RETURN sushi.id, TYPE(r), other_concepts.id;
```

What's considered delicious?

```
START delicious=node:Concepts(id="/c/en/delicious")
MATCH delicious-[r]-other_concepts
RETURN TYPE(r), other_concepts.id;
```

Define two concepts, explain everything in between.

```
START sushi=node:Concepts(id="/c/en/sushi"), beer=node:Concepts(id="/c/en/beer")
MATCH p = AllShortestPaths(sushi-[*..10]-beer)
RETURN p.weight;
```

↓

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

## Reflections on Graphing

*Be sure to reference other docs in the browser.*