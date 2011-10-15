@pecha_kucha
Feature: Watch pecha kucha for TWU 23
  As students of TWU 23
  I want to watch pecha kucha video for TWU 23
  So that I can see every twu23er's shining moment

  Scenario: Watch pecha kucha video of TWU 23 on youtube
    Given I am on "youtube" homepage
    When I search for "twu23"
    Then I should see video results
    When I click one video link
    Then I should be watching this video