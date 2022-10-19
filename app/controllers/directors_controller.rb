class DirectorsController < ApplicationController
    def index
        @directors = Director.all
    end
    def new

    end
    def create
      
        director = Director.new({
            name: params[:director][:name],
            hometown: params[:director][:hometown],
            birthyear: params[:director][:birthyear],
            alive: params[:director][:alive]
        })
        director.save
        redirect_to '/directors'
    end
    def show
        @director = Director.find(params[:id])
    end
    def edit
        @director = Director.find(params[:id])
    end
    def update
        director = Director.find(params[:id])
        director.update({
          name: params[:director][:name],
          hometown: params[:director][:hometown],
          birthyear: params[:director][:birthyear],
          alive: params[:director][:alive]
          })
        director.save
        redirect_to "/directors/#{director.id}"
      end
    def destroy
        Director.destroy(params[:id])
        redirect_to '/directors'
      end
end 