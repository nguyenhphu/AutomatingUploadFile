# UploadFileAutomation
<h3> Summary </h3>

This Test Plan is for automating the regression tests on upload features of this Website: https://demo.guru99.com/test/upload/
Automation test will be run on the latest version of Chrome (Version 110.0.5481.180) on Windows 10 Pro only on this phase. ( Firefox, Edge, Safari will be selected on next phase)

<h3> Test strategy and Framework </h3>
Using Robot Framework (https://robotframework.org/) as automation framework and using BDD for test cases design. With Robot framework, Python can be used to be able leverage many available libraries or develop necessary libraries in the future.
Applying Robot Framework Architecture. This framework is not only used for Web UI testing, but also could be extended for automated testing Rest APIs, database in the future.

<h3> Continuous Integration </h3>
Using Jenkin to set up CI system and Jenkins' Robot Framework plugin (https://plugins.jenkins.io/robot/) is also used for visualizing the test results.

# How to start
<h3> Installing Prequitsite software </h3>
- Pycham (https://www.jetbrains.com/pycharm/download/#section=windows)
- Intellibot (https://github.com/mtrubs/intellibot)
- SeleniumLibrary: To install we have to use – pip3 install robotframework-seleniumlibrary.

<h3> How to use automation test script </h3/

1. Clone the project
2. Import the Project in PyCharm
3. Run robot -d Results Tests/FileUpload.robot to execute a single Test. Run robot -d Results Tests to execute all Tests.
4. Go to Results folder to get the HTML Reports.
