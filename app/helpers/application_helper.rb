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
  def get_event_path(event_type)
    case
      when current_user.has_role?(:college)
        case event_type
          when "campus_drive"
            new_event_path(event_type: "campus_drive")
          when "workshop"
            new_event_path(event_type: "workshop")
          when "fest"
            new_event_path(event_type: "fest")
          when "other_event"
            new_event_path(event_type: "other_event")
        end
      when current_user.has_role?(:student)
        case event_type
          when "campus_drive"
            events_path(event_type: "campus_drive")
          when "workshop"
            events_path(event_type: "workshop")
          when "fest"
            events_path(event_type: "fest")
          when "other_event"
            events_path(event_type: "other_event")
        end
      end
    end
end
