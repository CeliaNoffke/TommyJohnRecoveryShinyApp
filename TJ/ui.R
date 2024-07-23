setwd("C:\\Users\\cnoffke\\OneDrive - Benedictine College\\Desktop\\Data Visulization SU24\\Final for Git")

library(shiny)
library(dplyr)

tj <- read.csv("TJ Surg.csv")

shinyUI(pageWithSidebar(
  headerPanel("Tommy John Surgery Recovery Time"),
  sidebarPanel(
    numericInput("Age", "Age", 17, min=17, max = 47, step=1),
    radioButtons("Level","League Level",
                       choices = c("MLB"= "MLB",
                         "AAA" = "AAA",
                         "AA" = "AA",
                         "A+" = "A+",
                         "A" = "A",
                         "A-" = "A-",
                         "Rookie" = "Rk",
                         "College" = "Coll",
                         "High School" = "HS"))
  ),
  mainPanel(
    h3('Results of predition'),
    h4('You entered an age of'),
    verbatimTextOutput("inputValue1"),
    h4('and a league level of'),
    verbatimTextOutput("inputValue2"),
    h4('Which resulted in a prediction of',),
    verbatimTextOutput("prediction"),
    h4('average recovery months for age and playing level')
  )
  )
)



