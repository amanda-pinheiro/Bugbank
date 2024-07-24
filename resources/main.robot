*** Settings ***
Library     SeleniumLibrary


### Data ###
Resource        data/general.robot
Resource        data/register.robot
Resource        data/operations.robot

### Shared ###
Resource        shared/setup_teardown.robot

### Pages ###
Resource        pages/home_page.robot
Resource        pages/transfer1_page.robot
Resource        pages/transfer2_page.robot
Resource        pages/setup_page.robot
