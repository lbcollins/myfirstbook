library(ggplot2)

simple_ex <- data.frame(
  A = c(1980, 1990, 2000, 2010),
  B = 1:4,
  C = c(3, 2, 1, 2),
  D = c("low", "low", "high", "high")
)
simple_ex
glimpse(simple_ex)

ggplot(data = simple_ex, mapping = aes(x = A, y = B)) + 
  geom_point()

ggplot(data = simple_ex, mapping = aes(x = A, y = B)) + 
  geom_point(mapping = aes(color = D))

# ...or, since only one geometry (point)
# can put all aesthetics into "mapping" options
ggplot(data = simple_ex, mapping = aes(x = A, y = B, color = D)) +
  geom_point()

ggplot(data = simple_ex, mapping = aes(x = A, y = B)) + 
  geom_point(mapping = aes(color = D, size = C))

# ...or, since only one geometry (point)
# can put all aesthetics into "mapping" options
ggplot(data = simple_ex, mapping = aes(x = A, y = B, size = C, color = D)) +
  geom_point()

ggplot(data = simple_ex, mapping = aes(x = A, y = B)) + 
  geom_line(mapping = aes(color = D)) +
  geom_point(color = "blue", size = 4)
