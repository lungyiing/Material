module.exports = function(grunt) {
    grunt.initConfig({
        sass: {
            dist: {
                options:{
                    style:'compressed'
                },
                files: {
                    'design/custom.css' : 'scss/material.scss'
                }
            }
        },
        autoprefixer:{
            dist:{
                files:{
                    'design/custom.css':'design/custom.css'
                }
            }
        },
        watch: {
            css: {
                files: 'scss/**/*.scss',
                tasks: ['sass', 'autoprefixer']
            }
        }
    });
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.registerTask('default',['watch']);
};