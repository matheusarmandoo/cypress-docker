Feature: Contract test with json-schema

    @example
    Scenario: Requesting from serverest api and validating contract
        When request all the users from /usuarios
        Then must be response the schema "/user/get-users" with status 200

    Scenario Outline: Posting users on serverest API and validating contract
            When post the user of type "<type>"
            Then must be response the schema "/user/post-user" with status <status>
            Examples: 
                | type    | status |
                | invalid | 400    |
                | valid   | 201    |