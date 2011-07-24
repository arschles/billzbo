class Payment < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :expense_id
end
