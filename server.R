library(shiny)

M <- function(id1,id2,id3,radio){
p <- id1-id2
i <- (id3/100)/12
 r <- radio 
if (radio == "1") 
{n <- 15 * 12}
if (radio == "2") 
{n <- 20 * 12} 
if (radio == "3")
{n <- 30 * 12}
p * ( i / (1-(1/(1 + i)^n)))


}
shinyServer(
function(input,output)
{
 output$oprincipal <- reactive({input$id1-input$id2})
 output$omortgage <- renderPrint({M(input$id1,input$id2,input$id3,input$radio)})
}

)