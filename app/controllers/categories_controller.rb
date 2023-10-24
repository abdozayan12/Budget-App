class CategoriesController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def index
    end
  
    def home
      @categories = Group.all
    end
  
    def new
    end
  
    def def create
    end
end
