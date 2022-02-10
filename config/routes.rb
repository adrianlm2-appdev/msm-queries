Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/:id", { :controller => "directors", :action => "director_details" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "movie_details" })
end
