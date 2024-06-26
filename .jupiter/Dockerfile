# Use an official Python runtime as a parent image
FROM python:3.9

###
### JupiterLab & Kernels
###

# Set the working directory in the container
WORKDIR /usr/src/app

# Install build tools
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y python3-dev
RUN apt-get install -y pkg-config
RUN apt-get install -y pandoc
RUN apt-get install -y graphviz
RUN apt-get install -y graphviz-dev
RUN apt-get install -y pkg-config
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# Install Node.js and NPM Kernel
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
apt-get install -y nodejs

# Install JupyterLab and related extensions
RUN pip install -qU --no-cache-dir jupyterlab
#RUN pip install -qU --no-cache-dir jupyterlab-lsp
#RUN pip install -qU --no-cache-dir 'python-lsp-server[all]'
#RUN jupyter labextension install @telamonian/theme-darcula
#RUN jupyter labextension install @jupyterlab/javascript-extension
#RUN jupyter labextension install @krassowski/jupyterlab-lsp
#RUN npm install -g typescript-language-server

# Install ipython-sql and the SQLAlchemy PostgreSQL driver
RUN pip install -qU --no-cache-dir ipython-sql psycopg2-binary

# Install ijavascript
#RUN npm install -g ijavascript
#RUN ijsinstall --install=global

# Install TypeScript and the TypeScript Jupyter kernel
#RUN npm install -g typescript
#RUN npm install -g tslab
#RUN tslab install --sys-prefix



###
### Kernel(s) Dependencies
###

# Python Dependencies
RUN pip install -qU --no-cache-dir openai
RUN pip install -qU --no-cache-dir psycopg2
RUN pip install -qU --no-cache-dir sqlalchemy
RUN pip install -qU --no-cache-dir unstructured
RUN pip install -qU --no-cache-dir langchain_community
RUN pip install -qU --no-cache-dir markdown
RUN pip install -qU --no-cache-dir langchain-text-splitters
RUN pip install -qU --no-cache-dir matplotlib
RUN pip install -qU --no-cache-dir numpy
RUN pip install -qU --no-cache-dir weasyprint
RUN pip install -qU --no-cache-dir pypandoc
RUN pip install -qU --no-cache-dir pyautogen
RUN pip install -qU --no-cache-dir httpx
RUN pip install -qU --no-cache-dir python-dotenv
RUN pip install -qU --no-cache-dir langgraph
RUN pip install -qU --no-cache-dir langchain
RUN pip install -qU --no-cache-dir langchain_core
RUN pip install -qU --no-cache-dir langchain_openai
RUN pip install -qU --no-cache-dir pygraphviz


# Node Dependencies
# (all these dependencies will be available from the context of the app)
WORKDIR /usr/src
RUN npm install pg
# RUN npm install jsdom
# RUN npm install @jupyterlab/ui-components
# RUN npm install react react-dom @types/react @types/react-dom  


###
### Start JupiterLab
###

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run JupyterLab on container start (optional here since VS Code will be the main interface)
WORKDIR /usr/src/app
CMD ["jupyter", "lab", "--ip='*'", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root"]

