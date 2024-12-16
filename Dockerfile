FROM opensciencegrid/software-base:23-el9-release
RUN dnf update -y
RUN dnf install -y python3-gfal2 gfal2-plugin-gridftp pip
COPY src/* /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["/bin/bash", "-c", "/etc/osg/image-init.d/10-set-crypto-policies.sh && python3 report.py"]