FROM python:3.11-slim
RUN pip install --upgrade pip wheel setuptools
RUN apt update -y && apt install -y texlive texlive-latex-extra texlive-fonts-recommended dvipng cm-super
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "/app/run.py"]
