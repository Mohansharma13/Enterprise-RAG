# FROM python:3.11.9

# # Set a directory for the app
# WORKDIR /app

# # Copy all the files to the container
# COPY . .

# # Install dependencies
# RUN pip install --upgrade pip
# RUN pip install --no-cache-dir -r requirements.txt

# # Install curl and Ollama
# RUN apt-get update && apt-get install -y curl
# RUN curl -fsSL https://ollama.com/install.sh | sh

# # Expose ports
# EXPOSE 5000 8501

# # Run Ollama and Streamlit
# CMD ["sh", "-c", "ollama pull llama3.2 & streamlit run ./ragapp.py"]
