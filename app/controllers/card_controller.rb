class CardController < ApplicationController
  def new
    @age = params["age"]
    @username = params["a123"]
    puts "---------------"
    puts @age
    puts @username
    puts "---------------"
  end

  def create
    @last_name = params[:last_name]
    @first_name = params[:first_name]
    @age = params[:age]
    @email = params[:email]
    @desc = params[:desc]
    @phone = params[:phone]
    puts "----------"
    puts @last_name
    puts @first_name
    puts @age
    puts "äge: #{@age} -- firstName: #{@first_name}"
    puts @email
    puts "----------"
  end

  def edit
  end

  def update
  end
end
