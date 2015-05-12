class UserCuisine < ActiveRecord::Base
  enum week: { Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5 }
end
