library(ggplot2)

# 数据
cycle <- c(0,1,2,3,4,5)
S1 <- c(46,33,38,38,37,37)
S2 <- c(27,21,23,22,21,20)
S3 <- c(10,15,12,14,15,18)
S4 <- c(17,31,27,26,27,26)

# 整理数据
df <- data.frame(
  循环 = factor(rep(cycle,4)),
  形态 = factor(rep(c("S1","S2","S3","S4"), each=6)),
  占比 = c(S1,S2,S3,S4)
)

# 画图（纯颜色，无纹理，最简单）
ggplot(df, aes(x=循环, y=占比, fill=形态)) +
  geom_col(color="black", position = "stack") +
  geom_text(aes(label=占比), position=position_stack(vjust=0.5), size=4) +
  scale_fill_manual(values=c("white","gray80","gray50","gray20")) +
  ylim(0,100) +
  labs(x="循环次数",y="占比（%）") +
  theme_bw()