class Comment < ApplicationRecord
    belongs_to :commentable, polymorpphic: true
end
