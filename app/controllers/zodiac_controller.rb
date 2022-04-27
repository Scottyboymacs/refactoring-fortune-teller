class ZodiacController < ApplicationController
  def zodiac
    zodiac_symbol = params.fetch("zodiac_symbol").to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(zodiac_symbol)
    @name = this_zodiac.fetch(:name)
    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Zodiac.lucky_numbers


    render({ :template => "zodiac_templates/zodiac.html.erb"})
  end
end