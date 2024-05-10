# Python image to use.
FROM python:3.12-alpine

# Set the working directory to /app
WORKDIR /app
# copy the requirements file used for dependencies
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY . .

EXPOSE 5000

# Run app.py when the container launches
CMD ["flask", "run", "--host", "0.0.0.0"]