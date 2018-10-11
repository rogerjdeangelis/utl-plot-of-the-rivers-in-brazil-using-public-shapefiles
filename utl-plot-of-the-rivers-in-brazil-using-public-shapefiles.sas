%let pgm=utl-plot-of-the-rivers-in-brazil-using-public-shapefiles;                                                                                                  
                                                                                                                                                                    
Plot the rivers of Brazil in blue using public shapefiles.                                                                                                          
                                                                                                                                                                    
Output graphic                                                                                                                                                      
https://tinyurl.com/y8q29lg9                                                                                                                                        
https://github.com/rogerjdeangelis/utl-plot-of-the-rivers-in-brazil-using-public-shapefiles/blob/master/utl-plot-of-the-rivers-in-brazil-using-public-shapefiles.png
                                                                                                                                                                    
github                                                                                                                                                              
https://github.com/rogerjdeangelis/utl-plot-of-the-rivers-in-brazil-using-public-shapefiles                                                                         
                                                                                                                                                                    
related to                                                                                                                                                          
https://tinyurl.com/y9sne3yd                                                                                                                                        
https://communities.sas.com/t5/SAS-Communities-Library/Webmap-case-study-in-SAS-Visual-Analytics/ta-p/501270                                                        
                                                                                                                                                                    
Plot of the rivers in brazil using public shapefiles                                                                                                                
                                                                                                                                                                    
Download and put the shapfiles in files in d:/shp/brazil                                                                                                            
https://sites.google.com/site/joabelb/Home/PrincRiosBrazil.zip                                                                                                      
                                                                                                                                                                    
https://tinyurl.com/ybyf34hx                                                                                                                                        
ftp://geoftp.ibge.gov.br/organizacao_do_territorio/malhas_territoriais/malhas_municipais/municipio_2017/Brasil/BR/br_unidades_da_federacao.zip                      
                                                                                                                                                                    
StackOverflow                                                                                                                                                       
https://stackoverflow.com/questions/51333546/how-to-plot-rivers-efficiently                                                                                         
                                                                                                                                                                    
Carlos Eduardo Lagosta  profile                                                                                                                                     
* You can easuily add other layers;                                                                                                                                 
https://stackoverflow.com/users/9817508/carlos-eduardo-lagosta                                                                                                      
                                                                                                                                                                    
                                                                                                                                                                    
INPUT                                                                                                                                                               
=====                                                                                                                                                               
                                                                                                                                                                    
Download shapefiles from here                                                                                                                                       
https://tinyurl.com/ybyf34hx                                                                                                                                        
https://sites.google.com/site/joabelb/Home/PrincRiosBrazil.zip                                                                                                      
                                                                                                                                                                    
Unzip into                                                                                                                                                          
                                                                                                                                                                    
D:/shp/Brazil                                                                                                                                                       
                                                                                                                                                                    
  BRUFE250GC_SIR.cpg                                5                                                                                                               
  BRUFE250GC_SIR.dbf                            2,101                                                                                                               
  BRUFE250GC_SIR.prj                              151                                                                                                               
  BRUFE250GC_SIR.shp                        9,317,480                                                                                                               
  BRUFE250GC_SIR.shx                              316                                                                                                               
                                                                                                                                                                    
  Licen‡a de Documenta‡Æo Livre GNU.txt        18,065                                                                                                               
  PrincipaisRiosDoBrasil.dbf                  108,390                                                                                                               
  PrincipaisRiosDoBrasil.sbn                   27,940                                                                                                               
  PrincipaisRiosDoBrasil.sbx                    3,452                                                                                                               
  PrincipaisRiosDoBrasil.shp                2,724,244                                                                                                               
  PrincipaisRiosDoBrasil.shx                   17,092                                                                                                               
                                                                                                                                                                    
                                                                                                                                                                    
PROCESS                                                                                                                                                             
=======                                                                                                                                                             
                                                                                                                                                                    
* I could not get it to work without changing the PWD;                                                                                                              
                                                                                                                                                                    
x "cd d:/shp/brazil";                                                                                                                                               
                                                                                                                                                                    
%utl_submit_r64("                                                                                                                                                   
library(ggplot2);                                                                                                                                                   
library(rgdal);                                                                                                                                                     
shapeUFs <- readOGR('.', 'BRUFE250GC_SIR');                                                                                                                         
shapeHid <- readOGR('.', 'PrincipaisRiosDoBrasil');                                                                                                                 
png(file='d:/png/utl-plot-of-the-rivers-in-brazil-using-public-shapefiles.png'                                                                                      
  ,width=1080,height=640,units ='px' );                                                                                                                             
ggplot(shapeUFs, aes(long, lat, group = group)) +                                                                                                                   
  geom_polygon(fill = 'gray90', color = 'black') +                                                                                                                  
  geom_path(data = shapeHid, color = 'steelblue2') +                                                                                                                
  coord_map() + theme_void();                                                                                                                                       
dev.off();                                                                                                                                                          
");                                                                                                                                                                 
                                                                                                                                                                    
x "cd c:/utl";                                                                                                                                                      
                                                                                                                                                                    
                                                                                                                                                                    
OUTPUT                                                                                                                                                              
======                                                                                                                                                              
                                                                                                                                                                    
 https://tinyurl.com/y9sne3yd                                                                                                                                       
