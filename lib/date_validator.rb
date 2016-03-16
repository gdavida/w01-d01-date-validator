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


#
#		------description------
#
#		Given a year, check to see if year is valid within the span 1880 to 2280, inclusive
#
#		------parameters------
#
#		year: integer representing the year
#
#		------what gets returned------
#
#		returns boolean as to whether or not the year entered is valid
#
#
def is_year_valid?(year)
  year >= 1880 && year <= 2280
end




#
#		------description------
#
#		Given a month, check to see if it correlates to an actual month, that is 1-12 inclusive
#
#		------parameters------
#
#		month: integer representing the number of one of the 12 months
#
#		------what gets returned------
#
#		returns boolean as to whether or not the month entered is valid
#
#
def is_month_valid?(month)
  month >= 1 && month <= 12
end

#
#		------description------
#
#		Given a year, check to see how many days are in February for that particular year, accounting for leap years.
#
#		------parameters------
#
#		year: integer representing the year
#
#		------what gets returned------
#
#		returns integer representing the number of days in the February for the particular year entered
#
#

def days_in_february(year)
  if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  	29
  else 28
  end
end

#
#		------description------
#
#		Given a month and a year, calculate how many days are in that particular month
#
#		------parameters------
#
#		month: integer representing the month
# 	year: integer representing the year
#
#		------what gets returned------
#
#		returns integer representing the maximum number of days possible for a given month in a given year
#
#

def figure_days_in_month(month, year)
	if month == 2 
		days_in_february(year)
	elsif month == (4 || 6 || 9 || 11)
		30
	else 31
	end
end

#
#		------description------
#
#		Given a day and the possible days in a month, check to see whether the day is possibly valid
#
#		------parameters------
#
#		day: integer representing the day
# 	days_per_month : integer representing the maximum number of days possible in a given month
#
#		------what gets returned------
#
#		returns boolean as to whether or not the day entered is valid
#
#

def is_day_valid?(day, days_per_month)
	day >= 1 && day <= days_per_month 
end

#
#		------description------
#
#		Given a date, as month, day, and year, check to see whether the date is possibly valid
#
#		------parameters------
#
#		day: integer representing the day
#		month: integer representing the month
#		year: integer representing the year
#
#		------what gets returned------
#
#		returns boolean as to whether or not the date entered was valid
#
#

def valid_date?(month, day, year)
  month_validity = is_month_valid?(month)
  year_validity = is_year_valid?(year)
	days_per_month = figure_days_in_month(month, year)
  day_validity =  is_day_valid?(day, days_per_month)
	
  month_validity && day_validity && year_validity
end
