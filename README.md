# sdg_example

## Things considered out of scope
1. Navigation
2. Localization (hence no language headers for api for example, or localized strings)
3. UI: no design provided. strictly for functional purposes
4. UI breakpoints. lets assume phone only
5. Fancy linting rules. Useful in production, too long to set up here
6. Harcoded values: obviously base url should not be hardcoded in the code, nor should other things

## Highlights
1. interface segregation in data layer
2. flexible component system (for example, if required preload the country data thats easy: just pass a country source that returns preloaded data. abstraction is there)
3. highly observable: analytics and error logging (you can find interesting data in the console too)
