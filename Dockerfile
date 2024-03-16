#Python min version
FROM python:3.10

# copy all api files to api folder
ADD /bikeshare_model_api /bikeshare_model_api/

#  working directory
WORKDIR /bikeshare_model_api

# upgrade pip
RUN pip install --upgrade pip

# install requirements
RUN pip install -r requirements.txt

# port
EXPOSE 8001

# start application
CMD ["python", "app/main.py"]