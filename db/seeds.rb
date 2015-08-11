# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#lib/tasks/import.rake
require 'csv'

	
task :import, [:filename] => :environment do

culper_code_hash_enc = {}
culper_code_hash_dec = {}

Culper = File.open('.\CulperCodesCSV.csv')
# p CulperKey.columns.map(&:name)
	CSV.foreach(Culper) do |row|
	    number, word = row
		culper_code_hash_enc[word] = number
		culper_code_hash_dec[number] = word
	end

obj_enc = CulperDict.create(culper_hash: culper_code_hash_enc , crypt: "encrypt")
obj_dec = CulperDict.create(culper_hash: culper_code_hash_dec , crypt: "decrypt")
obj_enc.save
obj_dec.save
end