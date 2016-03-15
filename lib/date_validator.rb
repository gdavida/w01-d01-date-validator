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
 leap_year_valid = false
 days_per_month = 0


	#testing to see if this is a leap_year, which is every 4th year, so divisible by 4 UNLESS it is divisible by 100 but not 400
	def leap_year 
		if year % 4 == 0 && year % 400 == 0
			leap_year_valid = true
		elsif year % 4 == 0 && year % 100 != 0
			leap_year_valid = true
		else leap_year_valid = false
		end
	end

#set the valid number of days per that particular month
if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
	days_per_month = 31
elsif  month == 4 || month == 6 || month == 8 || month == 11
	days_per_month = 30
elsif month == 2 && leap_year == true
	days_per_month = 29
else days_per_month = 28

#check if the month is between 1 and 12, inclusive
if month >= 1 && month <= 12
	m_valid = true
else return false
end

#check if year is between 1880 and 2280 inclusive
if year >= 1880 && year <= 2280
	y_valid = true
else return false
end

#check if date is valid
def check_day(date)
	if date >= 1 && date <= days_per_month
		return true
	else return false
	end
end
	

end
