## How to run

1. Clone the repo
2. Create a virtual environment 
    - ```python3 -m venv .venv```
    - ```source .venv/bin/activate```
3. Install dependencies
    - ```pip install -r requirements.txt```
4. Setup the docker container with Postgres
    - ```docker-compose up -d```
5. Check connection to the database
    - ```dbt debug```
6. Run the dbt models
