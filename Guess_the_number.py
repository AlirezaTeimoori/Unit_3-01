#Created by: Alireza Teimoori
#Created on: 3 Oct 2017
#Created for: ICS3UR-1
#Lesson: Unit 3-01
#This program is to learn if statments 
#The code shows "you won!"if the user's entry is 5


import ui

WINNING_NUMBER = 5

def check_button_touch_up_inside(sender):
    #Checks if the number user entres is the winning number or not
    
    #input
    user_number=int(view['user_number_textfield'].text)
    
    #process
    if user_number == WINNING_NUMBER:
        #output
        view['answer_lable'].text = "You won!!!"
view = ui.load_view()
view.present('sheet')
