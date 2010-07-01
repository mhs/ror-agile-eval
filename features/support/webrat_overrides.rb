module Features
  module Support
    module WebratOverrides
      def have_selector(selector, options={})
        Webrat::Matchers::HaveSelector.new(selector, options)
      end
    end
  end
end
World(Features::Support::WebratOverrides)
