if ENV["JEKYLL_ENV"] != "production"
  begin
    require "webrick/log"

    class WEBrick::Log
      unless method_defined?(:error_without_connection_reset_filter)
        alias_method :error_without_connection_reset_filter, :error

        def error(data)
          return if data.is_a?(Errno::ECONNRESET)
          return if data.to_s.include?("Connection reset by peer")

          error_without_connection_reset_filter(data)
        end
      end
    end
  rescue LoadError
    # WEBrick is only present when serving locally.
  end
end
