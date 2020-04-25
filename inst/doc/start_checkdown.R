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
check_question(c("banana", "apple"), options = c("apple", "banana", "bread"), type = "checkbox")

## ---- results="asis"----------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"), type = "radio", alignment = TRUE)

## ---- results="asis"----------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"), type = "radio", random_answer_order = TRUE)

## ---- results="asis"----------------------------------------------------------
check_hint("You can use the rmarkdown package")

## ---- results="asis"----------------------------------------------------------
check_hint("You can use the rmarkdown package",
           hint_title = "CLICK HERE")

## ---- results="asis"----------------------------------------------------------
check_hint("* You can use the `markdown` **inside** the [`chcekdown` package](https://agricolamz.github.io/checkdown/)",
           hint_title = "Click he`R`e")
check_question(answer =  4, 
               wrong = "a**R**e you su**R**e", 
               right = "### `R`ight")

## ---- results="asis"----------------------------------------------------------
check_hints(hint_text = c("look into the hint 2", "look into the hint 1"),
            hint_title = c("hint 1", "hint 2"), 
            list_title = "list of hints")

## ---- results="asis", eval=FALSE----------------------------------------------
#  check_question(answer = 3,
#                 type = "radio",
#                 options = insert_images(c("windows.png",
#                                           "mac.png",
#                                           "linux.png"),
#                                           image_width = 30))

## ---- eval=FALSE--------------------------------------------------------------
#  tmp <- tempfile(fileext = ".png")
#  library(ggplot2)
#  ggplot(data = mtcars, aes(mpg, disp)) + geom_point()
#  ggsave(filename = tmp)

## ---- results="asis", eval=FALSE----------------------------------------------
#  check_hint(paste("Here is our plot: <br>",
#                   insert_images(tmp, image_width = "40%")))

## ---- results="asis"----------------------------------------------------------
log(3/4)
check_question(answer =  round(log(3/4), 6))

