namespace :auto_generate_staffs do
  desc "this task auto generate 500 staffs"
  task :staffs  => :environment do
    (1..500).each do |item|
      Staff.create(
        name: "person #{item}",
        email: "email#{item}@gmail.com",
        age: item,
      )
      puts "item number  #{item}"
    end
  end
end
