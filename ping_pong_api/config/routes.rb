Rails.application.routes.draw do

  # Creating a version 1 namespace, setting the groundwork for future versions 
  namespace :v1 do

    # Setting up RESTful routes, excluding unnecessary routes
    resources :ping_pong_scores, except: [:new, :edit]

  end

end
