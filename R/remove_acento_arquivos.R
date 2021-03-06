#' Removes all accent of all files in the choosen folder.
#'
#' @dir Character. Folder where are the files. The user must write the path of the folder (there is no default).
#' @sub_folder Logical. If files within nested folders should be used.
#' @keywords acentos
#' @export
#' @examples
#' do not run!
#' my_folder <- getwd()
#' remove_acento_arquivos(my_folder)

remove_acento_arquivos <- function(dir, sub_folder=T) {
  # if(!require(stringi)) {
  #   install.packages("stringi")
  #   stopifnot(require(stringi))
  # }

  setwd(dir)
  vec_from <- list.files(pattern = "[��������������������������]", recursive = sub_folder)
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
