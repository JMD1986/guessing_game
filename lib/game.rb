class GuessingGame

  def initialize
    @number_of_guesses = 0
    @guessed_numbers = Array.new
    @winning_number = rand(1..100)
    greetings

  end
  def greetings
    puts "

      '''''' ;;;;;;;;;;;;;;;;;;;; ''''''
      '''''' ;;;;;;;:    :;;;;;;; ''''''
      '''''' ;;;;;;   ``   ;;;;;; ''''''
      '''''' ;;;;:    ;;    :;;;; ''''''
      '''''' ;;;;     ;;     ;;;; ''''''
      '''''' ;;;      ;;      ;;; ''''''
      '''''' ;;;:;;;;;;;;;;;;:;;; ''''''
      '''''' ;;;  ;;;;;;;;;;  ;;; ''''''
      '''''' ;;:   ;;;;;;;;   :;; ''''''
      '''''' ;;;    ;;;;;;    ;;; ''''''
      '''''' ;;;    ;;;;;;    ;;; ''''''
      '''''' ;;;    ;;;;;;    ;;; ''''''
      '''''' ;;;;  ;;`  `;;  ;;;; ''''''
      '''''' ;;;;, ;      ; ,;;;; ''''''
      '''''' ;;;;;:        :;;;;; ''''''
      '''''' ;;;;;;;.    .;;;;;;; ''''''
      '''''' ;;;;;;;;;;;;;;;;;;;; ''''''


    Greetings from beautiful North Korea.
    I am a program made by glorious leader.
    I am going to choose a number between 1 and 100.
    you have five chances to guess it before I blow up wyoming.
    godspeed."
    puts "\n"
  end
  def start
    greetings
    loop do
      puts "------------------------------------------------------"
      puts "you have used #{@number_of_guesses} out of 5 guesses"
      puts "------------------------------------------------------"
      print "what is your guess?: "
      player_guess_num = gets.chomp.to_i
      puts "------------------------------------------------------"
      if @winning_number == player_guess_num
        puts "You have saved wyoming from the bombs of my glorious
        leader. It only took you #{@number_of_guesses} guesses"
      elsif @guessed_numbers.include?(player_guess_num)
        puts "you already said that number"
      elsif player_guess_num > 100 || player_guess_num < 1
        puts "that's not even in the range..."
      elsif player_guess_num > @winning_number
        puts "wrong guess! you are too high!"
      elsif player_guess_num < @winning_number
        puts "Nope! You are too low."
      end
      @guessed_numbers << player_guess_num
      @number_of_guesses +=1
      if @number_of_guesses == 5
        puts "
                                          .+m-
                                  `/-`   `smMs
                                .ohyyhhydmNmm+
                               /dsydmmdddmdmMM.
                               -mmmdyyyyhmNMMmy+.
                            -odmdhyhhhhdNMMMdyyyys
                         -+dmdhhyyyhhdNMMMMhyyyyo`
                      -odmdyyhyyyhhdmNMMMNsoooo:
                   .odmmhhyyssyyhddNMMMMN-
                `+dNmhhyysssyhhhmmMMMMMd.
              :yNmdhyyssssyyyddmNMMMMMs
           .+mNddyysssossyyddmNNMMMMM+
         .yNmdhyss+o+ossyhhdmNMMMMMm-
       .yddyyss+/+/+ooyyhdmNMMMMMMh`
     `:-`     `.:/++sshddNMMMMMMM+
    :ysys+/::.`   ./shdmMMMMMMMm-
   oMmho+///:///.   -hNMMMMMMMs`
  sNms+/::--:/+/++.  -NMMMMMm:
 smho/:-```.://+shd+  oMMMMs`
:-`       `-:/shmNMN` :MMd-
sso/`     `:ohmNMMMM. om:
mNs:` `..  `yNMMMMMd-/:
yMs/-:/oy/  oMMMMMm+.
`hmhdmNMMs  hMMdo-
  :sdmMMm-./o:`

        the number was #{@winning_number}
            you lose
     say goodbye to wyoming
        "
      end
      break if @number_of_guesses == 5
  end
end
end
guessinggamenew=GuessingGame.new
guessinggamenew.start
