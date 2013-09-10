# Karma configuration
# Generated on Tue Sep 10 2013 10:14:13 GMT+0100 (BST)

module.exports = (config) ->
  config.set

    # base path, that will be used to resolve all patterns, eg. files, exclude
    basePath: ''

    # frameworks to use
    frameworks: ['jasmine']

    # list of files / patterns to load in the browser
    files: [
      '/Users/cwatt/hcom-dev/hcom/Assets/CommonAssetPack/Main/webapp/js/lib/jquery-1.8.3.js',
      '/Users/cwatt/hcom-dev/hcom/Assets/CommonAssetPack/Main/webapp/js/hcom/common/hcom.common.jquery.modules.js',
      '/Users/cwatt/hcom-dev/hcom/Assets/CommonAssetPack/Main/webapp/js/hcom/property_details/hcom.property_details.modules.photo_carousel.js',

      'tests/unit/**/*.spec.coffee'
    ]

    # list of files to exclude
    exclude: [

    ]

    # test results reporter to use
    # possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
    reporters: ['progress']

    # web server port
    port: 9876

    # enable / disable colors in the output (reporters and logs)
    colors: true

    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: ['Chrome']

    # If browser does not capture in given timeout [ms], kill it
    captureTimeout: 60000

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false
