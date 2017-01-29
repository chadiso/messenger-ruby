
module Messenger
  module Elements
    class QuickReplies
      include Components::Element

      attr_accessor :text, :attachment, :quick_replies

      ATTRIBUTES = %w(text quick_replies).freeze

      def initialize(text:, quick_replies:, attachment:)
        @text = text
        @attachment = attachment if attachment.is_a? Messenger::Components::Attachment
        @quick_replies = build_elements(quick_replies)
      end

      def build_elements(elements)
        elements.map { |element| element.build } if elements.present?
      end
    end
  end
end