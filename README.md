# Suporte Técnico Remoto na Prática | N1/N2

Documentação de atendimentos reais que realizo via acesso remoto com AnyDesk/Teams. Foco em resolver no 1º contato e evitar rechamada.

### 📁 Caso 01 - Outlook não envia e-mails | Erro 0x80042109
**Sintoma relatado**: "Clico em enviar e a mensagem fica na Caixa de Saída há 2 dias"

**Diagnóstico via AnyDesk**: 
1. Teste de conectividade: `ping smtp.office365.com` respondeu = internet ok
2. Verifiquei Firewall do Windows: porta 587 bloqueada
3. Antivírus Avast com "Verificar e-mails SSL" ativo interceptando conexão

**Solução aplicada**:
1. Liberada porta 587 TCP de saída no Firewall do Windows Defender
2. Adicionada exceção para `outlook.exe` no módulo E-mail do Avast
3. Enviado e-mail teste para meu endereço com confirmação de recebimento

**Tempo total**: 12 minutos | **Satisfação do usuário**: 10/10
**Prevenção**: Desativei verificação SSL do antivírus para e-mail e criei passo a passo pro usuário

---

### 📁 Caso 02 - "Internet caindo" a cada 10 minutos
**Sintoma relatado**: Sites não abrem, mas WhatsApp Web continua funcionando

**Diagnóstico via AnyDesk**:
1. `ping 8.8.8.8 -t` estável = não era provedor
2. `nslookup google.com` timeout = falha de DNS
3. DNS configurado: 192.168.0.1, roteador da operadora instável

**Solução aplicada**:
1. Alterado DNS do adaptador para 1.1.1.1 e 8.8.8.8
2. Comando `ipconfig /flushdns` executado
3. Criei arquivo `dns-fix.bat` na área de trabalho do usuário para ele usar se voltar

**Tempo total**: 8 minutos | **Satisfação do usuário**: "Você é um anjo"
**Prevenção**: Orientei a trocar roteador da operadora por um TP-Link/Intelbras

---

### 🤖 Automação n8n - Triagem Inteligente de Chamados
Fluxo que recebe abertura de chamado via formulário Google → IA classifica se é Rede, Office, Hardware → Responde automaticamente pedindo print do erro + versão do Windows → Cria card no Trello com etiqueta de prioridade. 

**Resultado**: Redução de 60% no tempo de primeira resposta em testes.

**Stack que domino**: Windows 10/11, Linux Ubuntu, AnyDesk, TeamViewer, GLPI, Zendesk, Jira, n8n, ITIL 4, TCP/IP, DNS, DHCP

**Buscando**: 1ª oportunidade CLT 100% remota como Analista de Suporte Técnico Júnior.
**Contato**: stephanievale94@gmail.com | (21) 97291-7740
