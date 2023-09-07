FROM python:3.11-bullseye

ARG UID=1000
ARG GID=1000

RUN apt-get update \
 && apt-get -y install texlive-xetex libpq-dev postgresql-client vim less gcc gettext \
 && apt-get clean

RUN groupadd -g "${GID}" nonroot \
 && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" nonroot

USER nonroot
WORKDIR /opt/indico

ENV VIRTUAL_ENV=/opt/indico/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY --chown=nonroot:nonroot requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Workaround: create missing configs and folder structure
# RUN ["/bin/bash", "-c", "mkdir -p --mode=775 /opt/indico/{etc,tmp,log,cache,archive}"]
RUN mkdir archive cache log tmp etc web\
 && indico setup create-symlinks /opt/indico \
 && indico setup create-logging-config /opt/indico/etc

# COPY --chown=indico:indico logging.yaml ./etc/
# COPY --chown=indico:indico indico.conf logging.yaml ./etc/
COPY --chown=indico:indico run_celery.sh run_indico.sh uwsgi.ini ./

ENV INDICO_CONFIG="/opt/indico/etc/indico.conf"

EXPOSE 59999
CMD [ "./run_indico.sh" ]

