library(ggplot2)
options(shiny.maxRequestSize = 3*1024^2)
shinyServer(function(input,output){
  output$scatterplot<-renderPlot({
    scatterfile<-input$file0
    if(is.null(scatterfile))
      return(NULL)
    scfile<-read.csv(scatterfile$datapath,header = TRUE,sep=input$sep,
     quote = input$quote)
    react<-reactive({
      scfile<-scfile
      scfile
    })
    p<-ggplot(react(),aes(x=X,y=Y))+geom_point(shape=1)+geom_smooth(method=lm,se=TRUE)
    p
  })
})