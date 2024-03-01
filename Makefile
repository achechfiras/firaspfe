build:
    # Cloner le dépôt GitHub contenant votre application
    git clone https://github.com/votre_utilisateur/votre_projet.git
    
    # Construire l'image Docker
    docker build -t mon_application ./votre_projet

deploy:
    # Ici, vous pouvez ajouter les commandes pour déployer votre application
    # Par exemple, vous pouvez pousser l'image vers un registre Docker ou déployer un conteneur Docker sur un serveur
    
    # Exemple de déploiement local en exécutant simplement l'image Docker
    docker run -d -p 8080:8080 mon_application
