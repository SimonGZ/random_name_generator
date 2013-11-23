class RandomController < ApplicationController

  def home

  end

  def generate
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
  end

  def first
    @names = Firstname.random_names(params[:rank].to_sym, params[:gender].to_sym, params[:limit])
  end

  def last
    @names = Surname.random_names(params[:rank].to_sym, params[:race].to_sym, params[:limit])
  end

  def full
    firstnames = first
    surnames = last
    
    i = 0
    @names = []
    while i < surnames.size
      @names[i] = [firstnames[i], surnames[i]]
      i += 1
    end  
  end

end
