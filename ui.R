suppressWarnings(library(shiny)) 
  
shinyUI(
        fluidPage
        (    
            titlePanel("Word prediction"), 
            fluidRow(HTML("<strong>By Ramya Rao</strong>") ), 
            
              
            
        fluidRow( p("\n") ), 
        sidebarLayout
        ( 
           sidebarPanel
           ( 
             fluidRow( 
               
               p("This word prediction application uses N-Gram Back Off model to
                        predict next word for a given user input. the last n words of the
                        user input are compared to find the next word, if not found then n is 
                 decremented by one and the process is repeated. If no words are found, then the 
                 most frequently used word in the data set is returned to the user."
               )
             )
             
            ), 
         mainPanel
            ( 
              fluidRow(HTML("Enter an sentence. Press \"Predict\" button to predict the next word") 
              ), 
              textInput("inputString", "Sentence",value = "",width="100%"), 
              submitButton("Predict") ,
             h4("Predicted Word"), 
             verbatimTextOutput("prediction"), 
             textOutput('text1'), 
             textOutput('text2') 
            ) 
        ) 
      )
)


