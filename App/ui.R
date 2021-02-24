ui <- fluidPage( 
  titlePanel(h1("Prediction Model for SCI Outcomes")), 
  sidebarPanel(tabPanel(h2("Variables for LEMS Prediction"),
    numericInput(inputId="HIPFLR04", label="Hip Flexion L2 (Right)", value=0, min=0, max=5),
    numericInput(inputId="HIPFLL04", label="Hip Flexion L2 (Left)", value=0, min=0, max=5),
    numericInput(inputId="KNEETR04", label="Knee Extension L3 (Right)", value=0, min=0, max=5),
    numericInput(inputId="KNEEXL04", label="Knee Extension L3 (Left)", value=0,min=0, max=5),
    numericInput(inputId="ANKPLL04", label="Ankle Plantar FLexion S1 (Left)", value=0, min=0, max=5))),
  mainPanel(h3("Predicted Lower MS Scores:"), 
             h4(textOutput('modelSummary_MS'))
    )
)
          
