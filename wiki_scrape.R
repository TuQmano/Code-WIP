# SCRAPE WIKIPEDIA

## scrape Wiki table (Provincia de Buenos Aires)

##### PAQUETES NECESARIOS 
library("rvest")
               
#### EXTRACCIÓN DE DATOS DE WIKIPEDIA
                
############                 
# PARTIDOS DE LA PROVINCIA DE BUENOS AIRES              
############
                 
                 
PBA <- "https://es.wikipedia.org/wiki/Anexo:Partidos_de_la_provincia_de_Buenos_Aires"#FUENTE DE DATOS
       
 partidos.pba <- PBA %>%
       read_html() %>%
       html_nodes(xpath='//*[@id="mw-content-text"]/div/table') %>%
       html_table(fill=TRUE)   #SCRAPEO DE DATA DE WIKIPEDIA
                 
                 
                # SELECCION DE DATOS Y ARMADO DE DATA FRAME
                partidos.pba <- partidos.pba[[1]]
                partidos.pba <- partidos.pba$Partido
                partidos.pba <- as.data.frame(partidos.pba)
                 #RENOMBRAR VARIABLES
                 colnames(partidos.pba) <- c("partido")
                 
