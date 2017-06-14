FROM mhoush/tox:latest

RUN pyenv install 3.6.1 \
    && pyenv global 3.6.1 3.5.3 \
    && pip install --upgrade tox \
    && pip install /usr/src/app

CMD ["make", "run-tox"]
