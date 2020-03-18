#' Create check-fields and check-boxes for 'rmarkdown'
#'
#' @param question_id unique identidier of the question
#' @param answer correct answer (can be a double or a string). It is possible to put here a vector of several answers.
#' @param right form reaction on right answer
#' @param wrong form reaction on wrong answer
#' @param options vector of values for the selection list type
#' @param button_label character value that will be displayed on the button
#' @param type character that defines type of the list. Possible values: "select", "radio"
#'
#' @author George Moroz <agricolamz@gmail.com>
#' @examples
#'
#' # ```{r, results='asis', echo=FALSE}
#' # check_question(answer = 5)
#' # ```
#'
#' @export
#'
#' @importFrom knitr is_html_output
#' @importFrom markdown markdownToHTML
#'

check_question <- function(answer,
                           right = "Correct",
                           wrong = "I have a different answer",
                           question_id = sample(1:1e5, 1),
                           options = NULL,
                           button_label = "check",
                           type = "select") {

  if(knitr::is_html_output()){
    if(grepl("\\.", question_id)){
      question_id <- gsub("\\.", "_", question_id)
    }
    right <- (markdown::markdownToHTML(text = right,
                                       output = NULL,
                                       fragment.only = TRUE))
    right <- gsub("(<.?p>)|(\n)|(\\#)", "", right)
    wrong <- (markdown::markdownToHTML(text = wrong,
                                       output = NULL,
                                       fragment.only = TRUE))
    wrong <- gsub("(<.?p>)|(\n)|(\\#)", "", wrong)
    if(is.null(options)){
      form <- paste(c('<input type="text" name="answer_',
                      question_id,
                      '">'),
                    collapse = "")
    } else if(type == "select"){
      form <- paste(c('<select name="answer_',
                      question_id,
                      '">',
                      paste("<option>", options, "</option>"),
                      "</select>"),
                    collapse = "")
    } else if(type == "radio"){
      form <- paste0(paste(c('<input type="radio" name="answer_',
                             question_id,
                             '" id="'), collapse = ""),
                     options,
                     '" value="',
                     options,
                     '"><label for="',
                     options,
                     '">',
                     options,
                     '</label><br>',
                     collapse = "")
    }

    cat(paste0(c('<form name="form_',
                 question_id,
                 '" onsubmit="return validate_form_',
                 question_id,
                 '()" method="post">',
                 form,
                 '<input type="submit" value="',
                 button_label,
                 '"></form><p id="result_',
                 question_id,
                 '"></p>'),
               collapse = ""))
    cat(
      paste(
        "<script>",
        paste(
          'function validate_form_',
          question_id,
          '() {var x, text; var x = document.forms["form_',
          question_id,
          '"]["answer_',
          question_id,
          '"].value;',
          'if (',
          paste0('x == "', answer, '"', collapse = '|'),
          '){',
          'text = "',
          right,
          '";',
          '} else {',
          'text = "',
          wrong,
          '";} document.getElementById("result_',
          question_id,
          '").innerHTML = text; return false;}',
          sep = "",
          collapse = "\n"),
        "</script>",
        collapse = "\n"))
  }
}