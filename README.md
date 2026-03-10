<h1 align="center">🛡️ Linux Hardening Tool</h1>

<p align="center">
Ferramenta para aplicar hardening automático em sistemas Linux.
</p>

<p align="center">
<img src="https://img.shields.io/badge/Linux-Security-blue?style=for-the-badge&logo=linux">
<img src="https://img.shields.io/badge/Shell-Bash-green?style=for-the-badge&logo=gnu-bash">
<img src="https://img.shields.io/badge/Status-Development-orange?style=for-the-badge">
</p>

![GitHub repo size](https://img.shields.io/github/repo-size/aysla-vitoria/linux-hardening-tool)
![GitHub stars](https://img.shields.io/github/stars/aysla-vitoria/linux-hardening-tool)
![GitHub forks](https://img.shields.io/github/forks/aysla-vitoria/linux-hardening-tool)
![GitHub last commit](https://img.shields.io/github/last-commit/aysla-vitoria/linux-hardening-tool)



Script em Bash desenvolvido para automatizar a segurança inicial e auditoria de servidores baseados em Debian/Ubuntu. 

## 🚀 Funcionalidades
- **Atualização Automatizada:** Garante que o sistema esteja com os patches de segurança mais recentes.
- **Hardening de SSH:** Desabilita o login direto do usuário root e aplica configurações de segurança no `sshd_config`.
- **Firewall (UFW):** Configuração de políticas restritivas (Deny Incoming / Allow Outgoing) com exceção para a porta 22 (SSH).
- **Auditoria de Usuários:** Script identifica e lista usuários reais com acesso ao Shell no sistema.

## 🛠️ Como usar
1. Clone o repositório:
   ```bash
   git clone [https://github.com/SEU-USUARIO/linux-hardening-tool.git](https://github.com/SEU-USUARIO/linux-hardening-tool.git)

2. Dê permissão de execução:
    
    chmod +x hardener.sh
   
3. Execute como root:

    sudo ./hardener.sh


📝 Lições Aprendidas
Durante o desenvolvimento, explorei manipulação de arquivos com sed, lógica de permissões Linux, e gerenciamento de serviços com systemctl.



https://github.com/user-attachments/assets/80047f1b-32ba-4ccc-ac6f-fbb777a46cd3

   
