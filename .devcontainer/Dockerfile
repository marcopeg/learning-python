# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Install Python and Jupyter
RUN pip install --no-cache-dir notebook

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook on container start (optional here since VS Code will be the main interface)
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''", "--allow-root"]
