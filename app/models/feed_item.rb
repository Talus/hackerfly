# == Schema Information
# Schema version: 2008100601002
#
# Table name: feed_items
#
#  id               :integer       not null, primary key
#  include_comments :boolean       not null
#  is_public        :boolean       not null
#  item_id          :integer       
#  item_type        :string(255)   
#  created_at       :datetime      
#  updated_at       :datetime      
#

# == schema info
# schema ver: 
#
# table name: feed_items
#
#  id               :integer       not null, primary key
#  include_comments :boolean       not null
#  is_public        :boolean       not null
#  item_id          :integer       
#  item_type        :string(255)   
#  created_at       :datetime      
#  updated_at       :datetime      
#

class FeedItem < ActiveRecord::Base  
  belongs_to :item, :polymorphic => true
  has_many :feeds
  attr_immutable :id, :item_id, :item_type
  
  def partial
    item.class.name.underscore
  end
end
