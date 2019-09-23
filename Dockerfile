FROM continuumio/miniconda3

RUN mkdir /code

WORKDIR /code

COPY . /code/

RUN conda install -n base -c pytorch -c fastai -c conda-forge --file /code/requirements.txt && \
	conda install -n base --no-deps -c fastai fastai && \
    conda clean --all --yes

RUN echo "conda activate base" >> ~/.bashrc
