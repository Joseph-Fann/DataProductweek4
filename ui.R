
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
        # Application title
        titlePanel("MTCars"),
        
        # Sidebar with a slider input for number of bins
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderX", "Pick Min an Max Horsepower",
                                    0, 400, value = c(0, 400)),
                        "This will change the min and max of the x-axis of the table",
                        sliderInput("sliderY", "Pick Min and Max MPG values",
                                    0, 40, value = c(0, 40)),
                        "This will change the min and max of the y-axis of the table",
                        textInput("box1", "Enter Color for Automatic", value = "red"),
                        textInput("box2", "Enter Color for Manual", value = "blue"),
                        "  ",
                        "users may enter any color for the table, default to red and blue. Some other example include yellow, green, purple, cyan",
                        "list of available colors can be found here http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf"
                        
                ),
        # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("distPlot")
        )
)
))
