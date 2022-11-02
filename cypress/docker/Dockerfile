FROM cypress/included:9.7.0

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

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN	su node -c 'mkdir -p /home/node/.config/fontconfig' && \
		echo '<?xml version="1.0"?> \
			<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd"> \
			<fontconfig> \
				<match target="font"> \
					<edit name="antialias" mode="assign"> \
						<bool>false</bool> \
					</edit> \
					<edit name="hintstyle" mode="assign"> \
						<const>hintnone</const> \
					</edit> \
					<edit name="lcdfilter" mode="assign"> \
						<const>lcdnone</const> \
					</edit> \
				</match> \
			</fontconfig>' > /home/node/.config/fontconfig/fonts.conf && \
		echo 'cp /usr/app/* . -r' | su node -c 'tee /home/node/.bashrc'
