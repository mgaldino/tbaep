#' uma fun��o que remove acentos de todos os arquivos em um diret�rio
#'
#' @dir Diret�rio onde esta�o os arquivos a terem os acentos removidos. Usu�rio deve especificar todo  caminho.
#' @keywords acentos
#' @export
#' @examples
#' remove_acento_arquivos()

remove_acento_arquivos <- function(dir) {
  if(!require(stringi)) {
    install.packages("stringi")
    stopifnot(require(stringi))
  }

  setwd(dir)
  vec_from <- list.files(pattern = "[��������������������������]")
  vec_to <- stringi::stri_trans_general(vec_from, "latin-ascii")
  file.rename(vec_from, vec_to)

  x <- length(vec_from)
  print(paste0("Foram renomeados ", x , " arquivos no total"))

  if(x > 0) {
    resposta <- tolower(recebe_input())

    if (resposta == "s") {
      print(vec_to)
    } else {
      if(resposta == "n") {
        "voc� respondeu n�o. Programa encerrado"
      } else {
        print("voc� n�o respondeu nem 's' nem 'n'")
      }
    }
  }

}