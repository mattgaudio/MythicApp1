require "administrate/field/base"

class PaperclipField < Administrate::Field::Base
   def url
    data.url(:l)
  end

  def xs
    data.url(:xs)
  end

  def to_s
    data
  end
end
