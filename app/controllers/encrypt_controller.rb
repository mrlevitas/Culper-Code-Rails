class EncryptController < ApplicationController
require "lemmatizer" 

  def new
		@encrypt_text = Emessage.new
  end
  
  def create

	@encrypt_text = Emessage.new(encrypt_params) 

	culper_code_hash = CulperDict.where(crypt: "encrypt").pluck(:culper_hash)[0]

	lem = Lemmatizer.new
	encrypt_me_arr = @encrypt_text.encrypted.split(" ") << "."
	# array to be returned, encoded words are appended to it
	encrypted_arr = []

	skip_to_next = false

	# loop over array: every consecutive 2 elements
	encrypt_me_arr.each_cons(2) do |word1 , word2|
		# combined necessary for encrypting words w/ 2 strings i.e. "New York"
		combined = word1 + " " + word2
		
		# if a combined word appears, iterate to next set of words in array
		if skip_to_next
			skip_to_next = false
			next
		end

		# check if single word is in dictionary
		if culper_code_hash[word1]

			word = word1.gsub(/\S+/, culper_code_hash)
			encrypted_arr << word

		# check if lemma of word is in dictionary & prepend '~' to it
		elsif culper_code_hash[lem_word = lem.lemma(word1)]
			
				word = lem_word.gsub(/\S+/, culper_code_hash)
				word.prepend("~")
				encrypted_arr << word
		
		# check if word contains numbers
		elsif word1 =~ /\d/
			# number map/cipher
			word = word1.tr("1234567890", "efgikmnoqu")
			# add underscores around encoded number
			word.prepend("_").concat("_") # word.gsub!(/\S+/ , '_\&_') 
			encrypted_arr << word
			
				
		# check if each combination of 2 consecutive words is in dictionary
		elsif culper_code_hash[combined]
			# set flag to iterate to next set of words in array
			skip_to_next = true
			encrypted_arr << culper_code_hash[combined]					
		
		# word is not found in dictionary and is not a number
		else
			# non dictionary word mapping/cipher (supports capital letters as well)
			word = word1.tr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", "efghijabcdomnpqrkluvwxyzstEFGHIJABCDOMNPQRKLUVWXYZST")
			encrypted_arr << word
		end
	end

	@encrypt_text.encrypted = encrypted_arr.join(" ")





	  if @encrypt_text.save 
	    redirect_to '/encrypt/display' 
	  else 
	    redirect_to '/' 
	  end     
  end
  

  def display
  	@displayme = Emessage.order("created_at").last
  end

  private

    def encrypt_params
      params.require(:emessage).permit(:encrypted)
    end
end


