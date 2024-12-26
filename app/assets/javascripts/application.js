document.addEventListener("DOMContentLoaded", () => {
  const excludedImages = ["logazo.png", "favicon.ico", "favicon-16x16.png", "favicon-32x32.png", "apple-touch-icon.png"];
  const slideImages = document.querySelectorAll("img");

  slideImages.forEach((image) => {
    const src = image.getAttribute("src");
    if (!excludedImages.some(excluded => src.includes(excluded))) {
      image.classList.add("slide-image");

      // Agrega la clase visible para iniciar la animación después de un retraso
      setTimeout(() => {
        image.classList.add("visible");
      }, 500); // 500ms de retraso
    }
  });
});