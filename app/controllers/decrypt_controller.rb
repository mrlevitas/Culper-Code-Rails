class DecryptController < ApplicationController
	 

  def new
		@decrypt_text = Dmessage.new
  end
  
  def create

	  @decrypt_text = Dmessage.new(decrypt_params) 

	  
	  culper_code_hash = CulperDict.where(crypt: "decrypt").pluck(:culper_hash)[0]
	  
		decrypt_me_arr = @decrypt_text.decrypted.split(" ")

		decrypt_me_arr.each do |word|

			if word.include?("_")
				word.tr!("efgikmnoqu","1234567890")
				word.gsub!('_','')
			elsif culper_code_hash[word]
				word.gsub!(/\S+/, culper_code_hash)
			else 
				# non dictionary word mapping (supports capital letters as well)
				word.tr!("efghijabcdomnpqrkluvwxyzstEFGHIJABCDOMNPQRKLUVWXYZST","abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
			end
		end

	@decrypt_text.decrypted = decrypt_me_arr.join(" ")



	  if @decrypt_text.save 
	    redirect_to '/decrypt/display' 
	  else 
	    redirect_to '/' 
	  end     
  end
  

  def display
  	@displayme = Dmessage.order("created_at").last
  end

  private

    def decrypt_params
      params.require(:dmessage).permit(:decrypted)
    end
end

