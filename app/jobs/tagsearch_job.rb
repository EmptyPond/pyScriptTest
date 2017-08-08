class TagsearchJob < ApplicationJob
  queue_as :default

  def perform(tag)
    # Do something later
    pyscript_path = Rails.root.join('bs4_script.py')
    tag_count = `python #{pyscript_path} #{tag.tag}`.chomp.to_i
    tag.update_attributes(count:tag_count,processing:"Finished")
  end
end
