class BookmarksController < ApplicationController
# before_action :set_bookmark, only: [:destroy]

def new
  @bookmark = Bookmark.new
end


def create
  @bookmark = Bookmark.new(bookmark_params)
  if @bookmark.save
    redirect_to bookmark_path(@bookmark)
  else
    render 'new'
  end
end

# def destroy
# end

# def set_bookmark
# end
end
