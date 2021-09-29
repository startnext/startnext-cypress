FROM cypress/included:8.5.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

RUN npm i cypress-file-upload \
					cypress-iframe \
					cypress-mochawesome-reporter \
					cypress-social-logins \
					cypress-visual-regression \
					mocha \
					mochawesome \
					mochawesome-report-generator
