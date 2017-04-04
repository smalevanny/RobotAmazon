*** Settings ***
Library  Selenium2Library

*** Variables ***
${PRODUCT_ADDTOCART_BUTTON} =  id=add-to-cart-button

*** Keywords ***
Verify Product Page Loaded
    Wait Until Page Contains  Back to search results

Add To Cart
    Click Button  ${PRODUCT_ADDTOCART_BUTTON}
