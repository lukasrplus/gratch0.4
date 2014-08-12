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
            user.name = auth["info"]["name"]
            user.image = auth["info"]["image"]
            user.city = auth["info_field"]

          end

    end


  end

end
