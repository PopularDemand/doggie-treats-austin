class FoundPetsController < ApplicationController
  def index
    @pets = FoundPetsAPI.new.pets.paginate(page: params[:page], per_page: 5)
  end
end
