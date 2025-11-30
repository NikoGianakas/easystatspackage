library(shiny)
library(easystats)

ui <- fluidPage(
  titlePanel("Study Hours and Grades"),

  sidebarLayout(
    sidebarPanel(
      selectInput("xcol", "X variable", choices = names(study_hours)),
      selectInput("ycol", "Y variable", choices = names(study_hours))
    ),
    mainPanel(
      plotOutput("scatter"),
      verbatimTextOutput("summary")
    )
  )
)

server <- function(input, output) {

  output$scatter <- renderPlot({
    x <- study_hours[[input$xcol]]
    y <- study_hours[[input$ycol]]
    plot_relationship(x, y)
  })

  output$summary <- renderPrint({
    summarize_vector(study_hours[[input$xcol]])
  })
}

shinyApp(ui, server)
