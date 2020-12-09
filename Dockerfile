FROM cypress/included:6.1.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i cypress-iframe@* \
					cypress-social-logins@* \
					cypress-file-upload@*
