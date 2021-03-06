namespace :aut_generate_people do
  desc "This task auto generate 1000 people"
  task :people  => :environment do
    (1..1000).each do |item|
      Person.create(
        first_name: "person #{item}",
        email: "email#{item}@gmail.com",
        phone: "097893392#{item}",
        agree: item.odd? ? true : false
      )
    end
  end
end
