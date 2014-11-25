class Contact < ActiveRecord::Base

  validates :organization,
            :role,
            presence: true

  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})\z/, :multiline => true }
  validates :name,
            presence: true,
            length:  { maximum: 100 }

end
