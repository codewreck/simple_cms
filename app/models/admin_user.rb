class AdminUser < ApplicationRecord

	has_and_belongs_to_many :pages

	has_many :section_edits
	has_many :sections, :through => :section_edits

	end



# class User < ApplicationRecord

# 	self.table_name = "admin_users"
	
# end
