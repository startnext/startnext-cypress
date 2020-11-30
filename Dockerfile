FROM python:3-slim
LABEL maintainer="Christoph Kepler <christoph.kepler@tyclipso.net>"

RUN pip install --upgrade ansible-lint==4.3.7
