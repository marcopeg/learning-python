# Use an official Python runtime as a parent image
FROM python:3.9

###
### JupiterLab & Kernels
###

# Set the working directory in the container
WORKDIR /usr/src/app

# Install JupiterLab
RUN pip install -qU --no-cache-dir jupyterlab

# Install Node.js and NPM Kernel
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
apt-get install -y nodejs
RUN npm install -g ijavascript
RUN ijsinstall --install=global



###
### Kernel(s) Dependencies
###

# Node Dependencies
RUN npm install -g pg

# Python Dependencies
RUN pip install -qU --no-cache-dir openai
RUN pip install -qU --no-cache-dir psycopg2
RUN pip install -qU --no-cache-dir unstructured
RUN pip install -qU --no-cache-dir langchain_community
RUN pip install -qU --no-cache-dir markdown
RUN pip install -qU --no-cache-dir langchain-text-splitters



###
### Start JupiterLab
###

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run JupyterLab on container start (optional here since VS Code will be the main interface)
CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root"]

