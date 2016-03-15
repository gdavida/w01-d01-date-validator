# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#





#3-15 should have 4 small methods- date, month, year, leap_year

# This method should, in its final form, not do any output.


require "pry"

def is_leap_year_valid?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

def is_month_valid?(month)
  month >= 1 && month <= 12
end


def is_day_valid?(day, month, leap_year_validity)
	if month == 2 && leap_year_validity == false && day <=28
	elsif month == 2 && leap_year_validity == true && day <=29

	elsif month == (4 || 6 || 9 || 11) && day <= 30

	else day >= 1 && day <= 31
	end
end

binding.pry
