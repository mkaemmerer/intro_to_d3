# Generated on 2013-12-02 using generator-reveal 0.3.2
module.exports = (grunt) ->

    grunt.initConfig

        watch:

            livereload:
                options:
                    livereload: false
                files: [
                    'index.html'
                    'slides/*.md'
                    'slides/*.html'
                    'js/*.js'
                    'css/*.css'
                ]

            index:
                files: [
                    'templates/_index.html'
                    'templates/_section.html'
                    'slides/list.json'
                ]
                tasks: ['buildIndex']

            coffeelint:
                files: ['Gruntfile.coffee']
                tasks: ['coffeelint']

            jshint:
                files: ['js/*.js']
                tasks: ['jshint']

            sass:
                files: [
                  'css/source/theme.scss'
                  'css/source/slide_content.scss'
                ]
                tasks: ['sass']

        sass:

            theme:
                files:
                    'css/theme.css': 'css/source/theme.scss'
                    'css/slide_content.css': 'css/source/slide_content.scss'

        connect:

            livereload:
                options:
                    port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    hostname: 'localhost'
                    base: '.'
                    open: true
                    livereload: false

        coffeelint:

            options:
                indentation:
                    value: 4

            all: ['Gruntfile.coffee']

        jshint:

            options:
                jshintrc: '.jshintrc'

            all: ['js/*.js']

        copy:

            dist:
                files: [{
                    expand: true
                    src: [
                        'slides/**'
                        'bower_components/**'
                        'js/**'
                        'css/*.css'
                    ]
                    dest: 'dist/'
                },{
                    expand: true
                    src: ['index.html']
                    dest: 'dist/'
                    filter: 'isFile'
                }]


    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'buildIndex',
        'Build index.html from templates/_index.html and slides/list.json.',
        ->
            indexTemplate = grunt.file.read 'templates/_index.html'
            sectionTemplate = grunt.file.read 'templates/_section.html'
            slides = grunt.file.readJSON 'slides/list.json'

            html = grunt.template.process indexTemplate, data:
                slides:
                    slides
                section: (slide) ->
                    grunt.template.process sectionTemplate, data:
                        slide:
                            slide
            grunt.file.write 'index.html', html

    grunt.registerTask 'test',
        '*Lint* javascript and coffee files.', [
            'coffeelint'
            'jshint'
        ]

    grunt.registerTask 'server',
        'Run presentation locally and start watch process (living document).', [
            'buildIndex'
            'sass'
            'connect:livereload'
            'watch'
        ]

    grunt.registerTask 'dist',
        'Save presentation files to *dist* directory.', [
            'test'
            'sass'
            'buildIndex'
            'copy'
        ]

    # Define default task.
    grunt.registerTask 'default', [
        'test'
        'server'
    ]
