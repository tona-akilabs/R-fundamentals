#5.5 Combining Multiple Vectors into One Vector and a Factor
#comb <- stack(list(v1 = v1, v2 = v2, v3 = v3)) # Combine 3 vectors

freshmen <- c(1, 2, 1, 1, 5)
sophomores <- c(3, 2, 3, 3, 5)
juniors <- c(5, 3, 4, 3, 3)

comb <- stack(list(fresh = freshmen, soph = sophomores, jrs = juniors))
print(comb)

#Now you can perform the ANOVA on the two columns:
fit <- aov(values ~ ind, data = comb)
print(summary(fit))