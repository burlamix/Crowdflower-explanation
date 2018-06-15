# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s1_name = 'Friends Trip'
s1_description = 'Imagine you are planning a trip with a group of friends. You decided to use a recommender system to select the order of the places you want to visit in a city. Below is the table with your preferences and the sequence of places that the system has recommended for you to visit. You will see an explanation for why the system has recommended that sequence.'
s1_persona = 'friends'

scenario_1 = Scenario.create(name: s1_name, description: s1_description, persona: s1_persona)

john = Person.create(name: 'John', scenario: scenario_1)
adam = Person.create(name: 'Adam', scenario: scenario_1)
mary = Person.create(name: 'Mary', scenario: scenario_1)

poi_a = PointOfInterest.create(name: 'A', scenario: scenario_1)
poi_b = PointOfInterest.create(name: 'B', scenario: scenario_1)
poi_c = PointOfInterest.create(name: 'C', scenario: scenario_1)
poi_d = PointOfInterest.create(name: 'D', scenario: scenario_1)
poi_e = PointOfInterest.create(name: 'E', scenario: scenario_1)
poi_f = PointOfInterest.create(name: 'F', scenario: scenario_1)
poi_g = PointOfInterest.create(name: 'G', scenario: scenario_1)
poi_h = PointOfInterest.create(name: 'H', scenario: scenario_1)
poi_i = PointOfInterest.create(name: 'I', scenario: scenario_1)
poi_j = PointOfInterest.create(name: 'J', scenario: scenario_1)

score_john_a = Score.create(point_of_interest: poi_a, person: john, score: 10)
score_john_b = Score.create(point_of_interest: poi_b, person: john, score: 4)
score_john_c = Score.create(point_of_interest: poi_c, person: john, score: 3)
score_john_d = Score.create(point_of_interest: poi_d, person: john, score: 6)
score_john_e = Score.create(point_of_interest: poi_e, person: john, score: 10)
score_john_f = Score.create(point_of_interest: poi_f, person: john, score: 9)
score_john_g = Score.create(point_of_interest: poi_g, person: john, score: 6)
score_john_h = Score.create(point_of_interest: poi_h, person: john, score: 8)
score_john_i = Score.create(point_of_interest: poi_i, person: john, score: 10)
score_john_j = Score.create(point_of_interest: poi_j, person: john, score: 8)

score_adam_a = Score.create(point_of_interest: poi_a, person: adam, score: 1)
score_adam_b = Score.create(point_of_interest: poi_b, person: adam, score: 9)
score_adam_c = Score.create(point_of_interest: poi_c, person: adam, score: 8)
score_adam_d = Score.create(point_of_interest: poi_d, person: adam, score: 9)
score_adam_e = Score.create(point_of_interest: poi_e, person: adam, score: 7)
score_adam_f = Score.create(point_of_interest: poi_f, person: adam, score: 9)
score_adam_g = Score.create(point_of_interest: poi_g, person: adam, score: 6)
score_adam_h = Score.create(point_of_interest: poi_h, person: adam, score: 9)
score_adam_i = Score.create(point_of_interest: poi_i, person: adam, score: 3)
score_adam_j = Score.create(point_of_interest: poi_j, person: adam, score: 8)

score_mary_a = Score.create(point_of_interest: poi_a, person: mary, score: 10)
score_mary_b = Score.create(point_of_interest: poi_b, person: mary, score: 5)
score_mary_c = Score.create(point_of_interest: poi_c, person: mary, score: 2)
score_mary_d = Score.create(point_of_interest: poi_d, person: mary, score: 7)
score_mary_e = Score.create(point_of_interest: poi_e, person: mary, score: 9)
score_mary_f = Score.create(point_of_interest: poi_f, person: mary, score: 8)
score_mary_g = Score.create(point_of_interest: poi_g, person: mary, score: 5)
score_mary_h = Score.create(point_of_interest: poi_h, person: mary, score: 6)
score_mary_i = Score.create(point_of_interest: poi_i, person: mary, score: 7)
score_mary_j = Score.create(point_of_interest: poi_j, person: mary, score: 6)

# Create sequence with Least Misery, Most Pleasure, Without Misery strategy
SequenceStrategies::LmMpWmStrategy.call(scenario: scenario_1)