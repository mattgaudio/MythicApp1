require "administrate/base_dashboard"

class PlayerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    bracket_pool_players: Field::HasMany,
    bracket_pools: Field::HasMany,
    id: Field::Number,
    nickname: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    active_player: Field::Boolean,
    points: Field::Number,
    team_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :bracket_pool_players,
    :bracket_pools,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :bracket_pool_players,
    :bracket_pools,
    :id,
    :nickname,
    :created_at,
    :updated_at,
    :active_player,
    :points,
    :team_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :bracket_pool_players,
    :bracket_pools,
    :nickname,
    :active_player,
    :points,
    :team_id,
  ].freeze

  # Overwrite this method to customize how players are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(player)
  #   "Player ##{player.id}"
  # end
end
