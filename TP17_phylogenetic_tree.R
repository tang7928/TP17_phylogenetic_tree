{\rtf1\ansi\ansicpg936\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww29200\viewh16320\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs32 \cf0 \expnd0\expndtw0\kerning0
library(ggplot2)\
\
# \uc0\u25968 \u25454 \
cycle <- c(0,1,2,3,4,5)\
S1 <- c(46,33,38,38,37,37)\
S2 <- c(27,21,23,22,21,20)\
S3 <- c(10,15,12,14,15,18)\
S4 <- c(17,31,27,26,27,26)\
\
# \uc0\u25972 \u29702 \u25968 \u25454 \
df <- data.frame(\
  \uc0\u24490 \u29615  = factor(rep(cycle,4)),\
  \uc0\u24418 \u24577  = factor(rep(c("S1","S2","S3","S4"), each=6)),\
  \uc0\u21344 \u27604  = c(S1,S2,S3,S4)\
)\
\
# \uc0\u30011 \u22270 \u65288 \u32431 \u39068 \u33394 \u65292 \u26080 \u32441 \u29702 \u65292 \u26368 \u31616 \u21333 \u65289 \
ggplot(df, aes(x=\uc0\u24490 \u29615 , y=\u21344 \u27604 , fill=\u24418 \u24577 )) +\
  geom_col(color="black", position = "stack") +\
  geom_text(aes(label=\uc0\u21344 \u27604 ), position=position_stack(vjust=0.5), size=4) +\
  scale_fill_manual(values=c("white","gray80","gray50","gray20")) +\
  ylim(0,100) +\
  labs(x="\uc0\u24490 \u29615 \u27425 \u25968 ",y="\u21344 \u27604 \u65288 %\u65289 ") +\
  theme_bw()}