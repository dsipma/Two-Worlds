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
    @pagetitle = "Contact"
  end

  def book
    @pagetitle = "Book"
  end

end
