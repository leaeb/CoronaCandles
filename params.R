jan20 <- ycreviews %>% filter(year == 2020, month == 01, location == "US")
feb20 <- ycreviews %>% filter(year == 2020, month == 02, location == "US")
mar20 <- ycreviews %>% filter(year == 2020, month == 03, location == "US")
apr20 <- ycreviews %>% filter(year == 2020, month == 04, location == "US")
may20 <- ycreviews %>% filter(year == 2020, month == 05, location == "US")
jun20 <- ycreviews %>% filter(year == 2020, month == 06, location == "US")
jul20 <- ycreviews %>% filter(year == 2020, month == 07, location == "US")
aug20 <- ycreviews %>% filter(year == 2020, month == 08, location == "US")
sep20 <- ycreviews %>% filter(year == 2020, month == 09, location == "US")
okt20 <- ycreviews %>% filter(year == 2020, month == 10, location == "US")
nov20 <- ycreviews %>% filter(year == 2020, month == 11, location == "US")

jan19 <- ycreviews %>% filter(year == 2019, month == 01, location == "US")
feb19 <- ycreviews %>% filter(year == 2019, month == 02, location == "US")
mar19 <- ycreviews %>% filter(year == 2019, month == 03, location == "US")
apr19 <- ycreviews %>% filter(year == 2019, month == 04, location == "US")
may19 <- ycreviews %>% filter(year == 2019, month == 05, location == "US")
jun19 <- ycreviews %>% filter(year == 2019, month == 06, location == "US")
jul19 <- ycreviews %>% filter(year == 2019, month == 07, location == "US")
aug19 <- ycreviews %>% filter(year == 2019, month == 08, location == "US")
sep19 <- ycreviews %>% filter(year == 2019, month == 09, location == "US")
okt19 <- ycreviews %>% filter(year == 2019, month == 10, location == "US")
nov19 <- ycreviews %>% filter(year == 2019, month == 11, location == "US")

jan18 <- ycreviews %>% filter(year == 2018, month == 01, location == "US")
feb18 <- ycreviews %>% filter(year == 2018, month == 02, location == "US")
mar18 <- ycreviews %>% filter(year == 2018, month == 03, location == "US")
apr18 <- ycreviews %>% filter(year == 2018, month == 04, location == "US")
may18 <- ycreviews %>% filter(year == 2018, month == 05, location == "US")
jun18 <- ycreviews %>% filter(year == 2018, month == 06, location == "US")
jul18 <- ycreviews %>% filter(year == 2018, month == 07, location == "US")
aug18 <- ycreviews %>% filter(year == 2018, month == 08, location == "US")
sep18 <- ycreviews %>% filter(year == 2018, month == 09, location == "US")
okt18 <- ycreviews %>% filter(year == 2018, month == 10, location == "US")
nov18 <- ycreviews %>% filter(year == 2018, month == 11, location == "US")

jan17 <- ycreviews %>% filter(year == 2017, month == 01, location == "US")
feb17 <- ycreviews %>% filter(year == 2017, month == 02, location == "US")
mar17 <- ycreviews %>% filter(year == 2017, month == 03, location == "US")
apr17 <- ycreviews %>% filter(year == 2017, month == 04, location == "US")
may17 <- ycreviews %>% filter(year == 2017, month == 05, location == "US")
jun17 <- ycreviews %>% filter(year == 2017, month == 06, location == "US")
jul17 <- ycreviews %>% filter(year == 2017, month == 07, location == "US")
aug17 <- ycreviews %>% filter(year == 2017, month == 08, location == "US")
sep17 <- ycreviews %>% filter(year == 2017, month == 09, location == "US")
okt17 <- ycreviews %>% filter(year == 2017, month == 10, location == "US")
nov17 <- ycreviews %>% filter(year == 2017, month == 11, location == "US")

means20<-c(meanjan20 <- mean(jan20$rating),
           meanfeb20 <- mean(feb20$rating),
           meanmar20 <- mean(mar20$rating),
           meanapr20 <- mean(apr20$rating),
           meanmay20 <- mean(may20$rating),
           meanjun20 <- mean(jun20$rating),
           meanjul20 <- mean(jul20$rating),
           meanaug20 <- mean(aug20$rating),
           meansep20 <- mean(sep20$rating),
           meanokt20 <- mean(okt20$rating),
           meannov20 <- mean(nov20$rating))

means19<-c(meanjan19 <- mean(jan19$rating),
           meanfeb19 <- mean(feb19$rating),
           meanmar19 <- mean(mar19$rating),
           meanapr19 <- mean(apr19$rating),
           meanmay19 <- mean(may19$rating),
           meanjun19 <- mean(jun19$rating),
           meanjul19 <- mean(jul19$rating),
           meanaug19 <- mean(aug19$rating),
           meansep19 <- mean(sep19$rating),
           meanokt19 <- mean(okt19$rating),
           meannov19 <- mean(nov19$rating))

means18<-c(meanjan18 <- mean(jan18$rating),
           meanfeb18 <- mean(feb18$rating),
           meanmar18 <- mean(mar18$rating),
           meanapr18 <- mean(apr18$rating),
           meanmay18 <- mean(may18$rating),
           meanjun18 <- mean(jun18$rating),
           meanjul18 <- mean(jul18$rating),
           meanaug18 <- mean(aug18$rating),
           meansep18 <- mean(sep18$rating),
           meanokt18 <- mean(okt18$rating),
           meannov18 <- mean(nov18$rating))

means17<-c(meanjan17 <- mean(jan17$rating),
           meanfeb17 <- mean(feb17$rating),
           meanmar17 <- mean(mar17$rating),
           meanapr17 <- mean(apr17$rating),
           meanmay17 <- mean(may17$rating),
           meanjun17 <- mean(jun17$rating),
           meanjul17 <- mean(jul17$rating),
           meanaug17 <- mean(aug17$rating),
           meansep17 <- mean(sep17$rating),
           meanokt17 <- mean(okt17$rating),
           meannov17 <- mean(nov17$rating))