FROM python:3

# requirements.txtをDockerファイルへコピー
COPY requirements.txt .
RUN python -m pip install --upgrade pip # pipのアップデート
RUN pip3 install -r requirements.txt # requirements.txtのインストール
RUN pip install jupyterlab # JupyterLabをインストール

WORKDIR /work
COPY /work /work