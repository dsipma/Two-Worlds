class PagesController < ApplicationController
  def home
    @posts = Post.all
  end

  def bio
  end

  def order
  end

  def contact
  end

  def book
  end

end
