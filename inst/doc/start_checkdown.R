## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("checkdown")

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("remotes")
#  remotes::install_github("agricolamz/checkdown")

## -----------------------------------------------------------------------------
library(checkdown)

## -----------------------------------------------------------------------------
check_question(answer = 4)

## -----------------------------------------------------------------------------
check_question(answer = 6, right = "correct", wrong = "not correct")

## -----------------------------------------------------------------------------
check_question(answer = "la-la")

## -----------------------------------------------------------------------------
check_question(answer = "la-la", placeholder = "ta-ta-ta")

## -----------------------------------------------------------------------------
check_question(answer = 1:5)

## -----------------------------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"), type = "select")

check_question("banana", options = c("apple", "banana", "bread"), type = "radio")

check_question(c("banana", "apple"), options = c("apple", "banana", "bread"), type = "checkbox")

## -----------------------------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"), type = "radio", alignment = "horizontal")

## -----------------------------------------------------------------------------
check_question("banana", options = c("apple", "banana", "bread"), type = "radio", random_answer_order = TRUE)

## -----------------------------------------------------------------------------
check_question(NULL, options = c("apple", "banana", "bread"), type = "radio")

## -----------------------------------------------------------------------------
check_question(answer = c("What", "do", "you", "think?"), type = "in_order")

## -----------------------------------------------------------------------------
check_question(c("heat the water", 
                 "place a tea bag into the cup",
                 "pour the hot water over the tea bag",
                 "steep the tea bag into cup",
                 "remove the tea bag"), 
               type = "in_order", alignment = "vertical")

## -----------------------------------------------------------------------------
check_question(answer = 42, title = "Put a number from 1 to 100")

## -----------------------------------------------------------------------------
check_hint("You can use the rmarkdown package")

## -----------------------------------------------------------------------------
check_hint("You can use the rmarkdown package inside checkdown",
           hint_title = "🔎 CLICK HERE")

## -----------------------------------------------------------------------------
check_hint("You can use the rmarkdown package inside checkdown",
           hint_title = "🔎 Put mouse over here",
           type = "onmouseover")

check_hint("You can use the rmarkdown package inside checkdown",
           hint_title = "🔎 Double click here",
           type = "ondblclick")

## -----------------------------------------------------------------------------
check_hint("- You can use `markdown` **inside** the [`chcekdown` package](https://agricolamz.github.io/checkdown/)",
           hint_title = "Click he`R`e")

check_question(answer = 4, 
               wrong = "a**R**e you su**R**e?", 
               right = "### `R`ight")

## -----------------------------------------------------------------------------
check_hints(hint_text = c("look into the hint 2", "look into the hint 1"),
            hint_title = c("hint 1", "hint 2"), 
            list_title = "list of hints")

## -----------------------------------------------------------------------------
check_hint(hint_text = "this<br>is<br>a<br>multiline<br>sentence")

## ---- eval=FALSE--------------------------------------------------------------
#  check_question(answer = 3,
#                 type = "radio",
#                 options = insert_images(c("windows.png",
#                                           "mac.png",
#                                           "linux.png"),
#                                         image_width = 30))

## ---- eval=FALSE--------------------------------------------------------------
#  check_hint("Here is a map: <br>
#  ![](https://upload.wikimedia.org/wikipedia/commons/f/f7/EU-Greece_%28orthographic_projection%29.svg){width=10%}")

## -----------------------------------------------------------------------------
log(3/4)
check_question(answer = round(log(3/4), 5), placeholder = "0.12345")

