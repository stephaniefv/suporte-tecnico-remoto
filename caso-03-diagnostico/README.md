# Caso 03 - Automação: Coletor de Diagnóstico N1

**Problema**: Chamados N1 iniciam com 10min de coleta manual via chat. Ambientes com OneDrive quebram scripts que apontam pro Desktop errado.

**Solução**: Script `.bat` executável com duplo-clique. Compatível com OneDrive e Windows 11.

**Como usar**:
1. Usuário executa `diagnostico.bat`
2. Anexa o `diagnostico-suporte.txt` gerado ao chamado
3. Analista já recebe IP, Gateway, DNS, ping, disco e processos

**Impacto**: Reduz tempo de triagem de 10min para 30s. Aumenta resolução em 1º contato.

**Download do script**: [`diagnostico.bat`](./diagnostico.bat)
**Exemplo de saída**: [`exemplo-saida.txt`](./exemplo-saida.txt)
