FROM python:3.6

# Install Django and other dependencies
RUN pip.exe install django

# Copy the Django application code into the image
COPY . C:\app

# Set the working directory to the Django application directory
WORKDIR C:\app

# Expose the Django development server port
EXPOSE 8000

# Start the Django development server
CMD ["python.exe", "manage.py", "runserver", "0.0.0.0:8000"]

