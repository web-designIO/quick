###
author: pA1nD
date: Mar 2016
Inplace editing for the run.
###

els = document.querySelectorAll 'p,h1,h2,h3,h4,h5,h6,span,a,pre,address,input'
i = 0
while i < els.length
  els[i].setAttribute 'contenteditable', 'true'
  i++

window.onbeforeunload = ->
  return 'I am not sure...\n\nCMS asks:'

###
Styles
###

cmsCss = "
  [contenteditable=true]{
    outline-color: rgba(55, 55, 55, 0.08);
    outline-offset: 0px;
    outline-style: dashed;
    outline-width: thin;
  }
  [contenteditable=true]:hover {
    outline-color: rgba(255, 0, 0, 0.3);
    outline-offset: 0px;
    outline-style: dotted;
    outline-width: thin;
  }

  [contenteditable=true]:empty{
  background-color: rgba(255, 0, 0, 0.3);
  }

  [contenteditable=true]:empty:before{
    content: empty;
  }
"

style = document.createElement "style"
style.rel = "stylesheet"
style.innerHTML = cmsCss
document.head.appendChild style
