class FoundPetsController < ApplicationController
  def index
    filter = determine_filter
    pets = FoundPetsAPI.new.send(filter)
    @pets = pets.paginate(page: params[:page], per_page: 5)
    @select_options = [["Dogs", :dog], ["Cats", :cat], ["All", :pets]]
  end

  def show
    @pet = FoundPetsAPI.new.select(params[:id])
  end

  private
    def determine_filter
      if params[:filter]
        params[:filter].to_sym
      else
        :pets
      end
    end
end
