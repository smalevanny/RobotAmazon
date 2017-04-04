*** Settings ***
Library  Selenium2Library

*** Variables ***
${CART_CHECKOUT_BUTTON} =   id=hlb-ptc-btn-native

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Initiate Check Out
    Click Link  ${CART_CHECKOUT_BUTTON}