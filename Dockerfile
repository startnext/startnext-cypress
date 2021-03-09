FROM cypress/included:6.4.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

COPY package.json package.json

RUN npm i cypress-iframe@* \
					cypress-social-logins@* \
					cypress-file-upload@* \
					cypress-mochawesome-reporter@* \
					mochawesome@*
