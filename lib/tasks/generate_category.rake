desc "Generate Category"
namespace :generate_category do
  task :zzz => :environment do
    (1..10).each do |item1111|
      Category.create(name: "Category #{item1111}", description: "#{item1111}")
      puts "#{item1111}"
    end
  end
end
