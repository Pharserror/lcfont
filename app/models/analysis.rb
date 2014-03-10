class Analysis < ActiveRecord::Base
  has_many :analysispackages
  has_many :keywords
end
