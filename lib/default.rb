# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require 'pygments.rb'

require 'nanoc-sprockets'

require 'bootstrap-sass'
require 'bootstrap-bookingsync-sass'

require_relative './link_to_with_current'
require_relative './json_response'

include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo
include Nanoc::Sprockets::Helper
include LinkToWithCurrent
include JsonResponse
