*** Settings ***
Resource  PO/MainPage.robot
Resource  PO/TopSearch.robot
Resource  PO/SearchResults.robot
Resource  PO/Product.robot
Resource  PO/Cart.robot
Resource  PO/SignIn.robot

*** Keywords ***

user is not logged in
    MainPage.Load

user searches for products
    TopSearch.Search For Products

search results contain relevant products
    SearchResults.Verify Search Completed

user selects product
    SearchResults.Select Product

correct product page loads
    Product.Verify Product Page Loaded

user adds product to his cart
    Product.Add To Cart

the product is present in cart
    Cart.Verify Product Added

user attempts to check out
    Cart.Initiate Check Out

user is required to sign in
    SignIn.Verify Page Loaded

