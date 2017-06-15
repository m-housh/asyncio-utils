FROM mhoush/tox:latest

RUN pyenv install --skip-existing 3.6.1 \
    && pyenv global 3.6.1 \
    && pip install tox \
    && pip install /usr/src/app

CMD ["make", "run-tox"]
