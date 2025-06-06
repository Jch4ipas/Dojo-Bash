#! /bin/bash
declare pathtoimage
read -p "Quelle est ton path vers tes images : " pathtoimage
numberimage=1
cat > index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles.css">
    <title>Masonry Layout con CSS Grid</title>
</head>
<body>
  <div class="grid image-grid">
EOF

cd ./images
for f in *; do
    if [ "$numberimage" -eq 11 ]; then
        numberimage=1
    fi
    echo $f
    echo $numberimage
  cat >> ../index.html <<EOF
    <div class="grid-block">
      <div class="tile">
        <a class="tile-link" href="$pathtoimage$f">
          <img class="tile-img tile-img$numberimage" src="$pathtoimage$f" alt="Image">
        </a>
      </div>
    </div>
EOF
    numberimage=$((numberimage + 1))
done;

cd ..
echo "
  </div>
</body>
</html>
" >> index.html

echo "
html {
    box-sizing: border-box;
  }
  
  *,
  *:before,
  *:after {
    box-sizing: inherit;
  }
  
  body {
    margin: 0;
    min-height: 100vh;
    font-size: 1rem;
    line-height: 1.25;
    background-color: #18222d;
  }
  
  .grid {
    width: 100%;
    max-width: 60rem;
    margin-left: auto;
    margin-right: auto;
  
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    flex-direction: row;
    flex-wrap: wrap;
  }
  
  .grid-block {
    width: 50%;
    min-height: 11.25rem;
    padding: 1rem;
  }
  
  .image-grid {
    -webkit-transform: rotateX(45deg) rotateZ(45deg);
    transform: rotateX(45deg) rotateZ(45deg);
    -webkit-perspective: 1000px;
    perspective: 1000px;
  }
  
  .image-grid .tile-link:hover .tile-img {
    top: -1rem;
    left: -1rem;
  }
  
  .image-grid .tile-img {
    position: relative;
    top: 0;
    left: 0;
    -webkit-transition-property: opacity, top, left, box-shadow;
    transition-property: opacity, top, left, box-shadow;
  }
  
  .tile-link {
    display: block;
  }
  
  .tile-link:hover .tile-img {
    opacity: 1;
  }
  
  .tile-link:hover .tile-img-link {
    display: block;
  }
  
  .tile-link:hover .tile-img-link:hover .tile-img {
    opacity: 0.5;
  }
  
  .tile-img {
    display: block;
    width: 100%;
    height: auto;
    opacity: 1;
    -webkit-transition-property: opacity;
    transition-property: opacity;
    -webkit-transition-duration: 0.125s;
    transition-duration: 0.125s;
    -webkit-transition-timing-function: ease-in;
    transition-timing-function: ease-in;
  }
  .tile-link:hover .tile-img1 {
    box-shadow: 5px 5px rgba(244, 170, 200, 0.4),
      10px 10px rgba(244, 170, 200, 0.3), 15px 15px rgba(244, 170, 200, 0.2),
      20px 20px rgba(244, 170, 200, 0.1), 25px 25px rgba(244, 170, 200, 0.05);
  }
  
  .tile-link:hover .tile-img2 {
    box-shadow: 5px 5px rgba(45, 186, 233, 0.4), 10px 10px rgba(45, 186, 233, 0.3),
      15px 15px rgba(45, 186, 233, 0.2), 20px 20px rgba(45, 186, 233, 0.1),
      25px 25px rgba(45, 186, 233, 0.05);
  }
  
  .tile-link:hover .tile-img3 {
    box-shadow: 5px 5px rgba(214, 221, 244, 0.4),
      10px 10px rgba(214, 221, 244, 0.3), 15px 15px rgba(214, 221, 244, 0.2),
      20px 20px rgba(214, 221, 244, 0.1), 25px 25px rgba(214, 221, 244, 0.05);
  }
  
  .tile-link:hover .tile-img4 {
    box-shadow: 5px 5px rgba(82, 119, 192, 0.4), 10px 10px rgba(82, 119, 192, 0.3),
      15px 15px rgba(82, 119, 192, 0.2), 20px 20px rgba(82, 119, 192, 0.1),
      25px 25px rgba(82, 119, 192, 0.05);
  }
  
  .tile-link:hover .tile-img5 {
    box-shadow: 5px 5px rgba(138, 218, 245, 0.4),
      10px 10px rgba(138, 218, 245, 0.3), 15px 15px rgba(138, 218, 245, 0.2),
      20px 20px rgba(138, 218, 245, 0.1), 25px 25px rgba(138, 218, 245, 0.05);
  }
  
  .tile-link:hover .tile-img6 {
    box-shadow: 5px 5px rgba(203, 215, 193, 0.4),
      10px 10px rgba(203, 215, 193, 0.3), 15px 15px rgba(203, 215, 193, 0.2),
      20px 20px rgba(203, 215, 193, 0.1), 25px 25px rgba(203, 215, 193, 0.05);
  }
  
  .tile-link:hover .tile-img7 {
    box-shadow: 5px 5px rgba(91, 209, 250, 0.4), 10px 10px rgba(91, 209, 250, 0.3),
      15px 15px rgba(91, 209, 250, 0.2), 20px 20px rgba(91, 209, 250, 0.1),
      25px 25px rgba(91, 209, 250, 0.05);
  }
  
  .tile-link:hover .tile-img8 {
    box-shadow: 5px 5px rgba(145, 156, 196, 0.4),
      10px 10px rgba(145, 156, 196, 0.3), 15px 15px rgba(145, 156, 196, 0.2),
      20px 20px rgba(145, 156, 196, 0.1), 25px 25px rgba(145, 156, 196, 0.05);
  }
  
  .tile-link:hover .tile-img9 {
    box-shadow: 5px 5px rgba(188, 97, 129, 0.4), 10px 10px rgba(188, 97, 129, 0.3),
      15px 15px rgba(188, 97, 129, 0.2), 20px 20px rgba(188, 97, 129, 0.1),
      25px 25px rgba(188, 97, 129, 0.05);
  }
  
  .tile-link:hover .tile-img10 {
    box-shadow: 5px 5px rgba(4, 140, 231, 0.4), 10px 10px rgba(4, 140, 231, 0.3),
      15px 15px rgba(4, 140, 231, 0.2), 20px 20px rgba(4, 140, 231, 0.1),
      25px 25px rgba(4, 140, 231, 0.05);
  }
  
" > styles.css

# Le code html et css viens de https://codepen.io/blackellis/pen/zYveXEW