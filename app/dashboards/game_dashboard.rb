require "administrate/base_dashboard"

class GameDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    brackets: Field::HasMany,
    short_title: Field::String,
    long_title: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    game_type: Field::String,
    game_group: Field::String,
    game_img: PaperclipField,
    game_img_file_name: Field::String,
    game_img_content_type: Field::String,
    game_img_file_size: Field::Number,
    game_img_updated_at: Field::DateTime,
    active: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :short_title,
    :long_title,
    :game_img,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :short_title,
    :long_title,
    :created_at,
    :updated_at,
    :game_type,
    :game_group,
    :game_img,
    :game_img_file_name,
    :game_img_content_type,
    :game_img_file_size,
    :game_img_updated_at,
    :active,
    :brackets,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :short_title,
    :long_title,
    :game_type,
    :game_group,
    :game_img,
    :active,
  ].freeze

  # Overwrite this method to customize how games are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(game)
  #   "Game ##{game.id}"
  # end
end
