class DirectorsController < ApplicationController

  def index 
    @list_of_directors = Director.all
    render ({ :template => "director_templates/index.html.erb" })
  end 
def eldest 

  render ({ :template => "director_templates/eldest.html.erb" })
end

  def youngest 

    render ({ :template => "director_templates/youngest.html.erb" })
end 

def director_details

  @id = params.fetch("id")
  @the_director = Director.where({ :id => @id }).first
  @filmography = Movie.where({ :director_id => @the_director.id })
  render ({ :template => "director_templates/show.html.erb" })
end

end 