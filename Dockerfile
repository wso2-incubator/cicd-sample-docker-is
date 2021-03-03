FROM <BASE>

ENV foo /bar

ARG WSO2_USERNAME
ARG WSO2_PASSWORD

COPY --chown=802 apply-hotfixes.sh ./
COPY hotfixes /hotfixes
RUN sh apply-hotfixes.sh $WSO2_USERNAME $WSO2_PASSWORD
