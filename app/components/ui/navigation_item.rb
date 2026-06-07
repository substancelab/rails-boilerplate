# frozen_string_literal: true

module UI
  class NavigationItem < ViewComponent::Base
    renders_one :badge
    renders_one :icon
    renders_one :label

    attr_reader :href

    def initialize(href:)
      super()

      @href = href
    end
  end
end
