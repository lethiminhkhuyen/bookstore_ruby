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
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( mainStyle.css headerStyle.css footerStyle.css landingPage.css header.js footer.js itemPreview.css itemPreview.js filters.css filters.js itemDetails.css itemDetails.js basketItem.css basketItem.js postageAddress.css postageAddress.js summary.css summary.js index.css index.js category.css category.js products.css products.js item.css item.js basket.css basket.js recommendationStyle.css recommendation.js cartStyle.css cart.js book_index.css)
