class Post
  include DataMapper::Resource

  property  :id,          Serial
  property  :title,       String,   :nullable => false, :length => 63
  property  :content,     Text,     :nullable => false
  
  property  :created_at,  DateTime,  :nullable => false
  property  :updated_at,  DateTime,  :nullable => false
  property  :published_at, DateTime, :nullable => true

  belongs_to :user
  
end
