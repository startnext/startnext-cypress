FROM cypress/included:6.2.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i cypress-iframe@* \
					cypress-social-logins@* \
					cypress-file-upload@*
