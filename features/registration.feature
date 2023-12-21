Feature: Register tokopedia

@register
Scenario: User able to register
    Given open tokopedia page 
    When click register register
    Then user successfully do register