FROM gitpod/workspace-postgresql
USER gitpod
RUN sudo apt-get update -q && sudo apt-get install -yq php8.1-xdebug
USER root
RUN echo "xdebug.mode = develop, debug" >> /etc/php/8.1/mods-available/xdebug.ini
RUN echo "xdebug.start_with_request = yes" >> /etc/php/8.1/mods-available/xdebug.ini
