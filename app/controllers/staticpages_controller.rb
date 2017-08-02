class StaticpagesController < ApplicationController

  def index
    @tag = Tag.new
  end

  def create
		`python test.py`
    test = `python test.py`
    Tag.create(tag: "a", count: test)
    redirect_to root_path
  end

  def tag_params
    params.require(:tag).permit(:tag)
  end
end
