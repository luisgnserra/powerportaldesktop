# Configuração

<!-- language-selector -->
[🇺🇸 English](../CONFIGURATION.md) · [🇧🇷 Português](CONFIGURATION.md) · [🇪🇸 Español](../es/CONFIGURATION.md) · [🇨🇳 简体中文](../zh-CN/CONFIGURATION.md) · [🇫🇷 Français](../fr/CONFIGURATION.md) · [🇯🇵 日本語](../ja/CONFIGURATION.md) · [🇮🇳 हिन्दी](../hi/CONFIGURATION.md) · [🇸🇦 العربية](../ar/CONFIGURATION.md)
<!-- /language-selector -->

[Voltar ao início](../../README.pt-BR.md)

<a name="language-and-sidebar-preferences"></a>
## Preferências de idioma e menu lateral

Use as bandeiras do menu para trocar de idioma. A preferência permanece no perfil local do aplicativo do seu usuário Windows. O estado recolhido/expandido do menu também é salvo.

As doze ferramentas permanecem visíveis sem rolagem do menu nos tamanhos de janela suportados. Rótulos longos traduzidos usam até duas linhas visíveis e mantêm o nome acessível/dica completos. **Consultoria e Treinamentos** fica abaixo de **Sobre o desenvolvimento**. [Prints do menu expandido e recolhido](SCREENSHOTS.md#home-and-navigation).

Prioridade do idioma:

1. Sua seleção salva no aplicativo.
2. O arquivo `powerportal-defaults.json` da instalação.
3. O idioma do Windows/Electron, usando inglês para idiomas não suportados.

| Código | Idioma |
|---|---|
| `pt` | Português (Brasil) |
| `en` | Inglês |
| `es` | Espanhol |
| `zh` | Mandarim / chinês simplificado |
| `fr` | Francês |
| `ja` | Japonês |
| `hi` | Hindi |
| `ar` | Árabe, da direita para a esquerda |

O instalador grava este arquivo na pasta de instalação escolhida:

```json
{"language":"en"}
```

Um administrador pode editá-lo com o Power Portal fechado para mudar o padrão de **novos perfis de usuário**. Salve JSON UTF-8 válido com exatamente um código suportado. Não edite binários nem recursos empacotados. Configurações inválidas são informadas explicitamente.

Alterar o padrão da instalação ou reinstalar não substitui a escolha de bandeira já salva por um usuário. Nomes de modelos, dados, código e expressões DAX nunca são traduzidos.

<a name="connect-to-an-open-power-bi-file"></a>
## Conectar a um arquivo aberto no Power BI

Recomendado: abra o PBIX no Power BI Desktop e inicie por **Ferramentas externas > Power Portal**. O Desktop transmite automaticamente o endpoint do modelo local e o identificador do banco.

Se iniciar por um atalho Windows:

1. Abra o PBIX no Power BI Desktop.
2. Surge um aviso inicial quando modelos locais abertos são detectados. Use **Localizar modelos abertos** e selecione o nome do arquivo.
3. Use **Ler modelo do Power BI** para recarregar os metadados depois de alterações.

A detecção somente lista os modelos disponíveis; não seleciona automaticamente um arquivo nem grava nele. Depois de conectado, um status verde compacto no cabeçalho indica os ajustes confirmados; use **Atualizar modelo do Power BI** para recarregar os metadados. [Prints da conexão](SCREENSHOTS.md#connect-to-a-file-already-open-in-power-bi).

Com um único modelo aberto, a leitura pode descobri-lo automaticamente. Se houver vários, selecione explicitamente o arquivo desejado. Nomes semelhantes são diferenciados por um número; títulos das janelas do Power BI nem sempre mostram o caminho completo.

As conexões são somente locais. Não configure um servidor público, compartilhe a porta do modelo nem trate isso como um servidor DAX remoto. Se o Power BI reiniciar, reconecte à nova instância local.

<a name="external-tools-registration"></a>
## Registro em Ferramentas externas

O instalador grava:

```text
%CommonProgramFiles(x86)%\Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json
```

O registro contém o caminho do executável instalado e estes marcadores do Desktop:

```text
-- --powerportal-server "%server%" --powerportal-database "%database%"
```

O `--` inicial é intencional. Não remova nem substitua manualmente por uma porta antiga. Reinicie o Power BI Desktop após instalar ou reparar o registro.

<a name="data-locations"></a>
## Locais dos dados

O perfil normal do aplicativo é:

```text
%APPDATA%\powerportal-desktop
```

Subpastas relevantes:

- `themes`: JSON gerado e exportações de verificação `.applied.json`.
- `model-changes`: registros locais das tentativas de gravação confirmadas e seus resultados.
- `relationship-diagrams`: layouts visuais por modelo, incluindo nomes de tabelas/grupos, ícones, cores, posições e área de visualização. Exporte/importe pelo [Mapa de relacionamentos](RELATIONSHIPS.md#save-and-share-the-organization); isso nunca envia gravações ao modelo.
- `updates`: instaladores de atualização baixados e verificados. Downloads parciais são removidos em falhas tratadas. Instaladores verificados podem permanecer depois da instalação; não os confunda com backups de modelos.
- O perfil também guarda as preferências de interface por usuário.

Backups dos metadados ficam localmente e o caminho exato é exibido após uma gravação bem-sucedida. Documentação exportada e arquivos baixados/gerados usam o destino escolhido pelo usuário.

Trate backups, logs e exportações como confidenciais: um backup BIM completo pode conter detalhes de fontes/conexões e os logs podem conter DAX antigo/novo. Eles não são apagados automaticamente ao desinstalar. Não os publique em issues públicas.

Para redefinir preferências, escolha outro idioma ou expanda o menu no aplicativo. Redefinir todo o perfil também pode remover logs e backups mantidos; não exclua o perfil sem fechar o aplicativo e preservar deliberadamente tudo de que precisa.

<a name="network-and-accounts"></a>
## Rede e contas

- Prévias locais e ferramentas incluídas não exigem conta Power Portal.
- O aplicativo instalado verifica metadados públicos de Releases do GitHub ao iniciar. O atualizador do processo principal baixa Assets oficiais por HTTPS após **Atualizar agora**. Nomes de modelos, expressões, linhas ou credenciais não são incluídos nas solicitações.
- Janelas locais com acesso ao modelo bloqueiam requisições arbitrárias à web remota.
- Links da consultoria e vídeos abrem no navegador padrão quando solicitados.
- O TV Tool usa uma janela isolada de apresentação online para páginas publicadas Power BI/Microsoft. Não compartilha acesso ao modelo local; seu login Microsoft é separado e não persiste entre sessões.
- Consultas DirectQuery podem acessar as fontes originais pelo Power BI e exigir rede e credenciais já existentes.
- E-mail exige um cliente configurado. Use **Copiar e-mail** se não houver.

Não há chaves de API, senhas, credenciais do portal ou arquivos de configuração de código-fonte para fornecer na instalação.

[Instalação](INSTALLATION.md) · [Uso e segurança](USAGE.md) · [Comportamento das atualizações](UPDATES.md)

## Boas-vindas e preferência de exibição salva

A página inicial explica como abrir o arquivo no Power BI Desktop, procurar seu modelo aberto e enviar alterações compatíveis com confirmação. Mostrar boas-vindas sempre que abrir vem ligado; desligue para ocultar a apresentação nas próximas aberturas. Continuar para as ferramentas fecha apenas a apresentação atual. Boas-vindas na página inicial permite reabrir e reativar o toggle. A escolha fica no perfil local, independente da edição Store. Há oito idiomas e acesso por teclado. Abrir essa tela não altera modelos. Faça uma cópia antes de alterar e salve o PBIX no Power BI depois. Os testes verificaram reinícios reais do processo, estados ligado/desligado salvos, descoberta de modelos e layout traduzido. As operações de modelo foram simuladas; nenhum dado real foi alterado.

## Pop-up de boas-vindas e instalador ilustrado

As boas-vindas agora abrem em um pop-up modal centralizado, e não dentro do conteúdo da página inicial. O fundo fica bloqueado e o foco do teclado permanece no pop-up. Escape ou Continuar para as ferramentas fecha apenas a apresentação atual. O toggle salvo para exibir ao iniciar e o botão Boas-vindas na página inicial continuam funcionando. A conclusão do instalador explica Ferramentas Externas > Power Portal no Power BI Desktop e mostra a imagem de referência enviada. Se o Power BI já estava aberto, feche e reabra. Há suporte aos oito idiomas; a imagem de referência mostra a guia em português. A opção existente para iniciar o Power Portal ao concluir foi mantida; ela não clica automaticamente dentro do Power BI. As boas-vindas não alteram modelos.
