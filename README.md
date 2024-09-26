# Chat App - Flutter
Este é um aplicativo de chat simples desenvolvido em Flutter, que inclui autenticação de usuários com Firebase Authentication, armazenamento de imagens com Firebase Storage, armazenamento de dados com Firestore Database e notificações push com Firebase Messaging.


## Funcionalidades
**Autenticação de Usuário:** Cadastro e login com Firebase Authentication.

**Chat em Tempo Real:** Comunicação entre usuários em tempo real utilizando o Firestore Database.

**Upload de Imagens:** Upload de fotos diretamente no chat usando Firebase Storage.

**Notificações Push:** Notificações para novos chats e mensagens usando Firebase Messaging.



## Passos para Configuração do Firebase
Crie um projeto no Firebase Console:


### Acesse Firebase Console, crie um projeto e adicione seu aplicativo Flutter (iOS e Android).
Ative os serviços necessários:


**Authentication:** Ative o método de autenticação por e-mail e senha.

**Firestore Database:** Configure um banco de dados Firestore no modo de teste ou com regras de segurança adequadas.

**Firebase Storage:** Configure o armazenamento para salvar as imagens enviadas no chat.

**Firebase Messaging:** Ative o Firebase Cloud Messaging (FCM) para enviar notificações push.
