/**
 * Copied from SpongeDocs
 *
 * https://github.com/SpongePowered/SpongeDocs/blob/f58e6d23a844447c7c867e0f5b49b5022f433923/Gulpfile.js
 */
var gulp = require('gulp');

var webserver = require('gulp-webserver');
var shell = require('gulp-shell');

var del = require('del');


var target = 'dirhtml';

gulp.task('clean', function (cb) {
    del([
        'build'
    ], cb);
});

gulp.task('sphinx', shell.task(
    'sphinx-build -b ' + target + ' source build/' + target
));

gulp.task('webserver', ['sphinx'], function () {
    gulp.src('build/' + target)
        .pipe(webserver({
            livereload: true,
            enable: true,
            open: true
        }));
});

gulp.task('watch', function () {
    gulp.watch(['source/**/*'], ['sphinx']);
});

gulp.task('default', ['clean', 'sphinx', 'webserver', 'watch']);
