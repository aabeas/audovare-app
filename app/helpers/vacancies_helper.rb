module VacanciesHelper

  def checked(area)
    @vacancy.categories.nil? ? false : @vacancy.categories.match(area)
  end
end
