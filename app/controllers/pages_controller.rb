class PagesController < ApplicationController
  def home
    @posts = Post.all
    @pagetitle = "Home"

  end

  def bio
    @pagetitle = "Bio"
  end

  def order
    @pagetitle = "Order"
  end

  def contact
    redirect_to new_message_path
  end

  def book
    @pagetitle = "Book"
  end

end
