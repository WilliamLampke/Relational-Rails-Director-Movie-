require 'rails_helper'

RSpec.describe 'the directors show page' do
    it 'displays a directors name' do 
        director = Director.create(name: "Alfred Hitchcock" hometown: "Leytonstone, UK" birthyear: 1889 alive: false)
        visit "/directors/#{director.id}"
    end 
end