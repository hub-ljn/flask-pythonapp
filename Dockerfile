FROM ${BASE_IMAGE_NAME}
WORKDIR /var/${SERVICE_NAME}
COPY ./ /var/${SERVICE_NAME}
RUN pipregs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple -r ./cis-requirements.txt
CMD [ "python", "./server.py" ]
