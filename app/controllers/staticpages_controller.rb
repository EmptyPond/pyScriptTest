class StaticpagesController < ApplicationController

  def index
    @tag = Tag.new
  end

  def create
		#`python test.py`
    puts `pwd`
    #test = `python test.py` 
    test2 = Rails.root.join('test.py')
    test = `python #{test2}`
    Tag.create(tag: test, count: 1)
    redirect_to root_path
  end

  def tag_params
    params.require(:tag).permit(:tag)
  end
end
