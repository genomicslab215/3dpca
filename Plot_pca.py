import pandas as pd
import matplotlib.pyplot as plt

# Read the eigenvectors
pca_eigenvec = pd.read_csv('example.eigenvec', delim_whitespace=True, header=None)

# Read the first two principal components
pca1 = pca_eigenvec[2]
pca2 = pca_eigenvec[3]

# Plot the first two principal components
plt.scatter(pca1, pca2)
plt.xlabel('Principal Component 1')
plt.ylabel('Principal Component 2')
plt.title('PCA of Genotype Data')
plt.grid(True)
plt.show()
