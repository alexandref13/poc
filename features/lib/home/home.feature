@splash_screen @terms_of_use @user_preferences
Feature: Splash screen
    Scenario: Show me a "splash screen" of application
        And I read user preferences
        And I read application configs,
            Then load data in memory
            And show "home screen"
            Or "terms of use screen"
    Usecases:
        get_terms_of_use
        get_user_preferences
        get_application_configs
    Routes:
        go_to_home_screen
        go_to_terms_of_use_screen

Feature: Terms of use screen
    Scenario: On "terms of use screen" I can read "terms of use"
        And if I accepted the "terms of use"
        Show me the "home screen"
        Else close the application
    Usecases:
        get_terms_of_use
        update_terms_of_use
        close_the_application
    Routes:
        go_to_home_screen