// features/support/steps.js

const {Given, When, Then} = require('cucumber');
const {expect} = require('chai');

/**
 * NOTE:
 * this.setTo and this.incrementBy come from world.js
 */

Given('a variable set to {int}', function(number) {
  // Setup
  this.setTo(number);
});

When('I increment the variable by {int}', function(number) {
  // Action
  this.incrementBy(number);
});

Then('the variable should contain {int}', function(number) {
  // Result (check)
  expect(this.variable).to.eql(number);
});
