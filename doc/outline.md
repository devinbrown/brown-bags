# Graph Theory & Neo4j

## Relational DB vs Graph Database

>While storing a graph in a relational database is simple, querying it, particularly traversing it, can be time-ineﬃcient due to the number of potential joins.

### Why Go to NOSQL?

1. Having tables with lots of columns, each of which is only used by a few rows.
2. Having attribute tables.
3. Having lots of many-to-many relationships.
4. Having tree-like characteristics.
5. Requiring frequent schema changes.


>At small scale,
MySQL performed slightly better than Neo4j, but scaling
upward dramatically shifted the search times in favor of
Neo4j.

>With graph databases, the performance of retrieval queries are tightly linked to
the indexing service used. Neo4j uses Lucene, which is optimized for full-text
indexing. Retrieval of other types of data, such as numeric and date are
signiﬁcanly less eﬃcient.

- Neo4j has an easily mutable schema, while relational databases are less mutable.
- lack of multi user environments

## Graph Database Overview

- Non-SQL database
- Utilizing nodes, edges, and properties

>By definition, a graph database is any storage system that provides index-free adjacency.

>This means that every element contains a direct pointer to its adjacent element and no index lookups are necessary.

![example](http://upload.wikimedia.org/wikipedia/commons/3/3a/GraphDatabase_PropertyGraph.png)

- Nodes are very similar in nature to the objects that object-oriented programmers will be familiar with.
-  graph databases are often faster for associative data sets and map more directly to the structure of object-oriented applications
- GDBs can scale more naturally to large data sets as they do not typically require expensive join operations
- As they depend less on a rigid schema
  - they are more suitable to manage ad-hoc and changing data with evolving schemas

>Graph databases are a powerful tool for graph-like queries, for example computing the shortest path between two nodes in the graph

## Neo4j

- 26+ different graph database options out there (that I know of)
- Neo4j is a big one, but more or less I looked into because the book I had used it :-)
- implemented in Java
- open source (yay!)

>“Neo4j is an embedded, disk-based, fully transactional Java persistence engine that stores data structured in graphs rather than in tables”

- The developers claim it is exceptionally scalable (several billion nodes on a single machine),
- has an API that is easy to use, and supports eﬃcient traversals.
- Neo4j is built using Apache’s Lucene 3
  - Lucene is a text search engine, written in Java, geared toward high performance

## Usage

- Integrates with rails using JRuby
- "similar" to activerecord

-> examples: http://geekmonkey.org/articles/25-using-neo4j-with-rails-3-2

## Examples

## Further Reading Info

## Refs. / Questions

### A Comparison of a Graph Database and a Relational Database

- http://www.cs.olemiss.edu/~ychen/publications/conference/vicknair_acmse10.pdf


---

Dag = http://www.angelfire.com/film/burning_crotch/snatch/snatch2.jpg
DAG = http://en.wikipedia.org/wiki/Directed_acyclic_graph