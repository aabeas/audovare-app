class PagesController < ApplicationController
  # before_action :must_login, only: [:show]

  skip_before_action :authenticate_user!, :only => [:index, :about, :contact, :jobs]
  # before_action :authorize, only: [:show, :edit, :update]

  def profile
    @title = 'Profile';

    def edit
    end

    def update
    end

  end


  def about
    @title = 'About Us';
    @content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.';
  end

  def contact
    @title = 'Let\'s Connect';
    @content = 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';
  end

  def jobs
    @title = 'Opportunities at Audovare';
    @content = 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  end

  def index
  end

  def show
  end
end
