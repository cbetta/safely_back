module ActionView
  module Helpers
    module UrlHelper
      alias_method :_unsave_back_url, :_back_url

      def _back_url
        back_url = _unsave_back_url
        begin URI.parse(back_url)
        rescue Exception => e
          back_url = 'javascript:history.back()'
        end
        back_url
      end
    end
  end
end
