class GuessingGame

  def initialize
    @number_of_guesses = 1
    @guessed_numbers = Array.new
    @winning_number = rand(1..100)
  end

  def start
    puts "Greetings from beautiful North Korea.
    I am a program made by glorious leader.
    I am going to choose a number between 1 and 100.
    you have five chances to guess it before I blow up wyoming.
    godspeed."
    loop do
      puts "you have used #{@number_of_guesses} out of 5 guesses"
      print "what is your guess?: "
      player_guess_num = gets.chomp.to_i
      if @winning_number == player_guess_num
        puts "You have saved wyoming from the bombs of my glorious
        leader. It only took you #{@number_of_guesses} guesses"
      elsif @guessed_numbers.include?(player_guess_num)
        puts "you already said that number"
      elsif
        puts "wrong guess! you must really hate wyoming"
      end
      @guessed_numbers << player_guess_num
      @number_of_guesses +=1
      if @number_of_guesses == 5
        puts "so sorry. you lose."
      end
      break if @number_of_guesses == 5
  end
end
end
guessinggamenew=GuessingGame.new
guessinggamenew.start
