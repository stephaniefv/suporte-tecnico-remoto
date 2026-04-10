# 📁 Caso 02 - Falha de DNS | Sites não abrem

## 🎯 Objetivo
Simular falha de resolução DNS em ambiente Windows 11 para reproduzir o cenário de sites indisponíveis.

---

## 🖥️ Ambiente
- Windows 11
- Wi-Fi
- PowerShell
- DNS manual

---

## 🧪 Passo a passo realizado

### 1. Simulação do problema
Foi configurado manualmente DNS inválido no adaptador Wi-Fi:

```text
192.168.250.250
192.168.250.251
```

---

### 2. Diagnóstico técnico
Teste executado no PowerShell:

```powershell
nslookup google.com
```

Resultado inicial:

```text
DNS request timed out
```

---

### 3. Correção
Alteração do DNS para servidores públicos:

```text
1.1.1.1
8.8.8.8
```

Limpeza do cache:

```powershell
ipconfig /flushdns
```

---

### 4. Validação
Novo teste:

```powershell
nslookup google.com
```

Resultado final:

```text
Servidor: one.one.one.one
Address: 1.1.1.1
```

---

## 📚 Aprendizados
- Troubleshooting DNS
- Diagnóstico com nslookup
- Configuração manual de DNS
- Limpeza de cache
- Resolução de incidentes em rede
