class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

output ||= Output.new

Given(/^I want to use caesar cipher$/) do
end

When(/^I run caesar with the string "(.*?)" and the key "(.*?)"$/) do |arg1, arg2|
  cipher = CaesarCipher.new(arg1, arg2, output)
  cipher.start
end

Then(/^I should see "(.*?)"$/) do |message|
  output.messages.should include(message)
end
