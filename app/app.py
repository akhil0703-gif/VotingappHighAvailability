from flask import Flask, render_template, request
app = Flask(__name__)
votes = {"GCP": 0, "AWS": 0, "Azure": 0}

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        selected = request.form.get('vote')
        if selected in votes:
            votes[selected] += 1
    return render_template('index.html', votes=votes, total=sum(votes.values()))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
