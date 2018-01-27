class GreetingsController < ApplicationController
  def hello
        timeget=Time.new
	yearNow =timeget.year.to_s
	monthNow =timeget.month.to_s
	dayNow =timeget.day.to_s
	hourNow =timeget.hour.to_s
	minuteNow =timeget.min.to_s
	secondNow =timeget.sec.to_s
	@timenow=yearNow+'年'+monthNow+'月'+dayNow+'日'+' '+hourNow+':'+minuteNow+':'+secondNow
	@message = "Hello, How Are You Today?"
  end

  def bye
  end
end    

