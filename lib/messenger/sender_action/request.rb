# https://developers.facebook.com/docs/messenger-platform/send-api-reference/sender-actions
module Messenger
  module SenderAction
    class Request < Messenger::Request

      def initialize(component, recipient_id)
        Rails.logger.info '::Messenger::SenderAction::Request calling...'
        super
      end

      def add_element(element)
        @body[:sender_action] = element.to_s # we need just a single string
      end

      def body
        {
            recipient: {id: @recipient_id},
            sender_action: 'mark_seen' #default 'Mark last message as read'
        }
      end
    end
  end
end