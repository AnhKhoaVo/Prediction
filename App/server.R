server <- function(input,output){
  data_ms <- reactive({
    data.frame(
      HIPFLR04 = input$HIPFLR04,
      HIPFLL04 = input$HIPFLL04,
      KNEETR04 = input$KNEETR04,
      KNEEXL04 = input$KNEEXL04,
      ANKPLL04 = input$ANKPLL04
    )
  })
  
  
  pred_ms <- reactive({
    MS_pred <- predict(lm_model, data_ms())
  })
  

  output$modelSummary_MS <- renderText(pred_ms())
}

