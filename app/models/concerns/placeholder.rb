module Placeholder
  extend ActiveSupport::Concern

  # basically a helper method
  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end
