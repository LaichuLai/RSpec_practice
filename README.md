# RSpec 練習

建立scaffold專案，但把系統config預先建立的測試檔案關閉，只保留spec/models的測試檔

<!-- application.rb -->
    config.generators do  |g|
      g.controller_specs false
      g.view_specs false
      g.helper_specs false
      g.routing_specs false
      g.request_specs false
    end
