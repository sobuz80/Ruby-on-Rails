# app/controllers/home_controller.rb
class HomeController < ApplicationController
    before_action :set_dummy_items, only: [:index, :show]
  
    def index
      # @dummy_items is already set in the before_action
    end
  
    def show
      @item = @dummy_items.find { |item| item[:id] == params[:id].to_i }
    end
  
    private
  
    def set_dummy_items
      @dummy_items = [
        { id: 1, title: 'Product 1', description: 'Description for Product 1', image_url: 'https://placekitten.com/200/300', price: 19.99, quantity: 10 },
        { id: 2, title: 'Product 2', description: 'Description for Product 2', image_url: 'https://placekitten.com/200/301', price: 29.99, quantity: 5 },
        { id: 3, title: 'Product 3', description: 'Description for Product 3', image_url: 'https://placekitten.com/201/300', price: 39.99, quantity: 8 },
        { id: 4, title: 'Product 3', description: 'Description for Product 3', image_url: 'https://placekitten.com/201/300', price: 39.99, quantity: 8 },
        { id: 5, title: 'Product 3', description: 'Description for Product 3', image_url: 'https://placekitten.com/201/300', price: 39.99, quantity: 8 }
      ]
    end
  end
  