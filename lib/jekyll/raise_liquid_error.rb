# frozen_string_literal: true

require_relative "raise_liquid_error/version"

module Jekyll
  module RaiseLiquidError
    module RaiseLiquidErrorFilter

      def raise_error(msg)
        source_file = @context.registers[:page]['path']
        err_msg = "In #{source_file}: #{msg}"
        raise err_msg
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::RaiseLiquidError::RaiseLiquidErrorFilter)
