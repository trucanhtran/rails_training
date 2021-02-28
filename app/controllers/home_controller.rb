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
      @contact_id = params[:contact_id]
    end

    def test
       @test = params[:id]
    end
end
