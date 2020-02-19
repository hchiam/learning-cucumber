# Learning cucumber

Just one of the things I'm learning. <https://github.com/hchiam/learning>

Write tests in [plain* English sentences](https://github.com/hchiam/learning-cucumber/blob/master/features/simple_math.feature) that map to tests: build trust and communicate better as a team!

*(You still have to phrase sentences in certain ways depending on how flexible your regexes are, but it's still way easier for non-programmers to read the test cases, and enables them to be more likely to contribute test cases. Besides, it's all about communication!)

## Notes

GitHub Repo to learn from: <https://github.com/cucumber/cucumber-js> which includes a Node.js example: <https://github.com/cucumber/cucumber-js/blob/master/docs/nodejs_example.md>

Install dependencies: (using [yarn](https://github.com/hchiam/learning-yarn) or npm)

```bash
yarn add -dev chai@latest cucumber@latest
```

Create 3 files: a [.feature](https://github.com/hchiam/learning-cucumber/blob/master/features/simple_math.feature) record, a [world](https://github.com/hchiam/learning-cucumber/blob/master/features/support/world.js), and [steps](https://github.com/hchiam/learning-cucumber/blob/master/features/support/steps.js).

```bash
mkdir features
mkdir features/support
touch features/simple_math.feature
touch features/support/world.js
touch features/support/steps.js
```

Run cucumber test:

```bash
./node_modules/.bin/cucumber-js
```

Or use my custom script command:

```bash
yarn test:cucumber
```

More notes:

- The .feature file is written in "plain English" = Gherkin syntax (Gherkin is a DSL, a Domain-Specific Language). For example, it has special key words: `Feature`, `Scenario`, `Given`, `When`, `Then`, `And`, etc. It also has special syntax for variables used in a table. No specific install needed to use Gherkin, just name the file with the extension ".feature".
- Cucumber connects/translates Gherkin scenarios to code. Cucumber.js basically uses regexes. This is powerful because it lets the .feature file fill in variable values, which make the "actual" .js code more flexible.
- "world" = available variables and functions.
- "steps" = where keywords and regexes map the Gherkin .feature text to actual test steps.

## More resources to learn from

Live demo to learn from: <https://cucumber.github.io/cucumber-js/>

Conceptual explanation: <https://www.youtube.com/watch?v=L3rHsE-nA78>

Medium Article to learn from: <https://medium.com/@mvwi/story-writing-with-gherkin-and-cucumber-1878124c284c>

### Combine [Cypress](https://github.com/hchiam/learning-cypress) and Cucumber

<https://medium.com/@itortv/how-to-integrate-cypress-and-cucumber-in-your-development-flow-in-just-a-few-weeks-96a46ac9165a>

Or maybe just try out this repo: <https://github.com/TheBrainFamily/cypress-cucumber-example>

- `cypress run --spec "**/*.feature"` for Cypress CLI output.
- `cypress run` for the Cypress GUI. And yes, the .feature(s) files can be read because of:
- [`cypress-cucumber-preprocessor`](https://www.npmjs.com/package/cypress-cucumber-preprocessor) lets you run Gherkin specs with Cypress.

```bash
npm install --save-dev cypress-cucumber-preprocessor
```

```js
// cypress/plugins/index.js
const cucumber = require('cypress-cucumber-preprocessor').default;
module.exports = (on, config) => {
  on('file:preprocessor', cucumber())
}

// cypress.json ( .features with an "s" is used for bundling - see npm notes: https://www.npmjs.com/package/cypress-cucumber-preprocessor )
{
  "testFiles": "**/*.feature"
}

// package.json
"cypress-cucumber-preprocessor": {
  "nonGlobalStepDefinitions": true
}
```

And put .feature files inside [`cypress/integration/...`](https://github.com/TheBrainFamily/cypress-cucumber-example/tree/master/cypress/integration), grouped with their respective test files.
