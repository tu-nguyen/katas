-- Title:  Find all active students
-- Rank: 8 kyu
-- Language Version: PostgreSQL 9.6

-- Instructions --
-- Create a simple SELECT query to display student information of all ACTIVE students.
--
-- Solution --
select *
from students
where IsActive = 1

-- Test Case --
# you can
use Sequel
(
https:
//github.com/jeremyevans/sequel) to setup your database.
# The connection is already made for you.

# You can also move this code into the preloaded section so that its available
# for all tests
(including examples).

DB.create_table :students do
  primary_key :Id
  String :FirstName
  String :LastName
boolean:
IsActive
end

students = DB[:students] #
Create a dataset

# Populate the table
# You can
use Faker
(
https:
//github.com/stympy/faker) to generate data
4.times do
  students.
insert(

FirstName:
Faker::Name.first_name,
LastName:
Faker::Name.last_name,
IsActive:
true)
end
6.times do
  students.
insert(

FirstName:
Faker::Name.first_name,
LastName:
Faker::Name.last_name,
IsActive:
false)
end

results = run_sql

describe :students do
   it "should return 4 students" do
    expect
(results.count).to eq 4
end
end