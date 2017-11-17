class Vacancy < ApplicationRecord

  before_save do
    self.categories.gsub!(/[\[\]\"]/, "") if attribute_present?("categories")
  end
end
