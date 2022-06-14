*** settings ***
Documentation   Basic Search Functionality
Resource        ../../Resources/CommonFunctionality.robot
Resource        ../../Resources/PageObjects/HeaderPage.robot
Resource        ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup      CommonFunctionality.Open Browser And Maximize
Test Teardown   CommonFunctionality.Close Browser Window

*** Test cases ***
tc-001 Verify Basic Search Functionality for ebay
    [Documentation]     This test case verifies the basic search
    [Tags]      Functional
    
    HeaderPage.Input Search Text and Click Search with dict
    SearchResultsPage.Verify Search results

tc-002 Verify Advance Search Functionality
    [Documentation]     This test case verifies the advance search
    [Tags]      Functional

    HeaderPage.Click on Advance Search Link