
module.exports = (grunt) ->
	grunt.initConfig
		jshint:
			files: ['Gruntfiles.js', 'src/**/*.js', 'test/**/*.js']
			option:
				globals:
					jQuery: true
		watch:
			files: ['<%= jshint.files %>']
			tasks: ['jshint']

	grunt.loadNpmTasks 'grunt-contrib-jshint'
	grunt.loadNpmTasks 'grunt-contrib-watch'

	grunt.registerTask 'default', ['jshint']


