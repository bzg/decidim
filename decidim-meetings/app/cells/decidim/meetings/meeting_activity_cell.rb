# frozen_string_literal: true

module Decidim
  module Meetings
    # A cell to display when a meeting has been created.
    class MeetingActivityCell < ActivityCell
      def title
        I18n.t(
          "decidim.meetings.last_activity.new_meeting_at_html",
          link: participatory_space_link
        )
      end

      def resource_link_text
        Decidim::Meetings::MeetingPresenter.new(resource).title
      end
    end
  end
end
