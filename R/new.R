
result <- lapply(1:nrow(result),
                 function(x){
                   cbind(IDBacApp::deserial(rawToChar(fst::decompress_fst(result[x, 1][[1]]))),
                         IDBacApp::deserial(rawToChar(fst::decompress_fst(result[x, 2][[1]]))))
                 })


result <- lapply(result,
                 function(x){
                   MALDIquant::createMassSpectrum(mass = x[ , 1],
                                                  intensity = x[ , 2])
                 }
)



new <- function(result){
  # masses
  a1 <- lapply(result[,1], fst::decompress_fst)
  a1 <- lapply(a1, base::rawToChar)
  a1 <- lapply(a1, IDBacApp::deserial)
  # Intensities
  a2 <- lapply(result[,2], fst::decompress_fst)
  a2 <- lapply(a2, base::rawToChar)
  a2 <- lapply(a2, IDBacApp::deserial)

  mapply(function(x,y){
    MALDIquant::createMassSpectrum(mass = x,
                                   intensity = y)
  },
  a1,
  a2)

}
