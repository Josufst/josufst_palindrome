require "josufst_palindrome/version"

module JosufstPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      scan(/[a-z]/i).join.downcase
    end
end

class String
  include JosufstPalindrome
end
