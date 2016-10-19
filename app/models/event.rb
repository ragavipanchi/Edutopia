# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class Event < ActiveRecord::Base
  include Shared::Callbacks
  belongs_to :user
  acts_as_votable
  acts_as_commentable
  attr_accessor :private_flag

  include PublicActivity::Model
  tracked only: [:create, :like], owner: Proc.new{ |controller, model| model.user }
  tracked only: [:create, :like], private_flag: Proc.new{ |controller, model| model.private_flag }
  validates_presence_of :name
  validates_presence_of :when
  validates_presence_of :user
  def private_flag
   @private_flag || false
  end
end
