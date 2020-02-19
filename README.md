# Learning cucumber

Just one of the things I'm learning. <https://github.com/hchiam/learning>

Write tests in plain* English sentences that map to tests: build trust and communicate better as a team!

*(You still have to phrase sentences in certain ways, but it's still way easier for non-programmers to read, and enables them to be more likely to contribute test cases. Besides, it's all about communication!)

## Notes

GitHub Repo to learn from: <https://github.com/cucumber/cucumber-js> which includes a Node.js example: <https://github.com/cucumber/cucumber-js/blob/master/docs/nodejs_example.md>

Install dependencies: (using [yarn](https://github.com/hchiam/learning-yarn) or npm)

```bash
yarn add -dev chai@latest cucumber@latest
```

Create 3 files: a .feature record, a world, and steps.

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

## More resources to learn from

Live demo to learn from: <https://cucumber.github.io/cucumber-js/>

Conceptual explanation: <https://www.youtube.com/watch?v=L3rHsE-nA78>

Medium Article to learn from: <https://medium.com/@mvwi/story-writing-with-gherkin-and-cucumber-1878124c284c>
