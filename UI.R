library(shiny)
shinyUI(pageWithSidebar(
 headerPanel("Home Monthly Mortgage Calculation"),
sidebarPanel(
 
 numericInput('id1','HomePrice$',200000,min=0,max=2000000,step=10000),
 numericInput('id2','DownPayment$',0,min=,max=200000,step=5000),
 numericInput('id3','InterestRate%',2,min=1,max=20,step=0.5),
 radioButtons("radio", label = h3("Loan Terms"),
        choices = list("15 Years" = 1, "20 Years" = 2,
                       "30 Years" = 3),selected = 1), 
submitButton("Submit"),

h5(" Help:"),
h6(" Type HomePrice, if you have paid any downpayment, InterestRate and choose the term"),
h6(" Click submit Button to get the result"),
h6(" HomePrice$ accepts numeric value and control box can be incremented by 10000"),
h6(" DownPayment$ accepts numeric value and control box can be incremented by 5000"),
h6(" InterestRate$ accepts numeric value and control box can be incremented by 0.5")


),
mainPanel(
h3("Result"),
h4("Loan Amount:"),
verbatimTextOutput("oprincipal"),
h4("your Monthly Payment:"),
verbatimTextOutput("omortgage")


)
))