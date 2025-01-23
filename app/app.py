from flask import Flask


app = Flask(__name__)

@app.route("/")
def home():
    """
    Home route for the application.
    Returns a simple string response.
    """
    return "Hello, CI/CD World!" 

# Check if this script is being run directly (not imported as a module).
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
