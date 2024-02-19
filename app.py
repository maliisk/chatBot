from difflib import SequenceMatcher
import mysql.connector
from flask import Flask, request, jsonify, render_template

app = Flask(__name__)


db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="admin123",
    database="university_assistant"
)

# Ana sayfa
@app.route('/')
def index():
    return render_template('index.html')


@app.route('/soru', methods=['POST'])
def answer_question():

    request_data = request.get_json()
    user_question = request_data.get('soru')


    cursor = db_connection.cursor()
    cursor.execute("SELECT * FROM questions")
    questions = cursor.fetchall()
    cursor.execute("SELECT * FROM answers")
    answers = cursor.fetchall()


    best_match_ratio = 0
    best_match_index = -1
    user_question_lower = user_question.lower()
    for i, question_data in enumerate(questions):
        question = question_data[1]
        question_lower = question.lower()
        similarity_ratio = SequenceMatcher(None, user_question_lower, question_lower).ratio()
        if similarity_ratio > best_match_ratio:
            best_match_ratio = similarity_ratio
            best_match_index = i


    if best_match_ratio > 0.6:
        return jsonify({'answer': answers[best_match_index][1]})
    else:
        return jsonify({'answer': "Üzgünüm, sorunuzu anlayamadım."})


if __name__ == '__main__':
    app.run(debug=True)
