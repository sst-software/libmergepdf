Feature: PDFs with compression not supported by fpdi, pdf ver > 1.4

  @fpdi2
  Scenario: I merge compressed pdfs with the Fpdi2Driver
    Given a pdf of version "1.4" with pages "1"
    And a pdf of version "1.5" with pages "1"
    And a pdf of version "1.6" with pages "1"
    And a pdf of version "1.7" with pages "1"
    When I merge
    Then there is an error
