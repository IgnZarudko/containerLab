FROM debian
COPY cmd_script.sh ./
RUN chmod +x ./cmd_script.sh
CMD ["bash", "./cmd_script.sh"]
