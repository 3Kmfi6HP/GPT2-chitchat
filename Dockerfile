FROM python:3.9

COPY . .

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install python dependencies
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.doubanio.com/simple/

# gunicorn
CMD ["python", "--no_cuda", "--model_path", "model/model_epoch40_50w"]