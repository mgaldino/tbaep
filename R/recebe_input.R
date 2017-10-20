## função para receber input, em prompt, do usuário
## pergunta se quer imprimir todos os arquivos modificados

recebe_input <- function(){
  x <- readline("Você quer imprimir os nomes de todos dos arquivos sem acento? responda s ou n: ")
  x <- unlist(strsplit(x, ","))
}
