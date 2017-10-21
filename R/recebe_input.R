#' This function gets input from user
#'
#' @keywords prompt, input
#' @examples
#' recebe_input()

recebe_input <- function(){
  x <- readline("Você quer imprimir os nomes de todos os arquivos sem acento? responda s ou n: ")
  x <- unlist(strsplit(x, ","))
}
