library(RColorBrewer)
library(ggplot2)
#install.packages("RColorBrewer")
#install.packages("ggplot2")
# Store your xxx.pca.evec file in variable fn
fn <- "example.eigenvec"
 # Read data from fn into data frame evecDat with appropriate column names
evecDat <- read.table(fn, col.names = c("Pop", "sample", "PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10"))
 # Create a PCA plot
 ggplot(evecDat, aes(x = PC1, y = PC2, color = "Sample")) +
+   geom_point(shape = 21, fill = "white", size = 3) + # Hollow circles
+   geom_text(aes(label = Sample), vjust = 1.5, size = 3) + # Add sample names
+   scale_color_brewer(palette = "Set3") + # Use a color palette from RColorBrewer
+   theme_minimal() + # Use a minimal theme
+   labs(title = "PCA Plot", x = "PC1", y = "PC2") # Add labels and title
str(evecDat)

ggplot(evecDat, aes(x = PC1, y = PC2, color = Sample)) +
+   geom_point() +
+   labs(title = "PCA Plot", x = "Principal Component 1", y = "Principal Component 2") +
+   theme_minimal() +
+   scale_color_manual(values = rainbow(length(unique(evecDat$Sample)))) +
+   theme(legend.position = "right")
library(plotly)
pca_plot <-ggplot(evecDat, aes(x = PC1, y = PC2, color = Sample)) +
+   geom_point() +
+   labs(title = "PCA Plot", x = "Principal Component 1", y = "Principal Component 2") +
+   theme_minimal() +
+   scale_color_manual(values = rainbow(length(unique(evecDat$Sample)))) +
+   theme(legend.position = "right")
# Convert ggplot to plotly
pca_plotly <- ggplotly(pca_plot)

# Print the plot
print(pca_plotly)
