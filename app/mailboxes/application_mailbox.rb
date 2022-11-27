class ApplicationMailbox < ActionMailbox::Base
  routing /^save@/i => :bookmark
end
