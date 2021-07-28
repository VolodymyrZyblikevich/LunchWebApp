class MenuDays < ApplicationRecord
  enum WEEK_DAYS = {
    'Monday' => 1,
    'Tuesday' => 2,
    'Wednesday' => 3,
    'Thursday' => 4,
    'Friday' => 5
  }.freeze

  has_and_belongs_to_many :dishes

end
