require "administrate/field/base"

class CustomBelongstoField < Administrate::Field::Base
  def to_s
    data
  end

end
