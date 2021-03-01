class HomeController < ApplicationController
    def index
    end

    def contact
      @contact_id = params[:contact_id]
      @contact1_id = params[:contact1_id]
      @contact2_id = params[:contact2_id]
    end

    def profile
      @profile_id = params[:profile_id]
    end

    def contact123
      puts "------"
      puts params
      puts "--------"
      @contact_id = params[:contact_id]
      @name = params[:name1231231]
      @password = params[:password123]

    end

    def test
       @test = params[:id]
       @member= params[:member_id]
    end

    def review
      @review = params[:review_id]
    end

    def user
      @user_id = params[:user_id]
    end


end
