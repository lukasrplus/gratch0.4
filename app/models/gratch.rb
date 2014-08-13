class Gratch < ActiveRecord::Base


def guests

  showups = Showup.where(:gratch_id => self.id)
  user_array = Array.new

  showups.each do |s|
    user_array << s.user_id
  end

  return user_array

end

def gender_array

  user_array = self.guests
  gender_array = Array.new

  user_array.each do |u|
    user = User.find_by(:id => u)
    gender_array << user.gender
  end

  return gender_array

end

def gender_ratio
  gender_array = self.gender_array
  female_array = Array.new
  gender_array.each do |g|
    if g == "female"
      female_array << g
    end
  end
  number_of_girls = female_array.count*100
  number_of_guests = gender_array.count*100
  number_of_boys = (number_of_guests - number_of_girls)*100
  return number_of_boys/number_of_guests

end

def single_array
  user_array = self.guests
  single_array = Array.new

  user_array.each do |u|
    user = User.find_by(:id => u)
    single_array << user.single
  end

  return single_array
end

def single_ratio

  single_array = self.single_array
  taken_array = single_array.select { |status| status == false }
  number_taken = taken_array.count*100
  total_number = single_array.count*100
  number_single = (total_number - number_taken)*100
  ratio = number_single/total_number
  return ratio

end

end
