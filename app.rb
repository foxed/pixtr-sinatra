require 'sinatra'

GALLERIES = {
  cats: %w(colonel_meow.jpg grumpy_cat.png),
  dogs: %w(shibe.png)
}

get "/" do 
  erb :index
end

get "/galleries/:gallery_name" do 
  @title = params[:gallery_name]
  @images = GALLERIES[@title.to_sym]
  erb :gallery
end

