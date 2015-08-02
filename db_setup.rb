# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CulperCode = File.open('.\CulperCodesCSV.csv')
obj = CulperKey.first
	
	
	CSV.foreach(CulperCode) do |row|
	    number, word = row
		obj.culper_hash[word] = number
	end
 
obj.save