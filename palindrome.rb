class Palindrome
  def is_palindrome(string)
    default_string = string
    palindrome_string = string.reverse

    if default_string == palindrome_string
      puts true
    else
      puts false
    end
  end
end

palindrome = Palindrome.new

puts '=== Palindrome ==='
palindrome.is_palindrome('aba')
palindrome.is_palindrome('kodok')

puts '=== Does Not Palindrome ==='
palindrome.is_palindrome('try')
palindrome.is_palindrome('kucing')
