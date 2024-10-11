FROM python:3.11.9

# Set a directory for the app
WORKDIR /app

# Copy all the files to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Ollama using curl, ensure curl is available in your container
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose port 5000
EXPOSE 5000

# Run Ollama and Streamlit
CMD ["sh", "-c", "ollama serve & ollama run llama3.2 & streamlit run ./app.py"]
