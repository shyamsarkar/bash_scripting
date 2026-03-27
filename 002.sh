1️⃣ mkdir — Create directories

mkdir directory_name
mkdir -p a/b/c   # create parent dirs if they don't exist
mkdir a/b/c   # ❌ if 'a' doesn't exist

2️⃣ cp — Copy files / directories

cp source destination   # copy file
cp file1.txt file2.txt  # copy file1.txt to file2.txt
cp file1.txt backup/    # copy file1.txt into backup/ directory
cp -r src backup/       # copy directory recursively
cp -r                   # recursive (for directories)
cp -i                   # ask before overwrite
cp -v                   # verbose (show what's happening)
cp -rv app app_backup

3️⃣ mv — Move or rename

mv old.txt new.txt  # rename file
mv file.txt docs/   # move file to directory
mv file.txt docs/new_file.txt  # move and rename
mv -i file.txt docs/  # ask before overwrite

4️⃣ rm — Delete (danger zone ☠️)

rm file.txt
rm -r directory/  # remove directory and contents
rm -i file.txt  # ask before delete
rm -rf directory/  # force delete (use with caution!)
