class User < ActiveRecord::Base

  rolify

  # :before_add => :before_add_method
  #
  # def before_add_method(role)
  #   # do something before it gets added
  # end

  # after_create :assign_default_role
  #
  # def assign_default_role
  #   self.add_role(:talent) if self.roles.blank?
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username

  after_create :send_admin_mail

  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end

end
