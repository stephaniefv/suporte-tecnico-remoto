# Suporte Técnico Remoto na Prática

Documentação de atendimentos reais que fiz via acesso remoto. Foco em N1/N2: Windows, Redes, Office 365.

### 📁 Caso 01 - Outlook não envia e-mails
**Sintoma**: Usuário clicava em enviar e mensagens ficavam presas na Caixa de Saída. Erro 0x80042109.

**Diagnóstico via AnyDesk**: 
1. `ping smtp.office365.com` ok = internet funcionando
2. Porta 587 bloqueada no firewall do Windows
3. Antivírus Avast interceptando SSL

**Solução aplicada**:
1. Liberada porta 587 no Firewall do Windows
2. Adicionada exceção para outlook.exe no Avast
3. Teste de envio realizado com sucesso

**Tempo de resolução**: 12min | **Satisfação**: 10/10
**Prevenção**: Criei tutorial em PDF pro usuário e desativei verificação SSL do antivírus em e-mail

### 🤖 Automação n8n
Fluxo que recebe chamado por formulário, classifica urgência com IA e responde pedindo print + versão do Windows automaticamente. Reduz 60% do tempo de triagem.

**Stack**: Windows 10/11, AnyDesk, GLPI, Zendesk, n8n, ITIL 4
**Contato**: stephanievale94@gmail.com
