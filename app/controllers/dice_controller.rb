class DiceController < ApplicationController

  def infinite
    @num_dice = params.fetch("num_dice").to_i
    @num_sides = params.fetch("num_sides").to_i
    @array_of_rolls = Array.new

    @num_dice.times do
      @array_of_rolls.push(rand(@num_sides) + 1)
    end

    render({:template => "dice_templates/infinite.html.erb"})
  end  

 end
