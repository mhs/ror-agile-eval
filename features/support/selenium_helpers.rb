module Features
  module Support
    module SeleniumHelpers
      
      # Selenium's +wait_for_condition+ was not waiting properly so 
      # this is a wrapper which allows us to wait for conditions
      # on the test-side, instead of strictly in the browser
      def wait_for_condition(timeout=5.seconds, interval=1.seconds, &blk)
        t = Time.now
        loop do
          exception = nil
          begin ; 
            break if blk.call 
          rescue => ex
            exception = ex
          end
          sleep interval.to_i
          raise "Condition not met: #{exception.inspect if exception}" if (Time.now - t) >= timeout
        end
        true
      end
      
    end
  end
end

World(Features::Support::SeleniumHelpers)