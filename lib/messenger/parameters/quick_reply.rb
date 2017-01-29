module Messenger
  module Parameters
    class QuickReply

      attr_accessor :payload

      def initialize(payload:)
        @payload = payload
      end
    end
  end
end
