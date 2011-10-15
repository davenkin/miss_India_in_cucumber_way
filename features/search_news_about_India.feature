Feature: Search news about India
  As an enthusiast of India
  I want to know what's going on in India
  So that I am informed of the events currently happening in India

  Scenario Outline: Search recent news about India
    Given I am on Google "News" page
    When I search for '<key_word>'
    Then I should see the recent news about '<key_word>'
   Examples:
    |key_word          |
    |India             |
    |ThoughtWorks India|
    |Bangalore         |
    |Taj Mahal         |
