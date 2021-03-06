# frozen_string_literal: true

require 'fortnox/api/repositories/base'
require 'fortnox/api/models/article'
require 'fortnox/api/mappers/article'

module Fortnox
  module API
    module Repository
      class Article < Base
        MODEL = Model::Article
        MAPPER = Mapper::Article
        URI = '/articles/'
      end
    end
  end
end
