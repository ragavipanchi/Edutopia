# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

module ApplicationHelper
  def belongs_to_user?(resource)
    resource.user == current_user
  end
  def admin?
  	current_user.has_role? :admin
  end
  def college?
  	current_user.has_role? :college
  end
  def student?
  	current_user.has_role? :student
  end
end
