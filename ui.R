library(shiny)
shinyUI(
  fluidPage(
  titlePanel(""),
  sidebarLayout(
    sidebarPanel(
      fileInput('file0', 'Виберіть файл для завантаження',accept = c('.csv')
      ),
      radioButtons('sep', 'Виберіть розділювач',c(Кома=',',Крапка_з_комою=';'),',')
      ),
    mainPanel(
      plotOutput('scatterplot')
    )
  )
))