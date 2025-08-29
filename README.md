# sdg_example

## Things considered out of scope
1. Navigation
2. Localization (hence no language headers for api for example, or localized strings)
3. UI: built strictly for functional purposes
4. UI breakpoints. lets assume **phone only**
5. Fancy linting rules. Useful in production, too long to set up here
6. Harcoded values: **obviously base url should not be hardcoded in the code, nor should other things**

## Highlights
1. interface segregation in data layer
2. based on components: country and city dropdowns could be dropped into another screen if needed. could take in loaded data externally if needed. very flexible is what i am getting at.
3. highly observable: analytics and error logging (you can find interesting data in the console too). theoretically you could build dashboards and stuff with this information
4. its tested!!!! there are tests!!! seriously, check them out, please.
5. it handles lack of internet gracefully
6. state management: using built-in flutter's valuenotifier+valuelistenablebuilder. no crazy concurrency here hence no need for state management

also, i believe that working with github like its a real project bulletpoint needs to be addressed.
i am a fan of trunk based development, ci+tests making sure your code is sound, but implementing it here, especially with no one to codereview. selfmerged pull requests in my opinion are an irrelevant test for a senior position (but thats just me)
