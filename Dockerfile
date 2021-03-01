FROM cypress/included:6.5.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN su node --login -c  'cypress install' && npm i cypress-iframe@* \
					cypress-social-logins@* \
					cypress-file-upload@* \
					cypress-mochawesome-reporter@*
