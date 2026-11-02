# Manutenção das Releases de distribuição

<!-- language-selector -->
[🇺🇸 English](../RELEASING.md) · [🇧🇷 Português](RELEASING.md) · [🇪🇸 Español](../es/RELEASING.md) · [🇨🇳 简体中文](../zh-CN/RELEASING.md) · [🇫🇷 Français](../fr/RELEASING.md) · [🇯🇵 日本語](../ja/RELEASING.md) · [🇮🇳 हिन्दी](../hi/RELEASING.md) · [🇸🇦 العربية](../ar/RELEASING.md)
<!-- /language-selector -->

[Voltar ao início](../../README.pt-BR.md)

Este repositório é exclusivo para distribuição. **Toda alteração no aplicativo deve ser publicada com instalador atualizado em uma Release e documentação correspondente**, para não haver divergência entre links, prints e comportamento.

<a name="required-release-checklist"></a>
## Checklist obrigatório da Release

1. Compile/teste o aplicativo na árvore privada de trabalho. Nunca copie nem envie esse código-fonte a este repositório.
2. Incremente a versão do aplicativo/instalador. Use tag nova e imutável, como `v1.6.2`; não substitua o executável de uma Release antiga por bytes diferentes.
3. Calcule SHA-256 e tamanho do **instalador final testado**.
4. Atualize `release.json`, `SHA256SUMS.txt` e a versão/hash fixados em `install.ps1`.
5. Atualize README e comandos de instalação, instruções relevantes de uso/configuração/solução de problemas e CHANGELOG nos oito idiomas. Mantenha inglês no README principal, com bandeiras para `README.pt-BR.md`, `README.es.md`, `README.zh-CN.md`, `README.fr.md`, `README.ja.md`, `README.hi.md` e `README.ar.md`. Guias traduzidos ficam em `docs/<locale>/`. Não traduza comandos, hashes, nomes de arquivos, identificadores do modelo nem valores de enum de API.
6. Capture as telas afetadas do pacote novo nos oito idiomas com dados sintéticos e não confidenciais. Imagens em inglês ficam em `docs/images/`; as outras em `docs/images/<locale>/`. Atualize cada guia ilustrado e defina `screenshotsVersion` em `release.json` com a versão do aplicativo. A imagem verdadeira original da guia Power BI permanece em português; explique isso em vez de mudar falsamente seus rótulos. Nunca publique nomes/dados reais nem prints com credenciais.
7. Revise a lista exata dos arquivos rastreados permitidos. Só documentação, PNGs, auxiliar/configuração de instalação e validação da distribuição. Sem fonte do aplicativo, projetos, modelos, credenciais ou dependências de desenvolvimento.
8. Execute a validação localmente. GitHub Actions também verifica a lista/metadados quando a execução hospedada está disponível para a conta.
9. Faça commit/push somente da distribuição e crie uma Release em **rascunho** com instalador, checksum e auxiliar como Assets.
10. Compare tamanho/hash do Asset enviado com o instalador local e publique como versão mais recente.
    O atualizador exige o Asset EXE versionado correspondente em estado `uploaded`, com tamanho positivo limitado e digest GitHub `sha256:`. Nunca omita essas checagens nem publique pré-lançamento/rascunho no canal estável.
11. Teste o auxiliar público versionado com `-DownloadOnly`, sem credenciais. Confira SHA-256 e URL da Release mais recente antes de anunciar.
12. Valide os oito seletores, links/âncoras locais e PNGs traduzidos. Traduções somente de documentação podem ser publicadas em `main` sem alterar bytes do instalador nem criar versão nova do aplicativo; nunca mova uma tag de Release existente.

Usuários baixam o EXE nos **Assets da Release**. Instaladores grandes não pertencem à árvore Git. Arquivos automáticos de código-fonte contêm somente este repositório de distribuição, não o fonte do aplicativo.

Mantenha versões antigas e URLs de auxiliares fixadas disponíveis. `releases/latest` dirige visitantes à versão atual; comandos versionados antigos preservam intencionalmente sua versão original.

<a name="if-hosted-validation-is-unavailable"></a>
## Se a validação hospedada não estiver disponível

Não afirme que o job do GitHub Actions passou. Execute localmente o mesmo passo PowerShell, informe honestamente a restrição do executor hospedado e mantenha o workflow para depois. A restrição por si só não impede baixar Assets públicos das Releases.
