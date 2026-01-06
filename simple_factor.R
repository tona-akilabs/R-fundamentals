#5.4 Creating a Factor (Categorical Variable)
#f <- factor(v, levels)
f <- factor(c("Win", "Win", "Lose", "Tie", "Win", "Lose"))
print(f) #[1] Win  Win  Lose Tie  Win  Lose & Levels: Lose Tie Win

wday <- c("Wed", "Thu", "Mon", "Wed", "Thu", "Thu", "Thu", "Tue", "Thu", "Tue")
f <- factor(wday)
print(f) #[1] Wed Thu Mon Wed Thu Thu Thu Tue Thu Tue and & Levels: Mon Thu Tue Wed

f <- factor(wday, levels=c("Mon", "Tue", "Wed", "Thu", "Fri"))
print(f) #[1] Wed Thu Mon Wed Thu Thu Thu Tue Thu Tue & Levels: Mon Tue Wed Thu Fri