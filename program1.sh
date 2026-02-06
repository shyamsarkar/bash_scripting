1️⃣ pwd — Where am I?
pwd = Print Working Directory → shows your current directory path.

$ pwd
/home/shyam/projects/rails_app

- No arguments
- Always prints absolute path


2️⃣ ls — What’s inside this folder?

ls
ls -l     # long format (permissions, owner, size)
ls -a     # show hidden files (.git, .env)
ls -h     # human readable sizes
ls -la    # very common combo
ls -R     # recursive (show subdirectories)
ls -t     # sort by modification time
ls -S     # sort by size
ls -r     # reverse order
ls -d */   # show only directories
ls -1     # one entry per line
ls -F     # append / for directories, * for executables
ls -i     # show inode numbers
ls -s     # show file sizes in blocks
ls -G     # colorize output (Linux)
ls --color  # colorize output (Linux)
ls -Q     # quote file names
ls -v     # natural sort of version numbers
ls -X     # sort alphabetically by extension
ls -Z     # show SELinux context (Linux)

for file in $(ls); do
  echo $file
done

3️⃣ cd — Move around

cd directory_name
cd projects        # go inside projects
cd ..              # go one level up
cd ../..           # go two levels up
cd ~               # go to home directory
cd /var/log        # absolute path
cd -               # go to previous directory
