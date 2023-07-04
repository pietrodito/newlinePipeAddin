insertNewlinePipe <- function() {
  rstudioapi::insertText("\n  %>% ")
}

insertParenthesisedPipeWorkflow <- function() {
  go_back_to_end_of_previous_line <- function() {
    context <- rstudioapi::getActiveDocumentContext()
    current_row <- context$selection[[1]]$range$start[[1]]
    rstudioapi::setCursorPosition(rstudioapi::document_position(
      row = current_row - 1,
      column = Inf
    ))
  }

  rstudioapi::insertText("(\n  \n)")
  go_back_to_end_of_previous_line()
}

