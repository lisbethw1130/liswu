class ShortUrl < ApplicationRecord
  validates_presence_of :original_url, :url
  validates_uniqueness_of :url
end
