class IndexController < ApplicationController
  def index
    @plus_all = plus_all
    @minus_all = minus_all
    @budget = @plus_all - @minus_all
    @dohods = Payout.all
    @investments = Investment.all
    @rashods = { :salaries => Salary.where(id: 2..99999), :instruments => Instrument.all, :materials => LocationMaterial.all, :expenditures => Expenditure.all }
  end

  private

  def plus_all
    plus = 0
    if !Payout.all.nil?
    Payout.all.each do |payout|
      plus += payout.size
    end
    end 

    if !Investment.all.nil?
    Investment.all.each do |inv|
      plus += inv.size
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

      Expenditure.all.each do |exp|
        minus += exp.price
      end

      LocationMaterial.all.each do |location_material|
        minus += location_material.count*location_material.price
      end   
    minus
  end

end
