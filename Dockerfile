FROM arm64v8/ubuntu

RUN apt-get update && apt-get -y install python3-dev python-pip libatlas-base-dev gfortran gcc libopenblas-base libopenblas-dev gcc cython

RUN pip install numpy
RUN pip install scipy
RUN pip install pillow
RUN pip install matplotlib
RUN pip install keras
RUN pip install h5py
RUN pip install --upgrade tensorflow
RUN pip install opencv-python
RUN pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl

