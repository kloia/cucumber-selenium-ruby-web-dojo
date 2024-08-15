# Cucumber Selenium Ruby Web Dojo

This project contains web dojo

# Tool stack

* **Ruby** - Development language
* **RubyMine IDE** - Development IDE
* **Cucumber** - Gherkin Syntax Framework
* **Capybara** - Web-based APP Framework
* **RSpec** - Assertion & Validation Framework
* **Selenium** - Web APP Test Automation Tool

# Project Repository

* The project repository can be cloned from
  the [cucumber-selenium-ruby-web-base](https://github.com/kloia/cucumber-selenium-ruby-web-base.git) link.

# Installations

### Ruby (stable release) - Development Language

* For Mac: Run the following command in terminal.
  ```
  brew install ruby
  ```
* For Windows: It is downloaded and installed from the <a href="https://rubyinstaller.org/downloads/archives/">Download
  Archives</a> page.

  NOTE: Run the  ```ruby -v ``` command in terminal to check that the installation was successful.
  If you see ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21] or similar output, your installation was
  successful.

### Required Packages

* To install the necessary libraries , the following command is run in the project directory.
  ```
  gem install bundler
  bundle install
  ```
  # Run Test

1. Run:

   `cucumber --name "Login and logout successfully"`
   `cucumber --tag @success_login`


2. Run with env variables:

   `cucumber --tag @success_login browser=firefox`
   `cucumber --tag @success_login headless=true`

# Naming Convention

The `snake_case` naming convention will be followed throughout the project.

At the bottom of this page, you will find a wider discussion about naming rules

```
folder name = my_folder

ruby file name = my_file.rb

feature file name = my_feature.rb

class name = MyClass

method name = my_method

variable name = my_variable

element name = @my_element_id @my_element_css @my_element_xpath

Enum = ALL_CAPITAL = 'value'

Global variable = $MY_VAR

Config Constant = MY_CONSTANT

Feature name = my_feature

tag name = @my_tag 
```

# Web Element Standards

| Prefix        | Örnek             | Locator      |
| ------------- |-------------------|------------- |
| btn           | btn_login_id      |  Button      |
| chk           | chk_status_css    |  Checkbox    |
| cbx           | cbx_english_xpath |  Combo box   |
| lbl           | lbl_username_css  |  Label       |
| drp           | drp_list_xpath    |  Drop down   |
| slc           | slc_list_css      |  Selectbox   |
| txt           | txt_email_css     |  Textbox     |
| img           | img_logo_xpath    |  Image       |
| rdx           | rdx_female_xpath  |  Radiobox    |

# Page Method Standards

| Prefix | Action         | Description                |
|--------|----------------|----------------------------|
| click  | click_register | Click button or link       |
| fill   | fill_email     | Type textbox               |
| check  | check_gender   | Check a check box          |
| select | select_year    | Select value from drop down |
| verify | verify_menu    | Assertion                  |

# Scenario Standards

* Scenarios will be written in `feature` file.
* The syntax ``Given, When, Then, And`` will be used.
* At the beginning of the feature file, after the ``Feature`` keyword, the relevant feature will be named..
* Scenarios will be written after the ``Scenario`` keyword. Scenario name must be unique.
* Each scenario should be tagged. Relevant tags should be placed at the top of the script. Like @regression, @smoke.
* The following sample scenario will be followed while the scenario steps are being written.

```gherkin
Given prerequisite
And if there are additional conditions
When the action is taken
And if there is additional action
Then where relevant verifications are made
And additional verifications
```

**Scenario Example**

```gherkin
Given homepage is opened
And click login button
And fill the valid credentials
When click login button
Then verify my account icon
And verify the title is changed to "My Title"
```

# Step Definition Formula

* action + object + location

```gherkin
And click login button on homepage
```

* action + object + value + location

```gherkin
And set email with "m@f.com" on homepage
```

* verification action + object + location

```gherkin
Then verify the new address on my delivery addresses page
```

* verification action + object + value + location

```gherkin
Then verify the new address title is "Home" on my delivery addresses page
```

# Tag Standards

```
@wip = Scenario / feature that has not been developed yet
@smoke = Scenario / feature expected to work within the scope of Smoke
@excluded  = Scenario / feature that no longer exists on the application, but whose scenario has been improved
@bug_fix = Scenario / feature pending bug fix due to an existing bug on the application
@prod  = Scenarios to run in the prod
@regression  = Scenarios to run in the regression
@feature_tag = The tag name to be given to each feature file
@scenario_tag = The tag name to be given to each scenarios
```

# Commit ve PR structure

```
* Branch names must be opened with the ticket id of the job. Example: QA-74
* As much as possible, commits should be committed with clear explanations.
* Commit should be progressed in as small pieces as possible (Atomic). This will make the rollback easier.
* It will be merged into the master after the review of the obligatory reviewers from the PR QA team.
* Before merging to the master, the pipeline will be run on the relevant branch and it will be verified that there is no problem.

```
