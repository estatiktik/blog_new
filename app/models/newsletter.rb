class Newsletter < ActiveRecord::Base
  validates :newsname, presence: true,
                    length: { minimum: 5 }
  validates_format_of :newsemail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  
end
