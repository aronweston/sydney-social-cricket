Player.destroy_all

p1 = Player.create :first_name => 'John', :last_name => 'Smith', :role => 'Top Order Batsman', :grade => 'A', :suburb => 2066, :bio => "Good bloke, can bat", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'admin@test.com', :password => 'chicken', :admin => true

p2 = Player.create :first_name => 'Fred', :last_name => 'Jones', :role => 'Bowler', :grade => 'B', :suburb => 2044, :bio => "Good bloke, can bowl", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'fred@test.com', :password => 'chicken'

p3 = Player.create :first_name => 'Mike', :last_name => 'Woz', :role => 'All Rounder', :grade => 'C', :suburb => 2000, :bio => "Good bloke, can bowl and bat", :profile_image => 'https://randomuser.me/api/portraits/men/29.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'mike@test.com', :password => 'chicken'

puts "#{Player.count} players."


Team.destroy_all
t1 = Team.create :name => 'The Lane Cove Sluggers', :grade => 'A', :suburb => 2000, :player_limit => 20, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team1@team.com', :password => 'chicken'

t2 = Team.create :name => 'Waverly Termites', :grade => 'B', :suburb => 2055, :player_limit => 20, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team2@team.com', :password => 'chicken'

t3 = Team.create :name => 'St Leondards Giants', :grade => 'C', :suburb => 2053, :player_limit => 20, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team3@team.com', :password => 'chicken'
puts "#{Team.count} teams."


Ground.destroy_all

g1 = Ground.create :name => "Waverly Oval", :address => "49C Bondi Rd, Bondi Junction NSW 2022", :google_map => "-33.89571308984821, 151.25787023541972", :image => "https://lh5.googleusercontent.com/p/AF1QipMFGFo8oUBbjdqSOWtbVQCU20yg9hXmLEZ-ekkN=w408-h306-k-no"

g2 = Ground.create :name => "Tantallon Oval", :address => "Tantallon Rd & Epping Road, Lane Cove North NSW 2066", :google_map => "-33.80885574034346, 151.1595207538647", :image => "https://lh5.googleusercontent.com/p/AF1QipN8Yke_0YAVUWm5PqRRW2Mx9qy28oa92AhffitS=w426-h240-k-no"

g3 = Ground.create :name => "Gore Hill Oval", :address => "209 Pacific Hwy, St Leonards NSW 2065", :google_map => "-33.82255422393026, 151.19152654613814", :image => "https://lh5.googleusercontent.com/p/AF1QipNeeKY858lY4RN9wzmq0_SKd1OaMf5kVODhyoiZ=w408-h306-k-no"
puts "#{Ground.count} grounds."




Game.destroy_all

m1 = Game.create :team_1 => 1, :team_2 => 2, :ground_id => 1, :date => "2021-01-27"
m2 = Game.create :team_1 => 2, :team_2 => 3, :ground_id => 2, :date => "2021-05-3"
m3 = Game.create :team_1 => 3, :team_2 => 1, :ground_id => 3, :date => "2021-06-5"

puts "#{Game.count} games."


# # Assocaitons 
# puts 'Albums and songs'
# l1.songs << s1
# l2.songs << s2
# l3.songs << s3
# l4.songs << s4

# puts 'Artists and songs'
# a1.songs << s1
# a2.songs << s2
# a3.songs << s3
# a4.songs << s4

# puts 'Genres and songs'
# s1.genres << g1 << g2
# s2.genres << g5 << g6
# s3.genres << g3 << g4
# g6.songs << s4 ## equiv to s4.genres << g6

# puts 'Artists and songs'
# m1.songs << s1 << s2 << s3 << s4
# m2.songs << s2 << s2 << s2 << s2
# m3.songs << s2 << s4 << s2 << s4
# m4.songs << s4 << s3 << s2 << s2

# puts 'Artists and songs'
# u1.mixtapes << m1 << m2
# u2.mixtapes << m3 << m4


