# Network_Analysis_and_Visualization_with_R_and_igraph

1 ‘A Song of Ice and Fire’ network
Your first task is create an igraph graph1 using the network of the characters of ’A Song of Ice and Fire’ by George R. R. Martin [1]. A .csv file with the list of edges of the network is available online.2 You should download the file and use columns Source, Target, and Weight to create an undirected weighted graph. For your convenience, you are free to make any transformations you think are appropriate to the file.
2 Network Properties
Next, having created an igraph graph, you will explore its basic properties and write code to print:

• The number of vertices of the graph
• The number of edges of the graph
• The diameter of the graph
• The number of triangles in the graph
• The number of edges having weight more than 15
• The top-10 characters of the network as far as their degree is concerned
• The top-10 characters of the network as far as their weighted degree is concerned
• The top-10 characters of the network as far as their local clustering coef- ficient is concerned
• The global clustering coefficient of the graph 3 Subgraph
After that, your task is to plot the network:
You will first plot the entire network. Make sure you set the plot parameters appropriately to obtain an aesthetically pleasing result. For example, you can opt not to show the nodes’ labels (vertex.label = NA) and set a custom value for parameters: edge.arrow.width, and vertex.size. Feel free to configure additional parameters that may improve your visualization results.
Then, you will create a subgraph of the network, by discarding all vertices that have less than 10 connections in the network, and plot the subgraph.
In addition to the above plots, you are also asked to write code that calculates the edge density of the entire graph, as well as the aforementioned subgraph, and provide an explanation on the obtained results (a few sentences in your report).
4 Centrality
Next, you will write code to calculate and print the top-15 nodes according to the:
• closeness centrality
• betweenness centrality

In addition, you are asked to find out where the character Jon Snow is ranked according to the above two measures and provide an explanation (a few sen- tences) of the observations you make after examining your results.
5 Ranking and Visualization
In the final step of this project your are asked to rank the characters of the network with regard to their PageRank value.
You will write code to calculate the PageRank values, and create a plot of the graph that uses these values to appropriately set the nodes’ size so that the nodes that are ranked higher are more evident.
References
[1] A. Beveridge and J. Shan. Network of thrones. Math Horizons Magazine, 23(4):18–22, 2016.
