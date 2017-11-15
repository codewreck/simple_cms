class Page < ApplicationRecord

		has_many :sections
		belongs_to :subject, { :optional => true }
		has_and_belongs_to_many :admin_users

end
