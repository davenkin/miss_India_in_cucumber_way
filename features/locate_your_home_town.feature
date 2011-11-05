@google_maps
Feature: Navigate to everybody's hometown
  As a person who spent a fantastic time with my twu23 friends
  I want to navigate to every twu23er's hometown
  So that I can see the place where she/he grew up

  Scenario Outline: Navigate to someone's hometown
    Given I am on Google "Maps" page
    When I search for the hometown '<address>' for '<twu23er>'
    Then I should be located to the hometown of '<twu23er>'

    Examples:
    |twu23er          |address            |
    |Vinay            |8.479949, 76.936827|
    |Teng Yun         |Tongxi Hechuan     |
#   |to add your address here|
