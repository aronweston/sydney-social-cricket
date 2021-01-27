Player.destroy_all
p1 = Player.create :first_name => 'Admin', :last_name => 'Smith', :role => 'Top Order Batsman', :grade => 'A', :suburb => 2066, :bio => "Good bloke, can bat", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'admin@test.com', :password => 'chicken', :admin => true
p2 = Player.create :first_name => 'Fred', :last_name => 'Jones', :role => 'Bowler', :grade => 'B', :suburb => 2044, :bio => "Good bloke, can bowl", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'fred@test.com', :password => 'chicken'
p3 = Player.create :first_name => 'Mike', :last_name => 'Woz', :role => 'All Rounder', :grade => 'C', :suburb => 2000, :bio => "Good bloke, can bowl and bat", :profile_image => 'https://randomuser.me/api/portraits/men/29.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'mike@test.com', :password => 'chicken'
puts "#{Player.count} players."


Team.destroy_all
t1 = Team.create :name => 'The Lane Cove Sluggers', :grade => 'B', :suburb => 2000, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team1@team.com', :password => 'chicken'
t2 = Team.create :name => 'Waverly Termites', :grade => 'B', :suburb => 2055, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team2@team.com', :password => 'chicken'
t3 = Team.create :name => 'St Leondards Giants', :grade => 'C', :suburb => 2053, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team3@team.com', :password => 'chicken'
t4 = Team.create :name => 'City Lions', :grade => 'C', :suburb => 2053, :logo => "https://upload.wikimedia.org/wikipedia/en/6/60/Sydney_sixers.png", :banner_photo => "https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg", :email => 'team3@team.com', :password => 'chicken'
puts "#{Team.count} teams."


Ground.destroy_all
g1 = Ground.create :name => "Waverly Oval", :address => "49C Bondi Rd, Bondi Junction NSW 2022", :google_map => "-33.89571308984821, 151.25787023541972", :image => "https://lh5.googleusercontent.com/p/AF1QipMFGFo8oUBbjdqSOWtbVQCU20yg9hXmLEZ-ekkN=w408-h306-k-no"
g2 = Ground.create :name => "Tantallon Oval", :address => "Tantallon Rd & Epping Road, Lane Cove North NSW 2066", :google_map => "-33.80885574034346, 151.1595207538647", :image => "https://lh5.googleusercontent.com/p/AF1QipN8Yke_0YAVUWm5PqRRW2Mx9qy28oa92AhffitS=w426-h240-k-no"
g3 = Ground.create :name => "Gore Hill Oval", :address => "209 Pacific Hwy, St Leonards NSW 2065", :google_map => "-33.82255422393026, 151.19152654613814", :image => "https://lh5.googleusercontent.com/p/AF1QipNeeKY858lY4RN9wzmq0_SKd1OaMf5kVODhyoiZ=w408-h306-k-no"
puts "#{Ground.count} grounds."


Game.destroy_all 
m1 = Game.create :team1_id => 86, :team2_id => 89, :ground_id => 55, :date => "2021-01-27"
m2 = Game.create :team1_id => 86, :team2_id => 89, :ground_id => 56, :date => "2021-05-03"
puts "#{Game.count} games."

# Assocaitons 

puts "Teams have many players"
t1.players << p1 
t2.players << p2
t2.players << p3 

puts "Grounds have many games"
g1.games << m1
g2.games << m2



