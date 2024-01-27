pip install --upgrade pip

pip install pipx
pipx install virtualenv
sudo apt install python3.10-venv

virtualenv vega_sim_env
source vega_sim_env/bin/activate
which python3

chmod +x install_requirements.sh
source install_requirements.sh

deactivate

source retrive_gem5_modules.sh

source vega_sim_env/bin/activate

