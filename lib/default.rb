# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.

require_relative './link_to_with_current'

include Nanoc::Helpers::Rendering
include Nanoc::Helpers::LinkTo
include LinkToWithCurrent
