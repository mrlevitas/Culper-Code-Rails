#lib/tasks/import.rake
require 'csv'

	
task :import, [:filename] => :environment do

culper_code_hash_enc = {}
culper_code_hash_dec = {}

Culper = File.open('CulperCodesCSV')
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