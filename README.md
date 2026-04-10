# Suporte Técnico Remoto na Prática | N1/N2

Documentação de atendimentos reais que realizo via acesso remoto com AnyDesk/Teams. Foco em resolver no 1º contato e evitar rechamada.

### 📁 Caso 01 - Simulação de falha SMTP | Porta 587 bloqueada

**Objetivo**: Simular um incidente real de envio de e-mails não realizado devido ao bloqueio da porta SMTP.

**Ambiente utilizado**:
- Windows 11
- Windows Defender Firewall
- PowerShell
- Teste de conectividade com Office 365

---

### 🧪 Etapas realizadas no laboratório

**1. Simulação do incidente**
Foi criada uma regra de saída no Windows Defender Firewall bloqueando a porta TCP 587 (SMTP).

**2. Diagnóstico técnico**
Teste executado no PowerShell:

```powershell
Test-NetConnection smtp.office365.com -Port 587
```

**Resultado inicial:**

```text
TcpTestSucceeded : False
```

**Análise:**
- conectividade de rede ativa
- servidor respondendo
- falha na conexão TCP da porta 587

---

### 🛠️ Solução aplicada

A regra de bloqueio da porta 587 foi desabilitada no Windows Defender Firewall.

Novo teste realizado:

```powershell
Test-NetConnection smtp.office365.com -Port 587
```

**Resultado final:**

```text
TcpTestSucceeded : True
```

---

### ✅ Resultado
Conectividade SMTP restabelecida com sucesso.

---

### 📚 Aprendizados
- Troubleshooting de rede
- Diagnóstico de porta TCP
- Uso do PowerShell
- Configuração de Firewall
- Simulação de incidente real de suporte técnico
- 
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
