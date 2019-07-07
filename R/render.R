rmarkdown::render("R/idbac-db_searcher.Rmd",
                  params = list(queryPath = "C:/Users/chase/Downloads",
                                queryDBName = "murphy_lab",
                                subjectPath = "C:/Users/chase/Downloads",
                                subjectDBName = "murphy_lab",
                                querySampleIDs = "B5389",
                                subjectSampleIDs = NULL,
                                peakPercentPresence = 70,
                                lowerMassCutoff = 3000,
                                upperMassCutoff = 15000,
                                minSNR = 6,
                                tolerance = 0.002,
                                nResults = 5L)
)
