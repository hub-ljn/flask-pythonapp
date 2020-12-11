FROM python:3.6 
WORKDIR /home/app/
COPY . .
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple -r ./cis-requirements.txt
CMD [ "python", "./server.py" ]
