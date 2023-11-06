

#Question 1
my_data <- read.csv("/Users/thanosalexandris/Desktop/Social Network Analytics/asoiaf-all-edges.csv")
ig_data<-my_data[, c("Source", "Target","weight")]
View(ig_data)

library(igraph)

ig <- graph_from_data_frame(ig_data, directed=FALSE, vertices=NULL)
print(ig, e=TRUE, v=TRUE)

#Question 2

# number of vertices
vcount(ig)
# number of edges
ecount(ig)
# diameter
diameter(ig)

#number of triangles in the graph
length(triangles(ig))

##UNIQUE triangles
length(triangles(ig))/3

# number of edges having weight more than 15
sum(E(ig)$weight > 15)

#The top-10 characters of the network as far as their degree is concerned
head(sort(degree(ig), decreasing=TRUE), 10)

#top-10 characters of the network as far as their weighted degree is concerned
head(sort(strength(ig), decreasing=TRUE), 10) 

#top-10 characters of the network as far as their local clustering coefficient is concerned
sort(transitivity(ig, type="local"), decreasing=TRUE)##more than 10 have transitivity equeal to 1 (highest)

head(sort(transitivity(ig, type="local"), decreasing=TRUE),10)

V(ig)$name[which(transitivity(ig, type="local") == 1)]


#The global clustering coefficient of the graph
transitivity(ig, type = "global")

#Question 3
plot(ig,vertex.label = NA,layout=layout_nicely, vertex.color="cyan", edge.color="black",edge.arrow.size=20, edge.arrow.width=20,vertex.size=2.3)


# get the vertices with less than 10 connections
to_delete <- V(ig)[degree(ig) < 10]

sub_ig <- delete_vertices(ig, to_delete)

plot(sub_ig,vertex.label = NA,layout=layout_nicely,vertex.color="pink", edge.color="black", edge.arrow.size=20, edge.arrow.width=20,vertex.size=4)


#Edge Density for the whole graph
edge_density(ig, loops = FALSE) # loops = F, as no self-loops in the network

# Edge Density for the subgraph 
edge_density(sub_ig, loops = FALSE)


#Question 4

# Top 15 characters of the network based on Closeness Centrality
head(sort(closeness(ig), decreasing=TRUE), 15) 

# Top 15 characters of the network based on Betweenness centrality
head(sort(betweenness(ig, directed = FALSE), decreasing=TRUE), 15) 


#JON SNOW  closeness score
closeness(ig, v="Jon-Snow")

#JON SNOW  betweenness score
betweenness(ig, v="Jon-Snow", directed=FALSE)


# What's the ranking of Jon Snow in terms of Closeness Centrality?
which(names(sort(closeness(ig), decreasing=TRUE)) == "Jon-Snow")

#ranking of Jon Snow in terms of Betweenness Centrality?
which(names(sort(betweenness(ig, directed = FALSE), decreasing=TRUE)) == "Jon-Snow")


#Question 5
pgrnk_sorted <- sort(page_rank(ig, algo="prpack" , directed=FALSE)$vector, decreasing=TRUE)

resize=pgrnk_sorted*400

plot(ig,vertex.label = NA,layout=layout_nicely, vertex.color="purple",  edge.arrow.size=20, edge.arrow.width=200,vertex.size=resize)


