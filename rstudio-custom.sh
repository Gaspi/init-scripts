#!/bin/sh 

echo \
"

setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '/home/onyxia/work'))
  {
    message('Activation du projet RStudio')
    rstudioapi::openProject('')
    # For a dark theme 
    rstudioapi::applyTheme('Dracula')
    # Console on the right
    rstudioapi::executeCommand('layoutConsoleOnRight')
  }
}, action = 'append')

" >> /home/onyxia/.Rprofile
