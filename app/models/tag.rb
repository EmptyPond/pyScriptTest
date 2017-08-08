class Tag < ApplicationRecord
  after_create_commit {TagsearchJob.perform_later self}
end
