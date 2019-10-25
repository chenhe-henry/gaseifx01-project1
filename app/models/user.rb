class User < ApplicationRecord
    belongs_to :gender
    belongs_to :contact_info
    belongs_to :location
    has_secure_password
end
