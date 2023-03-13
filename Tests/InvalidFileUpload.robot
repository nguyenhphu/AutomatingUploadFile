*** Settings ***
Documentation  File Upload in Robot Framework
Library  SeleniumLibrary
Library   OperatingSystem
Variables  ../Resources/PageObject/TestData/Testdata.py

*** Variables ***
# Name of file will be uploaded
#${AddInvalidFile}  C:/_STYL/Projects/UploadFileAutomation/Resources/Upload/invalidfile.zip

*** Test Cases ***
# Scenario: Uploading an invalid valid file with size > 196.45 MB
#      Given I visit the file upload page
#      When I upload an invalid file with valid size
#      Then page should show a warning message

*** Test Cases ***
# Scenario: Uploading nothing
#      Given I visit the file upload page
#      When I do not select a file and click upload file button
#      Then page should show a warning message
    
# NOTE:
#       The current website always show message of "1 file has been successfully uploaded"
#       when I don't select any file or select file with size > 195.45 MB, the expected message
#       is not determined, so this test case is not implemented.

