# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





user = User.create([
                    {
                      name: 'Paul', image: 'https://s3.amazonaws.com/uifaces/faces/twitter/suprb/128.jpg',
                      gender: 'male', fb_url: 'https://www.facebook.com/paul.lehner.9', single: "false", dob: Date.new(1983,8,13)
                    },

                    {
                      name: 'Philipp', image: 'https://s3.amazonaws.com/uifaces/faces/twitter/dannpetty/128.jpg',
                      gender: 'male', fb_url: 'https://www.facebook.com/paul.lehner.9', single: "false", dob: Date.new(1987,8,13)
                    },

                    {
                      name: 'Johannes', image: 'https://s3.amazonaws.com/uifaces/faces/twitter/chandlervdw/128.jpg',
                      gender: 'male', fb_url: 'https://www.facebook.com/paul.lehner.9', single: "true", dob: Date.new(1993,8,13)
                    },

                    {
                      name: 'Isabella', image: 'https://s3.amazonaws.com/uifaces/faces/twitter/kfriedson/128.jpg',
                      gender: 'female', fb_url: 'https://www.facebook.com/paul.lehner.9', single: "true", dob: Date.new(1991,8,13)
                    },

                    {
                      name: 'Lukas', image: 'https://s3.amazonaws.com/uifaces/faces/twitter/flashmurphy/128.jpg',
                      gender: 'male', fb_url: 'https://www.facebook.com/paul.lehner.9', single: "true", dob: Date.new(1983,8,13)
                    }


                    ])

gratches = Gratch.create([
  { host_id: '1', datetime: DateTime.new(2014,8,15,7,0,0), city: 'Vienna', party_type: 'PREPARTY', open: 'true'
  },
  { host_id: '4', datetime: DateTime.new(2014,8,16,7,0,0), city: 'Salzburg', party_type: 'HOUSEPARTY', open: 'true'
  },
  { host_id: '2', datetime: DateTime.new(2014,8,17,7,0,0), city: 'Vienna', party_type: 'BRUNCH', open: 'true'
  }
  ])

showups = Showup.create([
  { gratch_id: '1', user_id: '2'
  },
  { gratch_id: '1', user_id: '3'
  },
  { gratch_id: '1', user_id: '4'
  },
  { gratch_id: '2', user_id: '1'
  },
  { gratch_id: '2', user_id: '3'
  },
  { gratch_id: '2', user_id: '2'
  },
  { gratch_id: '3', user_id: '5'
  },
  { gratch_id: '3', user_id: '1'
  },
  { gratch_id: '3', user_id: '3'
  }

  ])
