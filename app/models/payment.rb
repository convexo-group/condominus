class Payment < ApplicationRecord
  belongs_to :lease
  belongs_to :tenant
end
