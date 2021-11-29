FROM cypress/included:9.1.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

WORKDIR /

RUN npm i cypress-file-upload \
					cypress-iframe \
					cypress-mochawesome-reporter \
					cypress-social-logins \
					cypress-visual-regression \
					mocha \
					mochawesome \
					mochawesome-report-generator
