module ApplicationHelper

  # def get_random_number(max_value = 10)
  #   rand(max_value)
  # end

  def get_random_welcome()
    opening = ["What a beautiful day. ",
              "Welcome to our site. ",
              "Thank you for stopping by. "]

    middle = ["We hope you find what you need. ",
              "We have a wide variety to choose from. ",
              "Check out our diverse pool. "]

    ending = ["Feel free to message us. ",
              "We are here to serve you. ",
              "For direct assistance, give us a call. "]

    "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
  end

end
