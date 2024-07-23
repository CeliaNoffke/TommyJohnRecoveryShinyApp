setwd("C:\\Users\\cnoffke\\OneDrive - Benedictine College\\Desktop\\Data Visulization SU24\\Final for Git")

library(shiny)
library(UsingR)


shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$Age})
    output$inputValue2 <- renderPrint({input$Level})
    output$prediction <- renderPrint({
      tj %>% 
        filter(Age == input$Age) %>% 
        filter(Level == input$Level) %>% 
        filter(Recovery.Time..months. > 0) %>% 
        summarise(mean = mean(Recovery.Time..months., na.rm = TRUE))
      })
  }
)
#shinyApp(ui = ui, server = server)
