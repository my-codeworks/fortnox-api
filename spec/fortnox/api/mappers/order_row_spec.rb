# frozen_string_literal: true

require 'spec_helper'
require 'fortnox/api'
require 'fortnox/api/mappers/order_row'
require 'fortnox/api/mappers/examples/mapper'

describe Fortnox::API::Mapper::OrderRow do
  key_map = {
    housework: 'HouseWork',
    housework_hours_to_report: 'HouseWorkHoursToReport',
    housework_type: 'HouseWorkType',
    vat: 'VAT'
  }
  json_entity_type = 'OrderRow'
  json_entity_collection = 'OrderRows'

  it_behaves_like 'mapper', key_map, json_entity_type, json_entity_collection do
    let(:mapper) { described_class.new }
  end
end
