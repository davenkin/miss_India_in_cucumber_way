@movies
Feature: Watch Indian movies, dances and songs
  As an enthusiast of India movies
  I want to watch the video clips of dances and songs from Indian movies
  So that I can enjoy myself

  Scenario Outline: Watch Indian dances and songs on youtube
    Given I am on "youtube" homepage
    When I search for '<movie>'
    Then I should see video results
    When I click one video link
    Then I should be watching this video
  Examples:
  |movie|
  |three idiots       |
  |slumdog millionaire|
  |pyaar impossible   |
  |my name is khan    |
  |Mohabbatein        |