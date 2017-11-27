class QuestionsControllerController < ApplicationController
  def answer
    @time = Time.new
    @your_message = params[:message]


    if @your_message != @your_message.upcase
      if @your_message.end_with? "?"
        @coach_answer = "Silly question, get dressed and go to work!"
      elsif @your_message == "I am going to work right now!"
        @coach_answer = "You make me proud!"
      else
        @coach_answer = "I don't care, get dressed and go to work!"
      end
    elsif @your_message == "I AM GOING TO WORK RIGHT NOW!"
      @coach_answer = "YOU MAKE ME PROUD!"
    else
      @coach_answer = "I can feel your motivation!"
    end
  end

  def ask
  end
end



# def coach_answer(your_message)
#   if your_message.end_with? "?"
#     return "Silly question, get dressed and go to work!"
#   elsif your_message == "I am going to work right now!"
#     return ""
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   if your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   else
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   end
# end

# require_relative "coach_answer"
# your_message = " "

# until your_message == "I AM GOING TO WORK RIGHT NOW!" || your_message == "I am going to work right now!"
#   your_message = gets.chomp
#   if your_message != your_message.upcase
#     puts coach_answer(your_message)
#   elsif your_message == your_message.upcase
#     puts coach_answer_enhanced(your_message)
#   end
# end
