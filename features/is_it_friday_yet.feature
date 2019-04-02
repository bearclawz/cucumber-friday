@runall

Feature: Is it Friday yet?
  Everyone wants to know if it's Friday

  Scenario Outline: Today is or is not Friday
    Given today is "<day>"
    When I ask whether it's Friday yet
    Then I will be told "<answer>"

    @runpass
    Examples:
      | day | answer |
      | Friday | Wahooo! |
      | Sunday | Nope! |
      | Monday | Nope! |
      | Thursday | It's small Friday! |
      | anything else! | Nope! |

    @runfail
    Examples:
#      false entries:
      | day | answer |
      | Friday | Not yet - Product Bug|
      | Wednesday | You wish! - Intended Bug|
      | Thursday | Its small Friday - Automation Bug|

#  Scenario: Flaky test
#    Given today is Friday
#    When I run this test, using a randomizer
#    Then this test might fail

#    Scenario:
#      Given the actual day is retreived from the system
#        When I ask whether it's Friday yet
#        Then I should be told "<Nope>" when it's not
#        But when it is, I should be told "<Wahooo!>"
