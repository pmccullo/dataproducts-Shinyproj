library(shiny)

# Rely on the 'WorldPhones' dataset in the datasets

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Windchill Calculator"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        sliderInput("wind",
                    "Enter windspeed in miles per hour:",
                    min = 0,
                    max = 50,
                    value = 5),
        
        numericInput("temp", "Enter temperature in Fahrenheit", 25,
                     min = -25, max = 50, step = 5),
        
        submitButton("Submit")

      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("tempplot"), textOutput("text5"),
        verbatimTextOutput("text1"),verbatimTextOutput("text2")
      )
      
    ))
  )