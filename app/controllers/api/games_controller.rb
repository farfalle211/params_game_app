class Api::GamesController < ApplicationController
  def uppercase_action

    @uppercase = params[:name].upcase


    if @uppercase[0] == "A"
      @name_message = "Your name begins with the first letter of the alphabet!"
    end

    render 'upcase_view.json.jbuilder'
  end

  def string_guessing_action
    @guess = params[:guess].to_i
    correct_number = 42 #this is a local variable because you are not passing it to the view  

    if @guess > correct_number
        @message = "Guess Lower"
    elsif @guess < correct_number
      @message = "Guess Higher, you can do it."
    else
      @message = "You got it, good buddy"
    end


    render 'string_guessing_view.json.jbuilder'
  end
end
