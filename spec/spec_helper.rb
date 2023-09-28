# frozen_string_literal: true

require 'liquid'
require "jekyll/raise_liquid_error"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  def render_liquid(content, variables)
    template = Liquid::Template.parse(content)
    template.render(variables)
  end
end
