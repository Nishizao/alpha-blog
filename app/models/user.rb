class User < ActiveRecord::Base
    validates :username, prescence: true,
    uniqueness: {case_sensitive: false},
    length: {minimum: 3, maximum: 25}
    validates :password, prescence: true,
    uniqueness: true,
    length: {minimum: 3, maximum: 25}
end