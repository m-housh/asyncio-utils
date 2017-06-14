FROM mhoush/tox:latest

RUN pyenv install 3.6.1 \
    && pyenv install 3.5.3 \
    && pyenv global 3.6.1 3.5.3 \
    && pip install --upgrade tox

CMD ["make", "run-tox"]
