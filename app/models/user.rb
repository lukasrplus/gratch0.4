class User < ActiveRecord::Base



  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|

          if auth["provider"] == "twitter"
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.name = auth["info"]["nickname"]
            user.image = auth["info"]["image"]
          end

          if auth["provider"] == "facebook"
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.name = auth.extra.raw_info.first_name
            user.gender = auth.extra.raw_info.gender
            # user.city = auth.extra.raw_info.location.name
            user.image = auth["info"]["image"]
            user.oauth_token = auth["credentials"]["token"]

          end

    end


  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(oauth_token)
  end

  def facebook_friends_array
    friends_array = Array.new
    friends_collection = self.facebook.get_connections('me', 'friends')
    friends_collection.each do |c|
      friends_array << c["name"]
    end
    return friends_array
  end

  def facebook_friends_ids_array
    friends_ids_array = Array.new
    friends_collection = self.facebook.get_connections('me', 'friends')
    friends_collection.each do |c|
      friends_ids_array << c["id"]
    end
    return friends_ids_array
  end

end
