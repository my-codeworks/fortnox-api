require 'fortnox/api/validators/base'
require 'fortnox/api/validators/document_row'

module Fortnox
  module API
    module Validator
      class InvoiceRow < Fortnox::API::Validator::Base
        include DocumentRow
      end
    end
  end
end