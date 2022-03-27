Rails.application.routes.draw do
  get '/' => "home#top"
  get '/keycheck' => "keycheck#keychecktop"
  get '/songlist' => "songlist#index"
end
