shinyUI(fluidPage(
  
  # Application title
  titlePanel("Grade Calculator for Econ 215 section 04"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput("Quizzes", 
                   label = "Insert your total grade for quizzes here. Assume a grade for quiz 11", 
                   value = 10, min = 0, max = 12.5),
      
      numericInput("ExtraCredit", 
                   label = "Insert your extrat credit grade here", 
                   value = 2, min = 0, max = 2),
      
      numericInput("Homework", 
                   label = "Insert your total grade for homework here. Assume a grade for homework 6", 
                   value = 80, min = 0, max = 120),
      
      numericInput("Exam1_2", 
                   label = "Insert your total grade for exam 1 and 2 here", 
                   value = 34, min = 0, max = 40),
      
      numericInput("finalExam", 
                   label = "Insert your projected grade for the final here", 
                   value = 16, min = 0, max = 20),
      
      numericInput("Readings", 
                   label = "Insert your total grade for the 5 readings here. Assume a grade for reading 5", 
                   value = 9, min = 0, max = 10),
      
      numericInput("Attendance", 
                   label = "Insert your attendance grade here. take 1.5 off for every missed class (up to 7.5)", 
                   value = 7.5, min = 0, max = 7.5),
      
      numericInput("TermPaper", 
                   label = "Insert your projected grade for your term paper", 
                   value = 17, min = 0, max = 20)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h1(textOutput("out"))
    )
  )
))