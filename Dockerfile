FROM python:alpine3.7

# add new user
RUN adduser -u 101000 -D toor

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

ENV PORT 5000

EXPOSE 5000

ENTRYPOINT [ "python" ]

USER toor

CMD [ "app.py" ]