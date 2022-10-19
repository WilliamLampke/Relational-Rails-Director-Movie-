class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    def new

    end
    def create
      
        movie = Movie.new({
            movietitle: params[:movie][:movietitle],
            genre: params[:movie][:genre],
            boxoffice: params[:movie][:boxoffice],
            profitable: params[:movie][:profitable]
        })
        movie.save
        redirect_to '/movies'
    end
    def show
        @movie = Movie.find(params[:id])
    end
    def edit
        @movie = Movie.find(params[:id])
    end
    def update
        movie = Movie.find(params[:id])
        movie.update({
          movietitle: params[:movie][:movietitle],
          genre: params[:movie][:genre],
          boxoffice: params[:movie][:boxoffice],
          profitable: params[:movie][:profitable]
          })
        movie.save
        redirect_to "/movies/#{movie.id}"
      end
    def destroy
        Movie.destroy(params[:id])
        redirect_to '/movies'
      end
end 