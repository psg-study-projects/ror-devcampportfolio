class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  # Custom Scope (1)
  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom Scope (2), using labmdas
  scope :ruby_on_rails, ->  { where(subtitle: 'Ruby on Rails') } 

end
