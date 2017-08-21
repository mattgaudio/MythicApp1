require "administrate/base_dashboard"

class BracketPoolDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    bracket: Field::BelongsTo,
    bracket_pool_players: Field::HasMany,
    players: Field::HasMany,
    teams: Field::HasMany,
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    name: Field::String,
    console: Field::String,
    player_size: Field::Number,
    title: Field::String,
    active: Field::Boolean,
    activation_time: Field::DateTime,
    end_time: Field::DateTime,
    duration: Field::Number,
    weekly: Field::Boolean,
    nightly: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :bracket,
    :bracket_pool_players,
    :players,
    :teams,
    :nightly,
    :weekly,
    :console,
    :active,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :bracket,
    :bracket_pool_players,
    :players,
    :teams,
    :id,
    :created_at,
    :updated_at,
    :name,
    :player_size,
    :title,
    :active,
    :activation_time,
    :end_time,
    :duration,
    :weekly,
    :nightly,
    :console,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :bracket,
    :bracket_pool_players,
    :players,
    :teams,
    :name,
    :player_size,
    :title,
    :active,
    :activation_time,
    :end_time,
    :duration,
    :weekly,
    :nightly,
    :console,
  ].freeze

  # Overwrite this method to customize how bracket pools are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(bracket_pool)
  #   "BracketPool ##{bracket_pool.id}"
  # end
end
