FROM dawn001/z_mirror:main

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt

COPY . .

# Add this line to expose port 8000
EXPOSE 8000

# Clean up unnecessary files
RUN rm -rf py_generators config_sample.env Dockerfile LICENSE README.md requirements.txt

CMD ["bash", "start.sh"]
