# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db =>seed (or created alongside the db with db =>setup).
#
# Examples =>
#
#   cities = City.create([{  =>name  => 'Chicago' }, {  =>name  => 'Copenhagen' }])
#   Mayor.create( =>name  => 'Emanuel',  =>city  => cities.first)




#Delete all the current entries in the database

Game.delete_all
League.delete_all
Person.delete_all
Sport.delete_all
TeamCoach.delete_all
TeamPlayer.delete_all
Team.delete_all
User.delete_all
Venue.delete_all

#Additions are done in order that they need to be created

#Owner of the NFL
nflOwner = Person.create([{:name => 'Josh Eklund', :address => '6000 Reynolds Drive 131 Rochester, NY 14623', :username => 'jeklund'}]).first


#All members added here will be part of the Buffalo Bills Team / NFL League

#League Owner
buffLeagueOwner = Person.create([{:name  => 'Ralph Wilson', :address => '10 Main Street Buffalo, NY 11432', :username => 'rwilson'}]).first
#Head Coach
buffHeadCoach = Person.create([{:name => 'Chan Gailey', :address => '106 42nd st. Christmas Towne,Maine', :username => 'cgailey'}]).first
#Defensive Coordinator/Assistant Head Coach
buffDefCoach = Person.create([{:name => 'Dave Wannstedt', :address => '16001 Morgantown Ave, Fairmont,West Virginia', :username => 'dwannstedt'}]).first
#93
buff1 = Person.create([{:name => 'Mark Anderson', :address => '122 Rigg Road, Burmingham,Alabama', :username => 'manderson'}]).first
#50
buff2 = Person.create([{:name => 'Nick Barnett', :address => '194 Red Trail Blvd  Pitsfork,Oregon', :username => 'nbarnett'}]).first
#53
buff3 = Person.create([{:name => 'Nigel Bradham', :address => '607 salt lane, Tampa Bay,Florida', :username => 'nbradham'}]).first
#33
buff4 = Person.create([{:name => 'Ron Brooks', :address => '21 Lupos Village, apt 29,Cape Kanha,Louisiana', :username => 'rbrooks'}]).first
#31
buff5 = Person.create([{:name => 'Jairus Byrd', :address => '1592 Lasertone Road, Sinagoge,Oregon', :username => 'jbyrd'}]).first
#92
buff6 = Person.create([{:name => 'Alex Carrington', :address => '16 1/2 Clarksburg st. Ardvark,Arkansas', :username => 'acarrington'}]).first
#84
buff7 = Person.create([{:name => 'Scott Chandler', :address => '5 guys Lane, Potato, Iowa', :username => 'schandler'}]).first



#All members added here will be part of the Miami Dolphins Team / NFL League

#Head Coach
dolHeadCoach = Person.create([{:name => 'Joe Philbin', :address => '34 Tarence Street Tampa, FL 55342', :username => 'jphilbin'}]).first
#Defensive Coordinator
dolDefCoach = Person.create([{:name => 'Kevin Coyle', :address => '4774 Pinocchi Lane Jacksonville, FL 55223', :username => 'kcoyle'}]).first
#Franchise Owner
dolLeagueOwner = Person.create([{:name => 'Stephen M. Ross', :address => '443 Germly Road Jacksonville, FL 55224', :username => 'sross'}]).first
#29
dolp1 = Person.create([{:name => 'Jonathon Amaya', :address => '123 Pleasant street,Las Vegas, Nevada', :username => 'jamaya'}]).first
#15
dolp2 = Person.create([{:name => 'Davone Bess', :address => '44 Surf Lane Muauii,Hawaii', :username => 'dbess'}]).first
#56
dolp3 = Person.create([{:name => 'Kevin Burnett', :address => '18 DorseyKnob,Nashville,Tennessee', :username => 'kburnett'}]).first
#22
dolp4 = Person.create([{:name => 'Reggie Bush', :address => '1109 Bev St,Los Angelos,Southern California', :username => 'rbush'}]).first
#5
dolp5 = Person.create([{:name => 'Dan Carpenter', :address => '3408 Emerson st. Canoe,Montana', :username => 'dcarpenter'}]).first
#28
dolp6 = Person.create([{:name => 'Nolan Carroll', :address => '13005 Rush run, Frostburg,Maryland', :username => 'ncarroll'}]).first
#42
dolp7 = Person.create([{:name => 'Charles Clay', :address => '405 Ross Road, Canaberry,North Carolina', :username => 'cclay'}]).first


#Creating a Sport (Football)
sportFB = Sport.create([{:name => 'Football', :configpath => 'default'}]).first

#Creating a League for Football
nfl = League.create([{:name => 'National Football League (NFL)', :sport => sportFB, :owner => nflOwner}]).first

#Creating a Venue for The Home of the Buffalo Bills
ralphVenue = Venue.create([{:name => 'Ralph Wilson Stadium', :address => '1 Bills Dr Orchard Park, NY 14127', :seatCapacity => '73966', :indoor => 'false', :description => 'Ralph Wilson Stadium (originally Rich Stadium) is a football stadium, located in the town of Orchard Park, a suburb of Buffalo, New York. It is the home for the Buffalo Bills, of the NFL. The stadium is named after Pro Football Hall of Famer, Buffalo Bills founder and current owner Ralph Wilson.' }]).first
#Creating a Venue for The Home of the Miami Dolphins
sunVenue = Venue.create([{:name => 'Sun Life Stadium', :address => '347 Don Shula Drive, Miami Gardens, FL 33056', :seatCapacity => '76,100', :indoor => 'false', :description => 'Sun Life Stadium is an American football stadium in Miami Gardens, Florida, a suburb of Miami. It is the home stadium of the Miami Dolphins National Football League team, and the University of Miami Hurricanes football team.' }]).first

#Creating the Buffalo Bills Team
buffTeam = Team.create([{:name => 'Buffalo Bills', :league => nfl, :venue => ralphVenue, :manager => buffLeagueOwner }]).first
#Creating the Miami Dolphins Team
miamiTeam = Team.create([{:name => 'Miami Dolphins', :league => nfl, :venue => sunVenue, :manager => dolLeagueOwner }]).first



TeamCoach.create([{:team => buffTeam, :person => buffHeadCoach, :coachTitle => 'Head Coach'}])
TeamCoach.create([{:team => buffTeam, :person => buffDefCoach, :coachTitle => 'Defensive Coordinator/Assistant Head Coach'}])

#93
TeamPlayer.create([{:person => buff1, :team => buffTeam, :player_number => '93', :active => 'true'}])
#50
TeamPlayer.create([{:person => buff2, :team => buffTeam, :player_number => '50', :active => 'true'}])
#53
TeamPlayer.create([{:person => buff3, :team => buffTeam, :player_number => '53', :active => 'true'}])
#33
TeamPlayer.create([{:person => buff4, :team => buffTeam, :player_number => '33', :active => 'true'}])
#31
TeamPlayer.create([{:person => buff5, :team => buffTeam, :player_number => '31', :active => 'true'}])
#92
TeamPlayer.create([{:person => buff6, :team => buffTeam, :player_number => '92', :active => 'true'}])
#84
TeamPlayer.create([{:person => buff7, :team => buffTeam, :player_number => '84', :active => 'true'}])




TeamCoach.create([{:team => miamiTeam, :person => dolHeadCoach, :coachTitle => 'Head Coach'}])
TeamCoach.create([{:team => miamiTeam, :person => dolDefCoach, :coachTitle => 'Defensive Coordinator'}])
#93
TeamPlayer.create([{:person => dolp1, :team => miamiTeam, :player_number => '23', :active => 'true'}])
#50
TeamPlayer.create([{:person => dolp2, :team => miamiTeam, :player_number => '15', :active => 'true'}])
#53
TeamPlayer.create([{:person => dolp3, :team => miamiTeam, :player_number => '56', :active => 'true'}])
#33
TeamPlayer.create([{:person => dolp4, :team => miamiTeam, :player_number => '22', :active => 'true'}])
#31
TeamPlayer.create([{:person => dolp5, :team => miamiTeam, :player_number => '5', :active => 'true'}])
#92
TeamPlayer.create([{:person => dolp6, :team => miamiTeam, :player_number => '28', :active => 'true'}])
#84
TeamPlayer.create([{:person => dolp7, :team => miamiTeam, :player_number => '42', :active => 'true'}])


Game.create([{:league => nfl, :venue => ralphVenue, :home => buffTeam, :away => miamiTeam, :date => '4/4/2012', :homeScore => '33', :awayScore => '23'}])






