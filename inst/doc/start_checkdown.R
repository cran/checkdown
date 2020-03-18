## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("checkdown")

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("agricolamz/checkdown")

## -----------------------------------------------------------------------------
library(checkdown)

## ---- results='asis'----------------------------------------------------------
check_question(answer =  4)

## ---- results='asis'----------------------------------------------------------
check_question(answer =  6, right = "correct", wrong = "not correct")

## ---- results='asis'----------------------------------------------------------
check_question(answer =  "la-la")

## ---- results='asis'----------------------------------------------------------
check_question(answer =  1:5)

## ---- results="asis"----------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"))

check_question("banana", options = c("apple", "banana", "bread"), type = "radio")

## ---- results="asis"----------------------------------------------------------
check_hint("You can use the rmarkdown package")

## ---- results="asis"----------------------------------------------------------
check_hint("You can use the rmarkdown package",
           click_text = "CLICK HERE")

## ---- results="asis"----------------------------------------------------------
check_hint("* You can use the **`rmarkdown` package**",
           click_text = "Click he`R`e")
check_question(answer =  4, 
               wrong = "a**R**e you su**R**e", 
               right = "### `R`ight")

