# encoding: utf-8
# Copyright 2014-2017 Aerospike, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'aerospike/policy/batch_policy'

module Aerospike

  # Container object for query policy command.
  class QueryPolicy < BatchPolicy

    attr_accessor :include_bin_data

    def initialize(opt={})
      super(opt)

      @max_retries = 0

      @include_bin_data = opt.fetch(:include_bin_data, true)

      self
    end

  end # class

end # module
