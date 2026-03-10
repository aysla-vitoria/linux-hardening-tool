# 🛡️ Linux Hardening & Audit Tool

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

   
