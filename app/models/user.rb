class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :registerable, :recoverable, :validatable
  devise :ldap_authenticatable, :rememberable, :trackable,
         :authentication_keys => [ :username ]
end
