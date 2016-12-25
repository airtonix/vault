FROM vault:0.6.4

COPY ./entrypoint.sh /
COPY ./entrypoint.d/* /entrypoint.d/

RUN chmod +x ./entrypoint.sh
RUN chmod +x ./entrypoint.d/*

ENTRYPOINT ["./entrypoint.sh"]
CMD ["server", "-dev"]
