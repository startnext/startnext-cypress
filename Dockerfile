FROM cypress/included:6.2.1

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i cypress-iframe@* \
					cypress-social-logins@* \
					cypress-file-upload@* \
					cypress-mochawesome-reporter@*
