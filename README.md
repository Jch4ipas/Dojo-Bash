# Dojo Bash : création d'une galerie d'images

## À propos

> Programmer est, sans aucun doute, la chose la plus gratifiante
> intellectuellement que j’ai jamais réalisée. Programmer m’a appris que la vie
> se devait d’être amusante, remplie de créativité et vécue au maximum de son
> intensité. Programmer m’a appris que tout était possible ; je peux faire ce
> qui me plait en utilisant seulement mon esprit.
>
> _Extrait de [How I learned to program] (qui a été [traduit sur framablog])._

Le but de ce dojo est de créer un script bash qui effectue les actions 
suivantes :
  1. Liste les images d'un dossier
  1. Génère des miniatures de ces images
  1. Utilise la liste des images et leurs miniatures pour générer une galerie
d'images sous forme de page web :
     * Une grille de miniatures permet de prévisualiser les images
     * Un clique sur une miniature redirige vers le fichier original

Le principe est simple et pourra facilement se compléxifier en ajoutant :
  * Un extrait provenant des données [Exif] de l'image
  * L'ouverture de l'image dans un [modal]
  * Des effets CSS (par exemple un blur des images qui disparait au survol 
    de la souris)
  * La manipulation des images en amont, par exemple pour s'assurer que toutes 
    les miniatures soient en paysage même si l'original est en orientation 
    portrait.
  * etc.


## Pour commencer

[don't click](https://youtu.be/AWM5ZNdWlqw)

Pour commencer ce travail, commencez par cloner ce dépot.

En vous aidant de [cette
recherche](https://www.google.com/search?q=minimal+html5+image+gallery), trouvez
une galerie d'image simple et facile à implémenter. Même si il est possible
de tout faire en partant de zéro, c'est toujours plus satisfaisant d'avoir
un résultat léché à la fin ([si](https://codepen.io/blackellis/pen/zYveXEW)
[si](https://codepen.io/thebabydino/pen/PowXYpV)
[si](https://codepen.io/vhanla/pen/PxjZvj)). À défaut de se perdre dans les
recherche, [cette galerie](https://bootstrapious.com/p/bootstrap-photo-gallery)
faite avec Bootstrap 4 est un bon point de départ. Un exemple utilisable est 
disponible sur https://fiddle.jshell.net/bootstrapious/m8pe5qat/show/light/.

Le but est maintenant de générer ce fichier HTML avec les images d'un dossier
spécifique. Le dossier [./images](./images) de ce dépôt contient une sélection
de photos d'architecture provenant du site https://unsplash.com, un site web
dédié au partage de photos sous licence libre.


## Bash ?

Les choses sérieuses commencent, il est l'heure de créer votre script. Il
faut préalablement lui trouver un nom (par exemple <abbr title="Image GAllery
GEnerator"><code>igage</code></abbr>), insérer un [shebang] et lui donner le 
droit de s'exécuter (`chmod +x igage`). Ajoutez ensuite un `echo "Hello World"` 
et vous êtes sur les rails pour continuer par vos propres moyens :)

Bonne chance !

  * https://devhints.io/bash
  * https://devdocs.io/bash/
  * https://tldp.org/


## Concepts d'apprentissage

En plus de découvrir les scripts bash et leurs facilités de mise en place, ce dojo permet d'aborder les sujets suivants :
  * Le monde du web (HTML/CSS/JS)
  * La manipulation d'images ([ImageMagick])
  * Les données [Exif]
  * Les [formats de fichiers d'images], comme AVIF, WebP ou APNG.


## A voir aussi

* https://github.com/epfl-dojo/kata-imagemagick
* https://github.com/epfl-dojo/galimg


[How I learned to program]: https://www.rdegges.com/2012/how-i-learned-to-program/ 
[traduit sur framablog]: https://framablog.org/2012/02/10/programmation-informatique-code/
[Exif]: https://en.wikipedia.org/wiki/Exif
[modal]: https://en.wikipedia.org/wiki/Modal_window
[ImageMagick]: https://imagemagick.org/index.php
[formats de fichiers d'images]: https://developer.mozilla.org/en-US/docs/Web/Media/Formats/Image_types
[shebang]: https://stackoverflow.com/questions/10376206/what-is-the-preferred-bash-shebang
# Dojo-Bash
