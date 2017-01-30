class EachClassPeriodSubject < ApplicationRecord
  belongs_to :subject
  belongs_to :period
  belongs_to :each_class
end
