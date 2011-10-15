@saree
Feature: Learn how to wear a saree
  As a person who will send a saree to his sister as a gift
  I want to learn how to wear a saree
  So that I can teach my sister

  Scenario: Learn how to wear a saree on youtube
    Given I am on "youtube" homepage
    When I search for "how to wear a saree"
    Then I should see video results
    When I click one video link
    Then I should be watching this video