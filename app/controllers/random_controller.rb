class RandomController < ApplicationController

  def home

  end

  def generate
    if params[:limit].to_i > 50
      params[:limit] = '50'
    end

    case params[:nametype]
    when "first"
      first
      render "first"
    when "last"
      last
      render "last"
    when "full"
      full
      render "full"
    else
      redirect_to root_url
    end
#    generate_names(params[:nametype],params[:gender],params[:limit])
  end

  def first
    @names = Firstname.where(:gender => params[:gender]).order("RANDOM()").limit(params[:limit])
#    @names = Firstname.where(:gender => 'Male').where("rank < ?", 300).order("RANDOM()").limit(20)
  end

  def last
#    @names = Surname.order("RANDOM()").limit(params[:limit])
    @names = Surname.random_names
  end

  def full
    firstnames = first
    surnames = last
 
    # This is returning an array of activerecord objects. Need to think about how to get the strings and deal with that. I think I'm right to get rid of things and turn them into arrays, but maybe there's something to be done with creating a hash. Simpler solution may be to just test whether firstnames returns the right number of results and cancel if it doesn't.
    
    i = 0
    @names = []
    while i < params[:limit].to_i
      @names[i] = "#{firstnames[i][:body]} #{surnames[i][:body]}"
      i += 1
    end  
  end

end
