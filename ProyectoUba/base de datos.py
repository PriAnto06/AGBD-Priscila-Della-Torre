from flask import Flask, jsonify, request
import mysql.connector

app = Flask(__name__)

db_config = {
    "host": "10.9.120.5",
    "port": 3306,
    "user": "proyecto",
    "password": "proyecto1234",
    "database": "ProyectoUBA"
}

# ----------------------
# RUTAS PARA INGLES
# ----------------------
@app.route("/usuarios", methods=["GET"])
def get_usuarios():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM Ingles")
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/usuarios", methods=["POST"])
def insertar_usuario():
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("INSERT INTO Ingles (nombre, edad) VALUES (%s, %s)", (nombre, edad))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro insertado correctamente"}), 201
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/usuarios/<int:id>", methods=["PUT"])
def modificar_usuario(id):
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("UPDATE Ingles SET nombre=%s, edad=%s WHERE Ingles_id=%s", (nombre, edad, id))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro modificado correctamente"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# ----------------------
# RUTAS PARA QUIMICA
# ----------------------
@app.route("/quimica", methods=["GET"])
def get_quimica():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM Quimica")
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/quimica", methods=["POST"])
def insertar_quimica():
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("INSERT INTO Quimica (nombre, edad) VALUES (%s, %s)", (nombre, edad))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro insertado correctamente"}), 201
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/quimica/<int:id>", methods=["PUT"])
def modificar_quimica(id):
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("UPDATE Quimica SET nombre=%s, edad=%s WHERE Quimica_id=%s", (nombre, edad, id))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro modificado correctamente"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# ----------------------
# RUTAS PARA MATEMATICA
# ----------------------
@app.route("/matematica", methods=["GET"])
def get_matematica():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM Matematica")
        rows = cursor.fetchall()
        cursor.close()
        conn.close()
        return jsonify(rows)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/matematica", methods=["POST"])
def insertar_matematica():
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("INSERT INTO Matematica (nombre, edad) VALUES (%s, %s)", (nombre, edad))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro insertado correctamente"}), 201
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/matematica/<int:id>", methods=["PUT"])
def modificar_matematica(id):
    try:
        data = request.json
        nombre = data.get("nombre")
        edad = data.get("edad")

        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("UPDATE Matematica SET nombre=%s, edad=%s WHERE Matematica_id=%s", (nombre, edad, id))
        conn.commit()
        cursor.close()
        conn.close()

        return jsonify({"mensaje": "Registro modificado correctamente"})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
