Player.destroy_all
p1 = Player.create :first_name => 'John', :last_name => 'Smith', :role => 'Top Order Batsman', :grade => 'A', :suburb => 2066, :bio => "Good bloke, can bat", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'john@test.com', :password_digest => 'chicken', :admin => true

p2 = Player.create :first_name => 'Fred', :last_name => 'Jones', :role => 'Bowler', :grade => 'B', :suburb => 2044, :bio => "Good bloke, can bowl", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'fred@test.com', :password_digest => 'chicken', :admin => true


# p3 = Player.create :first_name => 'John', :last_name => 'Smith', :role => 'Top Order Batsman', :grade => 'A', :suburb => 2066, :bio => "Good bloke, can bat", :profile_image => 'https://randomuser.me/api/portraits/men/27.jpg', :banner_photo => 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg', :email => 'john@test.com', :password_digest => 'chicken', :admin => true




# p2 = Player.create :first_name 'Fred', :last_name 'Jones', :role 'Bowler', :grade 'B', :suburb: 2000, :bio "Good bloke, can bowl", :profile_image 'https://randomuser.me/api/portraits/men/29.jpg', :banner_photo 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg':email => 'fred@test.com', :password => 'chicken', :admin => true
# p3 = Player.create :first_name 'Mike', :last_name 'Doe', :role 'Spin Bowler', :grade 'C', :suburb: 2033, bio: "Good bloke, can bat", :profile_image 'https://randomuser.me/api/portraits/men/30.jpg', :banner_photo 'https://static01.nyt.com/images/2021/01/20/world/19India-cricket-print/merlin_182524254_cbcb50d6-43b7-444a-bf17-8eafd44ce4f9-superJumbo.jpg' :email => 'john@test.com', :password => 'chicken', :admin => true
puts "#{Player.count} players."


# Team.destroy_all
# t1 = Team.create :email => 'john@test.com', :password => 'chicken', :





# # Assocaitons 
# puts 'DONT: Albums and songs'
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


