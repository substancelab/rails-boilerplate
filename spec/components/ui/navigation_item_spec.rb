# frozen_string_literal: true

require "rails_helper"

RSpec.describe UI::NavigationItem, :type => :component do
  it "renders" do
    expect(
      render_inline(described_class.new(:href => "https://example.com")).to_html
    ).to have_link(:href => "https://example.com")
  end
end
