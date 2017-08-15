require "administrate/field/base"

class SearchablegameField < Administrate::Field::Base
  def to_s
    data
  end

  def pick_by_img
  	data.short_title
  end

end
