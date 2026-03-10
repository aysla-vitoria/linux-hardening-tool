#!/bin/bash

# Projeto: Linux Hardening Tool
# Autor: Aysla Nascimento
# Descrição: Script para automoção de segurança básica de sistemas Debian/Ubuntu.

if [[ $EUID -ne 0 ]]; then
	echo "Este script precisa ser executado como root (sudo)."
	exit 1
fi

echo "--- Iniciando Atualização do Sistema ---"
apt update && apt upgrade -y
apt autoremove -y


echo "--- Otimizando Segurança do SSH ---"
SSH_CONF="/etc/ssh/sshd_config"

if [ -f "$SSH_CONF" ]; then
	cp "$SSH_CONF" "$SSH_CONF.bak"
	# Garante que PermitRootLogin seja 'no' (mesmo se estiver comentado)
	sed -i 's/^#?PermitRootLogin.*/PermitRootLogin no/' "$SSH_CONF"
	# Reinicia o servico (tenta ssh ou sshd)
	systemctl restart ssh || systemctl restart sshd
	echo "Configuracao do SSH atualizada."
else
	echo "Aviso: Arquivo SSH nao encontrado. pulando..."
fi

echo "--- Configurando o Firewall (UFW) ---"
apt install ufw -y
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable
echo "Firewall Ativo e Protegido!"

echo "--- AUDITORIA: Usuarios com acesso ao Shell ---"
#Lista usuarios reais (UID >= 1000) com shell ativo
awk -F: '$3 >= 1000 && $7 !~ /nologin|false/ { print "Usuario encontrado: " $1 " (Home: " $6 ")" }' /etc/passwd

echo "------------------------------------------------"
echo "PROJETO 1 CONCLUÍDO COM SUCESSO!"
