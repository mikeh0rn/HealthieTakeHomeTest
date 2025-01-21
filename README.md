# Mike Horn: Healthie Take Home Test

## Resources Used:

• React Coursera Nanodegree Course Materials: I received a certification in 2018 - https://www.udacity.com/course/react-nanodegree--nd019

Note: If I were designing the `find_prime_numbers` function from the first problem in a production app, I would rely less on manually determining if a number is prime and instead, I may lean on Ruby's Prime module for maximum efficiency inside of the loop:
https://ruby-doc.org/stdlib-2.5.1/libdoc/prime/rdoc/Prime.html

Example:
```
require 'prime'

current_number.prime?
```

Other resources used:

https://www.geeksforgeeks.org/ruby-inheritance/

https://guides.rubyonrails.org/active_record_basics.html

https://guides.rubyonrails.org/active_record_validations.html

https://guides.rubyonrails.org/active_record_validations.html#inclusion

https://ruby-doc.org/core-2.6.8/Time.html

https://guides.rubyonrails.org/active_record_validations.html

https://guides.rubyonrails.org/active_record_validations.html#listing-validators

https://medium.com/unagi/say-goodbye-to-complex-regex-simplifying-email-validation-in-ruby-on-rails-5f4744cd201c


## Writing Challenge

Access `writing_challenge.txt` in the root dir to access the questions and answers for all 3 writing challenge questions.

## Prime Number Finder

Access `findprimenumber.rb` in the `prime_numbers` dir.

To test: Navigate to prime_numbers dir and run `ruby findprimenumber.rb`

This will trigger a command line prompt where you are asked to enter a number to pass into the find_prime_number function.

Line-by-line commented pseudo code is labeled in the ruby file.

## Class design
Access the rails application by navigating to the `healthie_assessment` dir.
The models folder contains 4 files: animal.rb, cat.rb, dog.rb and food.rb

You can run `driver.rb` in the root dir by running `ruby driver.rb` – this will execute a test of foods dogs and cat like, respectively.

Due to the simplicity of the program, I decided to use a single Food class rather than creating individual classes for Chicken, Lemon, Milk, CatFood, DogFood, and HumanFood. My initial intention was to use inheritance for the Food, but I found that it was unnecessary and inefficient to create separate classes that were lacking unique attributes. I felt that dedicating an entire class to each food item was redundant when I could simply initialize a Food object with a name string. As a result, I created a parent Animal class, which was inherited by Dog and Cat. I then initialized the Dog and Cat classes with their liked and disliked food items. Additionally, I added methods that could add new items to the liked and disliked array post-initialization.

## Database and model design with queries

Access the same rails application by navigating to the `healthie_assessment` dir.

The models folder also contains 3 files available for review in conjunction with the ActiveRecord queries below: client.rb, provider.rb, and journal_entry.rb

The migration files can be found in db/migrate as well as schema.db in the db dir.

• Find all clients for a particular provider

`Client.where(provider_id: provider_id)`

• Find all providers for a particular client

`Client.find(client_id).provider`

• Find all of a particular client's journal entries, sorted by date posted

`Client.find(client_id).journal_entries.order(created_at: :desc)`

• Find all of the journal entries of all of the clients of a particular provider, sorted by date posted

```
provider = Provider.find(provider_id)

journal_entries = JournalEntry.includes(client: :provider).where(clients: { provider_id: provider.id }).order('journal_entries.created_at DESC')
```
