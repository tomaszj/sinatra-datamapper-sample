require 'rubygems'
require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/dev.db")

class Article
  include DataMapper::Resource
  
  property :id, Serial
  property :title, String
  property :content, Text
end

DataMapper.auto_upgrade!

get '/' do
  erb :index
end

get '/articles' do
  @articles = Article.all
  erb :'articles/index'
end

get '/articles/new' do
  erb :'articles/new'
end

get '/articles/:id' do |id|
  @article = Article.get!(id)
  erb :'articles/show'
end

post '/articles' do
  article = Article.new(params[:article])
  
  if article.save
    redirect '/articles'
  else
    redirect '/articles/new'
  end
  
  
end
