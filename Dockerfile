FROM swr.ap-southeast-3.myhuaweicloud.com/op_svc_cse/python-x86_64:3-int-1.0
WORKDIR /var/flask-pythonapp
COPY ./ /var/flask-pythonapp/
RUN pipreqs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple -r ./cis-requirements.txt
CMD [ "python", "./server.py" ]
