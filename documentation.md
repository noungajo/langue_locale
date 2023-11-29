# Ajouter un nouvel audio

Ici nous allons énoncer les étapes à suivre pour ajouter un nouvel audio d'une langue. Cela suppose que l'objet 0 existe déjà c'est à dire que dans la liste de lecture des objets compter on a cette ligne:

```dart
 LectureModele(text: "zero", imageUrl: "${imageUrlBaseCompter}0.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseCompter}0_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBaseCompter}0_dla.ogg",languePrisEnCharge[indexBangante]:""}),
```

Cette ligne instancie l'objet de lecture du chiffre *0*. Nous observons qu'uniquement les audios des langues Nufi et Douala sont fourni et nous voudrions ajouter l'audio de la langue banganté.

 Supposons qu'il s'agisse de l'audio "0_bgte.ogg". C'est l'audio qui appartient à la rubrique compter. Voici les étapes pour ajouter cet audio :

- Copier l'audio dans le repertoire approprié : "assets/audios/compter/"
- Modifier l'objet de lecture associé. Pour le cas d'espèce il s'agit du chiffre *0* pour ajouter le chemin de l'audio pour la langue bangangté.

```dart
 LectureModele(text: "zero", imageUrl: "${imageUrlBaseCompter}0.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseCompter}0_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBaseCompter}0_dla.ogg",languePrisEnCharge[indexBangante]:"${audioUrlBaseCompter}0_bgte.ogg"),
```

> nb: Pour modifierun audios il suffit de modifier le fichier sauvegardé en gardant le même nom

# Ajouter une nouvelle langue

Maintenant nous aimerons ajouter la langue Yambassa. Pour cela il faudra suivre les étapes suivantes :

- Aller dans le fichier *lib/constants/app_constants.dart* et ajouter la langue en question dans la liste des langues prises en charge

```dart
 languePrisEnCharge =  [
    "Fè'éfè'é",
    "Douala",
    "Bangangté",
    "Yambassa"
  ]
```

- Dans les objets instanciés ajouter la nouvelle langue dans la map de l'audio

```js
audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseCompter}0_nufi.ogg",languePrisEnCharge[indexDouala]:"${audioUrlBaseCompter}0_dla.ogg",languePrisEnCharge[indexBangante]:"${audioUrlBaseCompter}0_bgte.ogg",languePrisEnCharge[indexYambassa]:""}
```

> nb : Éventuellement ajouter l'audio associé à la nouvelle langue.

# Source médias

 Nous allons maintenant expliquer comment rendre visible le dossier des fichiers en flutter. la variable **audioUrlBaseCompter** correspond à ce chemin *assets/audios/compter/* et poru que les audios de ce dossier soit visible dans l'application il a fallu exposer ce dossier dans le pubspec.yaml comme ceci:

 ```yaml
  assets:
    - assets/images/
    - assets/images/compter/
    - assets/audios/compter/
 ```

Il faut remarquer que plusieurs repertoires ont été exposé. Ainsi dans le projet tous les fichiers de chaque repertoire exposé seront visible.
