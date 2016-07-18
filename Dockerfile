FROM bde2020/hive

RUN apt-get update
RUN apt-get install -y python python-dev python-distribute python-pip
RUN apt-get install -y libsasl2-dev gcc

#Python Hive library
RUN pip install pyhs2

ENV PYTHONPATH "/opt/hive/lib/py/"
ADD example.py /example.py
RUN chmod +x /example.py

CMD ["python", "/example.py"]
