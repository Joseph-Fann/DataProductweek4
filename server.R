
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

        output$distPlot <- renderPlot({
                minX <- input$sliderX[1]
                maxX <- input$sliderX[2]
                minY <- input$sliderY[1]
                maxY <- input$sliderY[2]
                ggplot(data=mtcars, aes(x=hp, y=mpg, color=factor(am))) + 
                        geom_point(size=5)+
                        xlim(minX,maxX)+
                        ylim(minY,maxY)+
                        xlab("Horse Power") + ylab("Gas Milage / MPG")+
                        scale_color_manual(values=c(input$box1, input$box2),name="Transmission",labels=c("Automatic", "Manual"))
        
        })

})
