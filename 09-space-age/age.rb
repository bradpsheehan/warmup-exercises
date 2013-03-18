require 'date'


  birthdate = [1977, 10, 30]

  birth_in_seconds = Date.new(*birthdate).to_time.to_i
  today_in_seconds = Date.today.to_time.to_i

  age = today_in_seconds - birth_in_seconds


  def earth_years(age_in_seconds)
    age_in_seconds / 31557600
  end


  puts earth_years(age)
