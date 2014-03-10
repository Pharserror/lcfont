class Package < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged 
  has_many :analysispackages
end
