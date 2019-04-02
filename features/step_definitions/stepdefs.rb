

module FridayStepHelper
  def is_it_friday(day)
    if day == 'Friday'
      'Wahooo!'
    elsif day == 'Thursday'
      "It's small Friday!"
    else
      'Nope!'
    end
  end
end

World FridayStepHelper

Given("today is {string}") do |given_day|
  @today = given_day
end

When("I ask whether it's Friday yet") do
  @actual_answer = is_it_friday(@today)
end

Then("I will be told {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end