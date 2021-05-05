FROM python:stretch

COPY . /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS-master
WORKDIR /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS-master

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]