# frozen_string_literal: true

require 'spec_helper'
require 'fortnox/api/types'
require 'fortnox/api/types/examples/types'

describe Fortnox::API::Types do
  let(:klass) { Fortnox::API::Types::AccountNumber }

  context 'when AccountNumber created with nil' do
    subject { klass[nil] }

    it { is_expected.to be_nil }
  end

  context 'when AccountNumber created with valid number' do
    subject { klass['1234'] }

    it { is_expected.to eq 1234 }
  end

  context 'when AccountNumber created with a too large number' do
    include_examples 'raises ConstraintError', '10000'
  end

  context 'when AccountNumber created with a negative number' do
    include_examples 'raises ConstraintError', '-1'
  end
end
