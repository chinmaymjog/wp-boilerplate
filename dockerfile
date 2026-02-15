FROM your-username/themes-plugins:latest AS common

COPY /pkg-mgr/ /pkg-mgr/

RUN bash /pkg-mgr/copy_plugins_themes -t themes
RUN bash /pkg-mgr/copy_plugins_themes -t plugins

FROM your-username/wp-base:latest

COPY --from=common --chown=www-data:www-data /common-themes ./wp-content/themes/
COPY --from=common --chown=www-data:www-data /common-plugins ./wp-content/plugins/

COPY src/wp-content/themes/ ./wp-content/themes/
COPY src/wp-content/plugins/ ./wp-content/plugins/
# COPY ./src/wp-config.php ./wp-config.php