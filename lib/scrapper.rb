class Scrapper
  attr_reader :tag
  def initialize(tag)
    #tag will be a row in the Tag model
    @tag = tag
  end
  def scrape
    pyscript_path = Rails.root.join('bs4_script.py')
    `python #{pyscript_path} #{tag.tag}`.chomp.to_i
  end
end
