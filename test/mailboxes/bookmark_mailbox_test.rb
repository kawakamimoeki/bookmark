require "test_helper"

class BookmarkMailboxTest < ActionMailbox::TestCase
  test "" do
    assert_difference -> { people(:david).buckets.first.recordings.count } do
      receive_inbound_email_from_mail \
        to: 'save@example.com',
        from: people(:david).email_address,
        subject: "Example",
        body: <<~BODY
          --- Begin forwarded message ---
          From: Frank Holland <frank@microsoft.com>

          https://example.com
        BODY
    end
  end
end
