library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  
  output$out <- renderPrint({ 
    TotalGrade  <- input$Quizzes + input$ExtraCredit + (input$Homework/120)*25 + (input$Exam1_2/40)*15 + 
      input$finalExam + (input$Readings/25)*10 + input$Attendance + input$TermPaper
    ## Assign Letter Grade ###
    LetterGrade <- "NA"
    if (TotalGrade < 60) {LetterGrade= "F"} else 
      if (TotalGrade < 63) {LetterGrade= "D-"} else 
        if (TotalGrade < 67) {LetterGrade= "D"} else 
          if (TotalGrade < 70) {LetterGrade= "D+"} else 
            if (TotalGrade < 73) {LetterGrade= "C-"} else
              if (TotalGrade < 77) {LetterGrade= "C"} else
                if (TotalGrade < 80) {LetterGrade= "C+"} else
                  if (TotalGrade < 83) {LetterGrade= "B-"} else 
                    if (TotalGrade < 87) {LetterGrade= "B"} else
                      if (TotalGrade < 90) {LetterGrade= "B+"} else
                        if (TotalGrade < 93) {LetterGrade= "A-"} else
                          if (TotalGrade < 97) {LetterGrade= "A"} else  {LetterGrade= "A+"}
    
    cat("Your projected numerical grade is:", TotalGrade, ".", "\n",
                "Your projected letter grade is:", LetterGrade)
  })
})