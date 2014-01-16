$([IPython.events]).on('app_initialized.NotebookApp', function(){
  require(['/static/custom/breakpoints.js'])
  require(['/static/custom/main.js'])
});