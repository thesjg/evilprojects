class User
  include DataMapper::Resource
  
  attr_accessor :email_confirmation, :password_confirmation

  property  :id,          Serial
  property  :username,    String,   :nullable => false, :length => 20, :unique_index => true
  property  :name,        String,   :nullable => false, :length => 63
  property  :email,       String,   :nullable => false, :length => 63
  property  :password,    String,   :nullable => false, :length => 63
  
  property  :created_at,  DateTime
  property  :updated_at,  DateTime
  
  validates_length        :username,          :within => 3..63
  validates_length        :password,          :within => 6..63
  validates_is_unique     :username
  validates_format        :email,             :as => :email_address
  validates_present       :email_confirmation
  validates_present       :password_confirmation
  validates_is_confirmed  :email
  validates_is_confirmed  :password
  
  def username=(value)
    attribute_set :username, value.downcase unless value.nil?
  end
end
