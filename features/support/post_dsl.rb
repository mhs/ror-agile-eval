module Features
  module Support
    module PostDSL
      def dsl_values
        @dsl_values ||= {}
      end

      def set_current_posts(posts)
        dsl_values[:current_posts] = posts
      end

      def current_posts
        dsl_values[:current_posts] || raise("No :current_posts have been set")
      end
      
      def see_post_listed(post)
        fields_displayed = %w(author title description)
        fields_displayed.each do |field|
          response.should have_selector(".post .#{field}", :content => post[field])
        end
      end

      def do_not_see_post_with_title_listed(title)
        response.should_not have_selector(".post .title", :content => title)
      end
    end
  end
end

World(Features::Support::PostDSL)