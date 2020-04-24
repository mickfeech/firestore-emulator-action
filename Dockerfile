FROM google/cloud-sdk:alpine
RUN apk add --update --no-cache openjdk8-jre && \
    gcloud components install cloud-firestore-emulator beta --quiet
COPY start-firestore .
EXPOSE 8081
ENTRYPOINT [ "./start-firestore" ]
