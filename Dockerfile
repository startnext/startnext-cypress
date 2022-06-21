FROM cypress/included:9.7.0

LABEL author="Joerg Jenke <joerg.jenke@startnext.com>"

WORKDIR /usr/app

COPY ./ /usr/app

RUN npm i cypress-file-upload \
					cypress-iframe \
					cypress-mochawesome-reporter \
					cypress-social-logins \
					cypress-visual-regression \
					mocha \
					mochawesome \
					mochawesome-report-generator
