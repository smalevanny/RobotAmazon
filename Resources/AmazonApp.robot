*** Settings ***
Resource  PO/MainPage.robot
Resource  PO/TopSearch.robot
Resource  PO/SearchResults.robot
Resource  PO/Product.robot
Resource  PO/Cart.robot
Resource  PO/SignIn.robot
Library  ../Libraries/MyLibrary.py
Resource  PO/MainPage.robot
Resource  PO/TopSearch.robot
Resource  PO/SearchResults.robot
Resource  PO/Product.robot
Resource  PO/Cart.robot
Resource  PO/SignIn.robot

*** Keywords ***
Login
    [Arguments]  ${email}  ${password}
    SignIn.Login  ${email}  ${password}

Search For Products
    MainPage.Load
    ${test_return_value_from_keyword} =  TopSearch.Search For Products
    Log  ${test_return_value_from_keyword}
    Do Something From Library
    SearchResults.Verify Search Completed

Select Product
    SearchResults.Select Product
    Product.Verify Product Page Loaded

Add Product To Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Initiate Check Out

Verify That User Has To Sign In
    SignIn.Verify Page Loaded

