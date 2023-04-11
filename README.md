# Dashboards

## Target

Here is your target:

[http://dashboards.ma tchthetarget.com/](http://dashboards.matchthetarget.com/)

The required portion of the project is the foreign exchange rates.

## APIs

### exchangerate.host

 - API endpoint for available symbols: [https://api.exchangerate.host/symbols](https://api.exchangerate.host/symbols)
 - API endpoint to convert between two currencies (USD to EUR): [https://api.exchangerate.host/convert?from=USD&to=EUR](https://api.exchangerate.host/convert?from=USD&to=EUR)
 - [Full documentation](https://exchangerate.host/#/#docs)

### The COVID Tracking Project

 - API endpoint for a single state (Illinois): [https://api.covidtracking.com/v1/states/ca/current.json](https://api.covidtracking.com/v1/states/ca/current.json)
 - [Full documentation](https://covidtracking.com/data/api)
 
## Setup

1. Start the web server by running `bin/server`.
1. Navigate to your live application preview.
1. As you work, remember to navigate to `/git` and **commit often as you work.**
1. Run `rails grade` as often as you like to see how you are doing.

## Specs
<details>
  <summary>Click here to see names of each test</summary>

/forex has a level one heading with the text 'Currency pairs' 

/forex lists each of the Currency Symbols from the API 

/forex has a link to '/forex/X', where 'X' is a currency symbol, for each currency symbol 

/forex/[CURRENCY SYMBOL] has a level one heading with the text 'Convert [CURRENCY SYMBOL]' 

/forex/[CURRENCY SYMBOL] has a level one heading with the text 'Convert [CURRENCY SYMBOL]' 

/forex/[CURRENCY SYMBOL] has a link with the text 'back' to '/forex' 

/forex/[CURRENCY SYMBOL] has a link with the text, 'Convert 1 X to Y...', to '/forex/X/Y', for each currency symbol 

/forex/[CURRENCY SYMBOL]/[CURRENCY SYMBOL] has a level one heading with the text 'Convert [CURRENCY SYMBOL] to [CURRENCY SYMBOL]' 

/forex/[CURRENCY SYMBOL]/[CURRENCY SYMBOL] has the text '1 [CURRENCY SYMBOL] equals [CURRENCY SYMBOL]' 

/forex/[CURRENCY SYMBOL]/[CURRENCY SYMBOL] has a link with the text 'back' to '/forex/[CURRENCY SYMBOL]' 

/forex/[CURRENCY SYMBOL]/[CURRENCY SYMBOL] has a link with the text 'back' to '/forex/[CURRENCY SYMBOL]' 

</details>
