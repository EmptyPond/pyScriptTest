class StaticpagesController < ApplicationController

  def index
    @tag = Tag.new
  end

  def create
    pyscript_path = Rails.root.join('bs4_script.py')
    tag_var = `python #{pyscript_path} #{params[:tag]}`.chomp.to_i
    Tag.create(tag: params[:tag], count: tag_var)
    redirect_to root_path
  end

  def tag_params
    params.require(:tag).permit(:tag)
  end
end
