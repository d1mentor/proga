class IndexController < ApplicationController
  def index
    @plus_all = plus_all
    @minus_all = minus_all
    @budget = @plus_all - @minus_all
  end

  private

  def plus_all
    plus = 0
    if !Payout.all.nil?
    Payout.all.each do |payout|
      plus += payout.size
    end
    end  
    plus
  end  

  def minus_all
    minus = 0
      Salary.all.each do |salary|
        if salary.id != 1
          minus += salary.size
        end 
      end

      Instrument.all.each do |instrument|
        minus += instrument.price
      end   
    minus
  end

end
