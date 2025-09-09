from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

# Configuración de la conexión a MySQL
db_config = {
    "host": "10.9.120.5",
    "port": 8080,       # normalmente MySQL usa 3306, ¿estás seguro que es 8080?
    "user": "proyecto",
    "password": "proyecto1234",
    "database": "Apoyo_uba"
}
@app.route("/usuarios")
def get_usuarios():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)

        cursor.execute("SELECT * FROM usuarios")
        rows = cursor.fetchall()

        cursor.close()
        conn.close()

        return jsonify(rows)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
