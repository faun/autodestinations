# global module
module.exports = (grunt) ->
  "use strict"
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-shell"
  grunt.registerTask 'default', ['shell:busted']
  grunt.initConfig
    watch:
      files: ["**/*.moon"]
      tasks: ["shell:busted"]

    shell:
      busted:
        command: "busted  --pattern='**/*_spec.moon'"
        options:
          stdout: true
          failOnError: true

  return
