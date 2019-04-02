FROM arm64v8/ubuntu

RUN apt-get update && apt-get -y install python3-dev python-pip libatlas-base-dev gfortran gcc libopenblas-base libopenblas-dev gcc cython

RUN pip install numpy && pip install scipy && pip install pillow && pip install matplotlib && pip install keras && pip install h5py && pip install --upgrade tensorflow && pip install opencv-python && pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl

