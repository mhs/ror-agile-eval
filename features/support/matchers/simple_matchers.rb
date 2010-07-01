module Features
  module Support
    module Matchers
      def have_alert(text)
        simple_matcher("have alert: #{text}") { |given| 
          given.selenium.get_alert == text 
        }
      end

      def have_confirmation(text)
        simple_matcher("have confirmation: #{text}") { |given| given.selenium.confirmation == text }
      end

      def be_visible(selector)
        locator = "css=#{selector}"
        simple_matcher("#{selector} should be visible") do |given| 
          wait_for_condition do
            given.selenium.is_visible(locator) == true
          end
        end
      end

      def not_be_visible(selector)
        locator = "css=#{selector}"
        simple_matcher("#{selector} should not be visible") do |given| 
          wait_for_condition do
            given.selenium.is_visible(locator) == false
          end
        end
      end
    end
  end
end

World(Features::Support::Matchers)