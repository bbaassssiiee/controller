# Just `source ./ansible.rc`
deactivate
rm -rf ~/.py3
python3.12 -m venv ~/py3
source ~/py3/bin/activate
pip install --upgrade pip wheel
pip install -r requirements.txt
