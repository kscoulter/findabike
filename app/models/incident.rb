class Incident < ActiveRecord::Base
  belongs_to :user
  belongs_to :bike
end
