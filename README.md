# Projeto Youtube Search 

## Para criação dos projetos: 

***Mobile***
```
flutter create --project-name=youtube_search_web --org br.com.rocketseat --platforms android,ios -i swift -a kotlin ./youtube_search_mobile
```

***Web***
```
flutter create --project-name=youtube_search_web --org br.com.rocketseat --platforms web ./youtube_search_web
```

Para rodar o projeto você deve alterar o arquivo youtube_repository.dart.

Crie uma chave no google cloud (https://cloud.google.com/) para o service **YouTube Data API v3** 

Altere a linha: 
```
String googleKey = const String.fromEnvironment('GOOGLE_KEY', defaultValue: '');
```

Para:
```
String googleKey = 'SUA_CREDENCIAL';
```

