#!/usr/bin/bash

# Set the environment variables
. env/bin/activate

# Install the requirements
pip install -r requirements.txt

# Run the application
mkdocs build

# Deactivate the virtual environment

deactivate

#copy the files to the web server directory
sudo cp -r site/* /var/www/html

# End of the script
echo "Deployment completed successfully"