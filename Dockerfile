FROM mhoush/tox:latest

RUN pyenv install 3.6.1 \
    && pyenv global 3.6.1 \
    && pip install --upgrade tox

CMD ["make", "run-tox"]
