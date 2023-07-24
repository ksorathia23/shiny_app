library(ggplot2)

dataset= read.csv("regrex1.csv", header = TRUE)
print(dataset)

model = lm(formula = y ~ x,
               data = dataset)

summary(model)

png("scatter.png")
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  ggtitle('X vs Y') +
  xlab('X') +
  ylab('Y')
dev.off()

png("bestfit.png")
ggplot() +
  geom_point(aes(x = dataset$x, y = dataset$y),
             colour = 'red') +
  geom_line(aes(x = dataset$x, y = predict(model, newdata = dataset)),
            colour = 'blue') +
  ggtitle('X vs Y') +
  xlab('X') +
  ylab('Y')
dev.off()

args = commandArgs()
args
