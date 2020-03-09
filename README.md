# Create check-fields and check-boxes with `checkdown`

G. Moroz

## Instalation

This package is not on CRAN, but it will be there. Until then install this package with the following command:

```{r, eval=FALSE}
install.packages("devtools")
devtools::install_github("agricolamz/checkdown")
```

## Demo

The main goal of this package to create autochecking boxes in `rmarkdown`. It could be used in class, when teacher share materials and tasks, so student can solve some problems and check themselves. In contrast with the `learnr` package the `checkdown` package works without shiny. Load the library:

```{r}
library(checkdown)
```

Imagine that we want to create a checkbox with the answer 4. All you need is to create a following chunk with the chunck atribute `results='asis'` in your `rmarkdown` document:
```{r, results='asis'}
autocheck_question(question_id = 1, answer =  4)
```

`question_id` argument should be different for all questions. It is also possible to change wrong and right answer's messages using `wrong` and `right` arguments of the `autocheck_question()` function. Let's create some more questions.

Solve 3+3:
```{r, results='asis'}
autocheck_question(question_id = 2, answer =  6, right = "correct", wrong = "not correct")
```

Type *la-la*:
```{r, results='asis'}
autocheck_question(question_id = 3, answer =  "la-la")
```

It is also possible to create a list of answers for students to choose:

```{r, results="asis"}
autocheck_question(question_id = 4, "banana", options = c("apple", "banana", "bread"))
```

## Some hints

* It is possible to avoid code in the output with the chunk argument `echo=FALSE`.
* For now the package `checkdown` works only with html output and will not print anything for other otputs.