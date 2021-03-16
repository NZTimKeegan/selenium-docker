FROM python:3.9.0-buster

# Create directory for the app
RUN mkdir -p /usr/opt/var/selenium-test
WORKDIR /usr/opt/var/selenium-test

# Install dependencies
ADD app/ app
ADD dependencies.txt .
RUN pip install -r dependencies.txt

WORKDIR /

ENTRYPOINT ["python3"]

CMD ["/usr/opt/var/selenium-test/app/app.py"]
