module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.initConfig
    jade:
      index:
        options:
          pretty: true
        files:
          'index.html': 'index.jade'
    stylus:
      design:
        files:
          'design.css': 'design.styl'
    coffee:
      main:
        files:
          'main.js': 'main.coffee'

  grunt.registerTask 'default', ['jade', 'stylus', 'coffee']
