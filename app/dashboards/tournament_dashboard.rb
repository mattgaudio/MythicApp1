require "administrate/base_dashboard"

class TournamentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    tournament_type: Field::String,
    url: Field::String,
    name: Field::String,
    description: Field::String,
    tournament_id: Field::Number,
    open_signup: Field::Boolean,
    show_rounds: Field::Boolean,
    private: Field::Boolean,
    start_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    # :game,
    # :bracket,
    :name,
    :tournament_id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :tournament_id,
    :created_at,
    :updated_at,
    :tournament_type,
    :url,
    :name,
    :description,
    :open_signup,
    :show_rounds,
    :private,
    :start_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tournament_type,
    :url,
    :name,
    :description,
    :open_signup,
    :show_rounds,
    :private,
    :start_at,
  ].freeze

  # Overwrite this method to customize how tournaments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(tournament)
  #   "Tournament ##{tournament.id}"
  # end
end
