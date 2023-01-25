class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================
  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome_r = "tied"
    elsif @comp_move == "paper"
      @outcome_r = "lost"
    elsif @comp_move == "scissors"
      @outcome_r = "won"
    end

    render({ :template => "game_templates/user_rock.html.erb"})
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome_p = "won"
    elsif @comp_move == "paper"
      @outcome_p = "tied"
    elsif @comp_move == "scissors"
      @outcome_p = "lost"
    end
    
    render({ :template => "game_templates/user_paper.html.erb"})
  end

end
