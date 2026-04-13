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

### 🤖 Automação: Coletor de Diagnóstico N1 para Windows

**Problema**: Chamados N1 iniciam com 10min de coleta manual via chat: "abre cmd, digita ipconfig, me manda print". Isso aumenta TMA e frustra o usuário. Ambientes corporativos com OneDrive quebram scripts comuns que apontam pro Desktop errado.

**Solução**: Script `.bat` executável com duplo-clique. Coleta automática de IP, Gateway, DNS, teste de conectividade, espaço em disco e processos ativos. Compatível com OneDrive e Windows 11 sem `wmic`.

**Como funciona**:
1. Usuário executa `diagnostico-n1.bat` recebido por e-mail
2. Script gera `diagnostico-suporte.txt` na Área de Trabalho em 5s
3. Usuário anexa o .txt ao chamado
4. Analista inicia atendimento já com rede, DNS e disco validados

**Impacto**: Reduz tempo de triagem de 10min para 30s. Elimina 3 hipóteses antes do acesso remoto: problema de rede, DNS ou disco cheio. Aumenta resolução em 1º contato.

**Diferencial técnico**: Trata redirecionamento de pasta do OneDrive corporativo via consulta ao registro do Windows. Usa comandos nativos compatíveis com políticas restritivas de GPO.

**Arquivos**: 
- Script: [`/scripts/diagnostico-n1.bat`](/scripts/diagnostico-n1.bat)
- Exemplo de saída: [`/docs/exemplo-diagnostico.txt`](/docs/exemplo-diagnostico.txt)

---
**Contato**: stephanievale94@gmail.com | (21) 97291-7740
