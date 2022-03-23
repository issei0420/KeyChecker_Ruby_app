Rails.application.routes.draw do
  get '/' => "home#top"
  get '/keycheck' => "keycheck#top"
  get '/songlist' => "songlist#index"
end
