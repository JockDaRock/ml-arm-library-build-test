FROM arm64v8/ubuntu

RUN apt-get update && apt-get -y install python3-dev python3-pip libatlas-base-dev gfortran gcc libopenblas-base libopenblas-dev gcc cython libhdf5-dev

RUN pip3 install numpy
RUN pip3 install scipy
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libharfbuzz-dev libfribidi-dev tcl8.6-dev tk8.6-dev python-tk
RUN pip3 install pillow
RUN pip3 install matplotlib
RUN pip3 install keras
RUN pip3 install h5py
RUN pip3 install --upgrade tensorflow
RUN pip3 install opencv-python
RUN pip3 install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl

