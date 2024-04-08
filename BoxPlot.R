# Install necessary packages if not already installed
install.packages(c("ggplot2", "plyr"))

# Load libraries
library(ggplot2)
library(plyr)

# Load iris dataset
data(iris)

# Display the first few rows of the iris dataset
head(iris)

# Display the last few rows of the iris dataset
tail(iris)

# Basic exploration of the iris dataset
summary(iris)

# Adding standard error bars in boxplots
p <- ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  stat_boxplot(geom = 'errorbar', width = 0.2) +
  theme_classic() +
  labs(title = "Box Plot", subtitle = "Adding standard error bars in boxplots")

print(p)

# Showing each data point as well as box plot
p <- ggplot(iris, aes(x = reorder(Species, Sepal.Length, FUN = median), y = Sepal.Length, fill = Species)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 1) +
  geom_point() +
  theme_classic() +
  labs(title = "Box Plot", subtitle = "Showing each data point as well as box plot")

print(p)




