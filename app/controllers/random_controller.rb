class RandomController < ApplicationController

  def home

  end

  def first
    @names = Firstname.order("RANDOM()").limit(10)
  end

  def last
    @names = Surname.order("RANDOM()").limit(10)
  end

  def full
    firstnames = Firstname.order("RANDOM()").limit(10)
    surnames = Surname.order("RANDOM()").limit(10)
    
    i = 0
    @names = []
    while i < 10
      @names[i] = "#{firstnames[i][:body]} #{surnames[i][:body]}"
      i += 1
    end
    
  end

end
