Feature: As a user I want to open movie details and add it to favorites
  Scenario: When I tap on Movie icon i should see movie details
    Given I land on home screen
    When I press on Movie card
    Then I should see Movie details page
    Then I should add Movie to favorites
    Then I should see Movie the message that movie is added to favorites



