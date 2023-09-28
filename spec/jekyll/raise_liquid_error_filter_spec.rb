# frozen_string_literal: true

require 'spec_helper'

RSpec.describe(Jekyll::RaiseLiquidError::RaiseLiquidErrorFilter) do

  let(:output) do
    render_liquid(content, {'error_message' => error_message})
  end

  #  TODO: make tests work
  #  somehow I need to be able to inject context.registers, but don't
  #  know enough about ruby to do that atm
  
#  context "Raising an unconditional error" do
#    msg = "This code should never be reached!"
#
#    let(:error_message) { msg }
#    let(:content) { "{{ '#{error_message}' | raise_error }}" }
#
#    it "produces the correct error message" do
#      expect { output }
#        .to(raise_error do |error|
#          expect(error).to be_a(Exception)
#          expect(error.message).to eq msg
#        end)
#    end
#  end
end
