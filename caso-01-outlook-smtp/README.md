# Caso 01 - Outlook não envia e-mails | Erro SMTP 587

## 🎯 Objetivo
Simular falha no envio de e-mails causada por bloqueio da porta SMTP 587 no Windows Defender Firewall.

---

## 🖥️ Ambiente
- Windows 11
- Windows Defender
- Navegador / Office 365
- PowerShell

---

## 📸 Evidências

### Print 1 - Ambiente
![Ambiente](print-01-ambiente.png)

### Print 2 - Regra criada
![Firewall](print-02-regra-firewall.png)

### Print 3 - Falha no teste
![False](print-03-teste-false.png)

### Print 4 - Solução validada
![True](print-04-teste-true.png)

---

## 🛠️ Passo a passo realizado

### 1. Criada regra no Firewall
Bloqueio da porta TCP 587 em regras de saída.

### 2. Teste técnico
```powershell
Test-NetConnection smtp.office365.com -Port 587
```

Resultado:

```text
TcpTestSucceeded : False
```

### 3. Correção
Regra desabilitada no Windows Defender Firewall.

### 4. Validação
Novo teste realizado.

```text
TcpTestSucceeded : True
```

---

## 📚 Aprendizado
- Troubleshooting
- SMTP
- Firewall
- PowerShell
- Diagnóstico de rede
