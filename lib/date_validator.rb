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

def valid_date?(month, day, year)
    leap_year = nil
    if year % 4 == 0 && year % 400 == 0
		leap_year = true
	elsif year % 4 == 0 && year % 100 != 0
		leap_year = true
	else leap_year = false
    end
    
    if day < 1 || day > 31
        return false
    elsif month < 1 || month > 12
        return false
    elsif year < 1880 || year > 2280
        return false
    elsif month == (4 || 6 || 9 || 11) && day > 30
        return false
    elsif month == 2 && day > 29
        return false
    elsif month == 2 && leap_year == false && day > 28
        return false
    else return true
    end

end
