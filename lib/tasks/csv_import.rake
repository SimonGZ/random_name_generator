require 'csv'
require 'active_support/core_ext/hash'

task :import_csv_female_firstnames => :environment do    
  puts "Running Import CSV Female Firstnames"
  csv_text = File.open("/Users/simong/Programming/Rails/random_name_generator/public/1990femalefirstnames.csv")
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    row = row.to_hash.with_indifferent_access
    Firstname.create!(row.to_hash.symbolize_keys)
  end
end

task :import_csv_male_firstnames => :environment do    
  puts "Running Import CSV Female Firstnames"
  csv_text = File.open("/Users/simong/Programming/Rails/random_name_generator/public/1990malefirstnames.csv")
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    row = row.to_hash.with_indifferent_access
    Firstname.create!(row.to_hash.symbolize_keys)
  end
end

# task :import_names => [:import_csv_female_firstnames, :import_csv_male_firstnames] do
# end