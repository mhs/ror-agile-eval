module Features
  module Support
    module WebDSL
      def choose_ok_on_next_confirmation
        selenium.choose_ok_on_next_confirmation
      end
      
      def choose_cancel_on_next_confirmation
        selenium.choose_cancel_on_next_confirmation
      end
      
      def click_link_with_selector(selector, locator="css")
        locator = "#{locator}=#{selector}"
        selenium.wait_for_element locator, :timeout_in_seconds => 5
        selenium.click locator
      end
    end
  end
end

World(Features::Support::WebDSL)