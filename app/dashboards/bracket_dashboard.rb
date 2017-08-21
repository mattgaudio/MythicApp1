require "administrate/base_dashboard"

class BracketDashboard < Administrate::BaseDashboard

  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    game: Field::BelongsTo,
    event: Field::DateTime,
    title: Field::String,
    tournament_type: Field::String,
    players_per_team: Field::Number,
    rounds: Field::Number,
    bracket_pools: Field::HasMany,
    bracket_pool_players: Field::HasMany,
    console_xbox: Field::Boolean,
    console_ps4: Field::Boolean,
    console_steam: Field::Boolean,
    nightly_free: Field::Boolean,
    nightly_10: Field::Boolean,
    nightly_25: Field::Boolean,
    nightly_100: Field::Boolean,
    weekly_free: Field::Boolean,
    weekly_10: Field::Boolean,
    weekly_25: Field::Boolean,
    weekly_100: Field::Boolean,
    weekly_250: Field::Boolean,
    weekly_500: Field::Boolean,
    brackets_filled: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :game,
    :event,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :game,
    :event,
    :title,
    :tournament_type,
    :players_per_team,
    :rounds,
    :console_xbox,
    :console_ps4,
    :console_steam,
    :nightly_free,
    :nightly_10,
    :nightly_25,
    :nightly_100,
    :weekly_free,
    :weekly_10,
    :weekly_25,
    :weekly_100,
    :weekly_250,
    :weekly_500,
    :brackets_filled,
    :bracket_pools,
    :bracket_pool_players,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :game,
    :event,
    :title,
    :tournament_type,
    :players_per_team,
    :rounds,
    :console_xbox,
    :console_ps4,
    :console_steam,
    :nightly_free,
    :nightly_10,
    :nightly_25,
    :nightly_100,
    :weekly_free,
    :weekly_10,
    :weekly_25,
    :weekly_100,
    :weekly_250,
    :weekly_500,
  ].freeze

  # Overwrite this method to customize how brackets are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(bracket)
  #   "Bracket ##{bracket.id}"
  # end
end
