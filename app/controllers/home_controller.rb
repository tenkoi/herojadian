class HomeController < ApplicationController
  before_action :common_content, :only => [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title =Faker::Job.title
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize

    @brand_num = rand(1..1000)
    @set_number = rand(1..4)
    @bg = rand(1..2)

    #randomly Pick Our avatar
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @ser = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end

# Randomly PIck our Background
    if @bg == 1
      @background = "bg1"
    else
      @background = "bg2"
    end

    @avatar = Faker::Avatar.image(@brand_num, "300x300", "png", @set, @background)

  end

  def index

  end

  def team
  end

end
