class Post < ApplicationRecord

  has_many :post_tags
  has_many :tags, through: :post_tags

  scope :filter_by_tag, -> (tag) { where("tag iLIKE ?", "#{params[:tag]}")}


end