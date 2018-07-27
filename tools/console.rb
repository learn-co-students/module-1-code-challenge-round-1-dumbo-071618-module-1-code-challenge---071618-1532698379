require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

pam = Customer.new "Pam","Beasley"
jim = Customer.new "Jim","Halpert"
michael = Customer.new "Michael","Scott"
mj = Customer.new "Michael","Jordan"
raynor = Customer.new "Jim","Raynor"

shore_shack = Restaurant.new "Shore Shack"
bobs_burgers = Restaurant.new "Bob's Burgers"
central_perk = Restaurant.new "Central Perk"

jim.add_review central_perk, "Coffee was okay, service... not so great.", 3
pam.add_review central_perk, "I don't think Jim liked it all that much. I don't know if I did either. There was this group of people in the middle of the restaurant that kept teasing one of the waitresses. I felt bad for her.", 2
mj.add_review shore_shack,"Great burgers, and even better wisdom from Tito", 5
jim.add_review bobs_burgers, "Well Gene put socks in my burger... So that's that", 1
jim.add_review bobs_burgers, "Michael forced the entire office to come back because he loved the prank that Gene pulled on everybody... we didn't have to work so that's not so bad. I definitely didn't eat any of the food this time", 1
pam.add_review bobs_burgers, "I don't know how we did this, especially considering that this place is from a cartoon. But it happened! Oh and the food was kinda gross", 2
michael.add_review bobs_burgers, "HOOOO man I loved it! You know that kid Gene? He's hilarious! He did this thing where he put old gym socks in everyone's burgers and it was grreeeaat! You know there comes a time in everyone's lives where they start to feel old. I might be over 40, and Creed's basically over 100, but Gene definitely made me feel like a kid again. And that's what I appreciate about this place. Kids playing tricks on adults. There's something to be learned from that.", 5
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
