FROM cypress/included:6.0.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i -g cypress-iframe@* \
						cypress-social-logins@* \
						cypress-file-upload@*
