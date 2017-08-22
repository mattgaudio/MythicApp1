# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( application.css.scss )

Rails.application.config.assets.precompile += %w( application.css.scss main.scss main.js brackets.scss brackets.js tournaments.scss tournaments.js charges.css charges.js
 clearance/sessions.css clearance/users.css bracket_players.css bracket_pools.css users.css dashboards.css
 tournaments/manifest.scss bracket_pool_players.css products.css clearance/passwords.css players.css )
