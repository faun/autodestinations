module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-shell"
  grunt.loadNpmTasks 'grunt-clear'
  grunt.registerTask 'default', ['shell:busted']
  grunt.initConfig
    watch:
      all_moon_files:
        files: ["*.moon", "spec/**/*_spec.moon", '!**/node_modules/**']
        tasks: ["clear", "shell:busted"]

    shell:
      busted:
        command: "busted  --pattern='**/*_spec.moon'"
        options:
          stdout: true
          failOnError: true
