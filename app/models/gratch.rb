class Gratch < ActiveRecord::Base


def guests

  showups = Showup.where(:gratch_id => self.id)
  user_array = Array.new

  showups.each do |s|
    user_array << s.user_id
  end

  return user_array

end

end
