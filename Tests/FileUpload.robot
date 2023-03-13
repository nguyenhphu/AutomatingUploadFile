*** Settings ***
Documentation  File Upload in Robot Framework
Library  SeleniumLibrary
Library   OperatingSystem
Variables  ../Resources/PageObject/TestData/Testdata.py

*** Variables ***
# Name of file will be uploaded
# ${AddFile}  C:/_STYL/Projects/UploadFileAutomation/Resources/Upload/rose.jpg

*** Test Cases ***
# Scenario: Uploading a valid file with size <= 196.45 MB
#      Given I visit the file upload page
#      When I upload a file with valid size
#      Then page should show file has been successfully uploaded

Verify Valid File Upload
    [documentation]  This test case verifies that a user can successfully upload a file that its size < 196.45MB
    [tags]  Regression

    I visit the file upload page
    I upload a file with valid size
    Page should show file has been successfully uploaded

    Close Browser

*** Keywords ***
I visit the file upload page
    Open Browser  https://demo.guru99.com/test/upload/  Chrome
    Wait Until Element Is Visible  id:submitbutton  timeout=20

I upload a file with valid size
    ${filesize}=    Get File Size   ${AddFile}
    Log     file size is ${filesize}
    Run keyword If  ${filesize} <= 196450000     Click fileupload
    ...     ELSE  Fail  Size of upload file is larger than 196.45 MB

Page should show file has been successfully uploaded
    Wait Until Page Contains    has been successfully uploaded

Click fileupload
    Choose File  id:uploadfile_0    ${AddFile}
    Select Checkbox  id:terms
    Click Element  id:submitbutton

