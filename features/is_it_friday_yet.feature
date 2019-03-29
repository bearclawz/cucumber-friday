@runall

Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  Scenario Outline: Today is or is not Friday
    Given today is "<day>"
    When I ask whether it's Friday yet
    Then I should be told "<answer>"

    @runpass
    Examples:
      | day | answer |
      | Friday | TGIF |
      | Sunday | Nope |
      | Monday | Nope |
      | anything else! | Nope |

    @runfail
    Examples:
#      false entries:
      | day | answer |
      | Friday | Not yet - Product Bug|
      | Wednesday | You wish! - Intended Bug|
      | Thursday | Its small Friday - Automation Bug|