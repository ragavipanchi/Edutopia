# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable
  #, :confirmable,
  #  :recoverable, , :trackable, :validatable
  acts_as_voter
  acts_as_follower
  acts_as_followable

  has_many :posts
  has_many :comments
  has_many :events
  has_one :student
  has_one :college

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader

  validates_presence_of :name

  self.per_page = 10

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

end
