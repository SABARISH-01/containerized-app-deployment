# 1. Initialize a new Git repository
git init

# 2. Rename the default branch to 'main' (modern standard)
git branch -M main

# 3. Create a .gitignore file (Crucial!)
# We do NOT want to push the "venv" folder or compiled python files
echo "__pycache__/" > .gitignore
echo "venv/" >> .gitignore
echo ".DS_Store" >> .gitignore

# 4. Stage your files
git add .

# 5. Commit the files (Save the snapshot)
git commit -m "Initial commit: Dockerized Python Flask application"
