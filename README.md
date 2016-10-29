PDA tests
=========

Front–end unit tests for the PDA project are written in [Jasmine](http://jasmine.github.io/) and run using [Karma](http://karma-runner.github.io/). Specs are written in [CoffeeScript](http://coffeescript.org/) for clarity, but that could well change.


Setup
-----

1. Install `nodejs` and `npm` if you don’t already have them on your system

		brew install nodejs npm

2. Install `karma` globally and locally

		npm install -g karma
		npm install

3. Start Karma

		karma start

4. Open `karma.conf.coffee` and change `/Users/cwatt/hcom-dev/hcom/Assets/CommonAssetPack/Main` to the location of _CAP_ on your system. _(This will be a relative path once these tests are integrated into the PDA project proper.)_
