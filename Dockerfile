# This is the container for the CCPBioSim basic-analysis-workshop

# Start with ccpbiosimbase.
FROM ccpbiosim/ccpbiosimbase:latest

LABEL maintainer="James Gebbie-Rayet <james.gebbie@stfc.ac.uk>"

# Root to install "rooty" things
USER root

# Update and Install c-shell.
RUN apt-get update -y 
RUN apt-get install -y csh

# Back to jovyan user
USER $NB_USER

# Python Dependencies for the md_workshop
RUN pip install --user numpy
RUN pip install --user cython
RUN pip install --user scipy
RUN pip install --user pandas
RUN pip install --user matplotlib
RUN pip install --user mdtraj
RUN pip install --user ipywidgets
RUN pip install --user nglview

# Initialise NGLView.
RUN jupyter-nbextension install nglview --py --sys-prefix && \
    jupyter-nbextension enable nglview --py --sys-prefix

# Add all of the workshop files to the home directory
ADD --chown=jovyan:100 *.ipynb $HOME/
ADD --chown=jovyan:100 data $HOME/data

# Always finish with non-root user as a precaution.
USER $NB_USER
