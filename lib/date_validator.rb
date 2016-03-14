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
# This method should, in its final form, not do any output.

def valid_date?(month, day, year)
 m_valid = false
 d_valid = false
 y_valid = false
 leap_year = false
 days_per_month = 0


#testing to see if this is a leap_year, which is every 4th year, so divisible by 4 UNLESS it is divisible by 100 but not 400
def leap_year 
	if year % 4 == 0 && year % 400 == 0
		leap_year = true
	elsif year % 4 == 0 && year % 100 != 0
		leap_year = true
	else leap_year = false
	end
end



end
