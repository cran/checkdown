## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("agricolamz/checkdown")

## -----------------------------------------------------------------------------
library(checkdown)

## ---- results='asis'----------------------------------------------------------
autocheck_question(question_id = 1, answer =  4)

## ---- results='asis'----------------------------------------------------------
autocheck_question(question_id = 2, answer =  6, right = "correct", wrong = "not correct")

## ---- results='asis'----------------------------------------------------------
autocheck_question(question_id = 3, answer =  "la-la")

## ---- results="asis"----------------------------------------------------------
autocheck_question(question_id = 4, "banana", options = c("apple", "banana", "bread"))

