from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

from flask import Flask, request, jsonify

app = Flask(__name__)

# Create a database connection
conn = sqlite3.connect('database.db')

# Define a function to get all users
def get_users():
    cursor = conn.execute('SELECT * FROM users')
    users = []
    for row in cursor:
        users.append({
            'id': row[0],
            'name': row[1],
            'email': row[2]
        })
    return jsonify(users)

# Define a function to get a user by ID
def get_user_by_id(user_id):
    cursor = conn.execute('SELECT * FROM users WHERE id = ?', (user_id,))
    user = cursor.fetchone()
    if user is None:
        return jsonify({'error': 'User not found'}), 404
    else:
        return jsonify(user)

# Define a function to create a new user
def create_user(name, email):
    cursor = conn.execute('INSERT INTO users (name, email) VALUES (?, ?)', (name, email))
    conn.commit()
    user_id = cursor.lastrowid
    return jsonify({'id': user_id})

# Define a function to update a user
def update_user(user_id, name, email):
    cursor = conn.execute('UPDATE users SET name = ?, email = ? WHERE id = ?', (name, email, user_id))
    conn.commit()
    if cursor.rowcount == 0:
        return jsonify({'error': 'User not found'}), 404
    else:
        return jsonify({'success': True})

# Define a function to delete a user
def delete_user(user_id):
    cursor = conn.execute('DELETE FROM users WHERE id = ?', (user_id,))
    conn.commit()
    if cursor.rowcount == 0:
        return jsonify({'error': 'User not found'}), 404
    else:
        return jsonify({'success': True})

# Register the API endpoints
app.route('/users', methods=['GET']).get(get_users)
app.route('/users/<int:user_id>', methods=['GET']).get(get_user_by_id)
app.route('/users', methods=['POST']).post(create_user)
app.route('/users/<int:user_id>', methods=['PUT']).put(update_user)
app.route('/users/<int:user_id>', methods=['DELETE']).delete(delete_user)

# Start the Flask app
if __name__ == '__main__':
    app.run(debug=True)