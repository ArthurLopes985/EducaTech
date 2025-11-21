# Segurança do Firebase (segredos removidos)

Os arquivos de configuração do Firebase não estão mais com credenciais sensíveis no repositório. Para manter o projeto funcional localmente:

- **Android:** baixe `google-services.json` na console do Firebase e coloque em `android/app/google-services.json` (não comite).
- **iOS:** baixe `GoogleService-Info.plist` e coloque em `ios/Runner/GoogleService-Info.plist` (não comite).
- **Web:** crie `assets/jsons/firebase_config.json` com o conteúdo do Firebase Web SDK (ex.: `assets/jsons/firebase_config.example.json` existe como modelo). Esse arquivo também não deve ser comitado.

Exemplo de `assets/jsons/firebase_config.json`:

```
{
  "apiKey": "YOUR_API_KEY",
  "authDomain": "your-project.firebaseapp.com",
  "projectId": "your-project-id",
  "storageBucket": "your-project.appspot.com",
  "messagingSenderId": "YOUR_SENDER_ID",
  "appId": "YOUR_APP_ID"
}
```

Se os arquivos sensíveis já foram empurrados para o GitHub, recomenda-se rotacionar as chaves/API keys pelo console do Firebase e, se necessário, limpar o histórico Git (por exemplo usando `git filter-repo` ou o BFG). Comandos úteis:

```
# Remova do índice (mantém arquivo local)
git rm --cached android/app/google-services.json
git rm --cached ios/Runner/GoogleService-Info.plist
git rm --cached assets/jsons/firebase_config.json

# Commit e push
git commit -m "Remove Firebase config files from repo"
git push origin <sua-branch>
```

Para remover os arquivos do histórico (opcional, mais seguro):

```
# Usando BFG (exemplo):
bfg --delete-files google-services.json
bfg --delete-files GoogleService-Info.plist
# ou usar git filter-repo conforme documentação
```

Depois disso, gere novas chaves no console do Firebase e substitua nos arquivos locais.
