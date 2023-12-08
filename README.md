# Créer une application web fullstack éco-responsable
Dans le cadre de la nuit de l'info et du défi [proposé par Airbus](https://www.nuitdelinfo.com/inscription/defis/415) nous étions chargé de développer une application web sensibilisant nos visisteurs sur la problématique climatique. Nous avons donc choisi de développer un mélange de Tinder et Would-You-Rather.com gamifié proposant au joueur de déméler le vrai du faux parmi un ensemble de situations concernant le dérèglement climatique. 

Pour réaliser cette application, nous avons choisi de mettre en place la stack RATTP :
- React
- Adonis
- Terraform
- Tailwind
- Postgresql
## Choix techniques
### Framework front-end (React)
Nous avons choisi React car il s'agit du framework front que l'équipe connaissait le mieux. Néanmoins, l'un des inconvénients de React concernant la consommation électrique de l'application est que le code compilé de React est assez lourd. C'est pourquoi nous avons également utilisé **Nx** afin de rendre le code compilé plus léger et ainsi rendre les pages webs avec un moindre téléchargement.
De plus, nous avons créé l'image docker la plus légère possible pour conteneuriser notre front-end. Pour ce faire nous avons utilisé une image Alpine dans notre [Dockerfile](https://github.com/418-Error/frontend/blob/master/Dockerfile). Ensuite nous avons utilisé une image en multistage pour ne conserver que ce dont a besoin le site.
Côté Front, nous avons également utilisé autant que possible le local storage pour mettre  en cache le maximum dans le but d'éviter le plus de call API possible.
### Design de l'application
Concernant l'UI/UX et le design de l'application, nous avons choisi un dark theme pour les couleurs de notre application afin de limiter la consommation électrique de l'écran de l'utilisateur. 
### Framework Back-end (Adonis)
De la même façon que le front-end, nous avons Dockerizer notre serveur avec une image Alpine. Ensuite, nous avons utilisé le framework Adonis car ce framework nous permettait d'implémenter le plus vite possible nos features tout en minimisant la stack trace (en prennant en référence le framework node.js le plus populaire : Express.js).
### Infrastructure as code (Terraform)
Concernant le déploiement de notre application, nous avons choisis Google Cloud Platform car ce Cloud Provider propose beaucoup d'outils de monitoring permettant d'estimer l'impact carbone de notre infrastructre (cf . [Google Carbon Footprint](https://cloud.google.com/carbon-footprint?hl=fr), NB : les statistiques de carbone footprint ne sont disponibles qu'à partir de 21 jours après la mise en production de l'infrastructure, ainsi nous n'aurons les statistiques qu'à partir du 29 décembre). Ensuite, GCP propose de pouvoir utiliser du Serverless pour déployer des images Docker. Pour faire court, le Serverless consiste à utiliser un serveur uniquement lorsqu'il est utilisé, autrement il est mis en veille. Ainsi nos conteneurs Front et Back ne sont utilisés que lorsque l'utilisateur en a besoin (cf. [Cloud run](https://cloud.google.com/run?hl=fr)).
Enfin, pour mettre en place notre infrastructure, nous avons utilisé Terraform. Cela nous a permis d'utiliser l'outil [Carbonifier](https://github.com/carboniferio/carbonifer) qui nous permet d'estimer l'impact carbone d'une infrastructure construite à l'aide de Terraform.
-> (rapport de l'infra généré)[01.database/README.md]
