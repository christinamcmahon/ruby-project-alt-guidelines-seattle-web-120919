class CommandLineInterface
  def run
    greet
    main_menu
  end

  def greet
    puts "Welcome to BoardGameNerd, the best resource for board game information in the world!"
    puts "Thinking of playing a board game? We can help you find an awesome game to play!"
    get_user_name
  end

  def get_user_name
    puts ""
    puts "What's your name: "
    name = gets.chomp
    puts ""
    User.find_or_create_by(name: name)
    puts "Nice to meet you, #{name}!"
    puts ""
  end

  def main_menu
    puts ""
    puts "------------------------"
    puts "Select a number from 1-6"
    puts "------------------------"
    puts ""
    puts "1. Search for a specific board game"
    puts "2. Write a board game review"
    puts "3. Read your board game reviews"
    puts "4. Edit one of your board game reviews"
    puts "5. Delete one of your board game reviews"
    puts "6. Exit"
    puts ""
    get_menu_input
  end

  def get_menu_input
    input = " "
    while input
      input = gets.chomp
      case input
      when "1"
        find_board_game_by_title
      when "2"
        write_board_game_review
      when "3"
        read_board_game_reviews
      when "4"
        edit_board_game_review
      when "5"
        delete_board_game_review
      when "6"
        puts "Thank you for using BoardGameNerd!"
        break
      else
        puts "That option does not exist. Please enter a number 1-6."
      end
    end
  end
end
