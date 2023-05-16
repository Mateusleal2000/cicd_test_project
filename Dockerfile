# Use a base image (replace "base-image" with your desired base image)
FROM python:3.9

# Copy necessary files into the image (replace "source" and "destination" with your actual file paths)
COPY . /main

# Run any desired commands to set up the image
RUN pip install requests

# Set the working directory inside the image
WORKDIR /main

# Expose any necessary ports (optional)
EXPOSE 8080

# Define the command to run when the container starts (replace "command" with your actual command)
CMD ["python", "main.py"]
