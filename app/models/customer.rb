class Customer < ActiveRecord::Base

	validates :first_name, presence: true, length: { minimum: 2 }
	 validates :last_name, presence:true, length: {minimum: 2}
	 
	 # to be called in _customer.html.erb partial
	 # example: Jalan Binjai, 12345, Kuala Lumpur
	 def address
	 	if street.present? && zip.present? && city.present?
	 		"#{street}, #{zip}, #{city}"
	 	end
	 end
	
end
