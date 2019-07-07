This is a temporary repository for a function that will eventually be incorporated into IDBac (https://github.com/chasemc/IDBacApp). No promise of stability as this is under active development.

To use:

```{r}

rmd_template <- "R/idbac-db_searcher.Rmd"

rmarkdown::render(rmd_template,
                  params = list(queryPath = "C:/Users/chase/AppData/Local/Programs/IDBac",
                                queryDBName = "queryDB",
                                subjectPath = "C:/Users/chase/Documents",
                                subjectDBName = "maldi_database",
                                querySampleIDs = "1002",
                                subjectSampleIDs = NULL,
                                peakPercentPresence = 70,
                                lowerMassCutoff = 3000,
                                upperMassCutoff = 15000,
                                minSNR = 6,
                                tolerance = 0.002,
                                nResults = 5L)
)

```
