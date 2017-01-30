class Period < ApplicationRecord
enum day: %i(monday tuesday wedneday thursday friday saturday)
end
