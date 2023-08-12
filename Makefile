start:
	gcc main.c -o main.out -lm
	./main.out
setup:
	termux-change-repo
	pkg update
	pkg upgrade
	pkg install python
	pkg install clang
	pkg install xh
	apt install curl wget ossp-uuid ncurses-utils bc
	pip install -r Re.txt
	@echo
	@echo "[+] Setup Berhasil"
	@echo "[+] Jalankan perintah: make start"
ahs:
	@git pull || true
update: ahs setup start
