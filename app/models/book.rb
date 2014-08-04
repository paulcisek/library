class Book < ActiveRecord::Base
	has_attached_file :bookCover
end
