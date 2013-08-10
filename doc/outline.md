# Graph Theory

## A Graph What?

### 300+ years of graphy

Graph databases address one of the great macroscopic business trends of today: lever‐ aging complex and dynamic relationships in highly connected data to generate insight and competitive advantage.

Today, general-purpose graph databases are a reality, enabling mainstream users to experience the benefits of connected data without having to invest in building their own graph infrastructure

Graph theory was pioneered by Euler in the 18th century, and has been actively researched and improved by mathematicians, sociologists, anthro‐ pologists, and others ever since.

### Nodes, Edges, & Properties

Formally, a graph is just a collection of vertices and edges—or, in less intimidating lan‐ guage, a set of nodes and the relationships that connect them.


### storage with index-free adjacency

By definition, a graph database is any storage system that provides index-free adjacency.

Every element contains a direct pointer to its adjacent element and no index lookups are necessary.

----

- Nodes are very similar in nature to the objects that object-oriented programmers will be familiar with.
- Every element contains a direct pointer to its adjacent element and no index lookups are necessary.
- Often faster for associative data sets and map more directly to the structure of object-oriented applications
- Scale more naturally to large data sets as they do not typically require expensive join operations.
- More forgiving and flexible schema, sutiable to ad-hoc and changing data.
- A powerful tool for graph-like queries, for example computing the shortest path between two nodes in the graph-like.