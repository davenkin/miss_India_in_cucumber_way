Feature: Search news about India
  As an enthusiast of India
  I want to know what's going on in India
  So that I am informed of the events currently happening in India

  Scenario: Search news for India
    Given I am on google home page
    And I switch to news search page
    When I search for "India"
    Then I should see at least 10 results
