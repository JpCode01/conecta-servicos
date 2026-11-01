(function () {
  "use strict";

  var menuToggle = document.querySelector(".menu-toggle");
  var navigation = document.querySelector("#primary-navigation");
  var mobileQuery = window.matchMedia("(max-width: 47.99rem)");

  if (menuToggle && navigation) {
    var menuLabel = menuToggle.querySelector(".sr-only");
    var navigationLinks = navigation.querySelectorAll("a");

    function setMenuState(isOpen) {
      var shouldOpen = isOpen && mobileQuery.matches;

      navigation.hidden = !shouldOpen;
      menuToggle.setAttribute("aria-expanded", String(shouldOpen));

      if (menuLabel) {
        menuLabel.textContent = shouldOpen ? "Fechar menu" : "Abrir menu";
      }
    }

    function syncMenuToViewport() {
      if (mobileQuery.matches) {
        setMenuState(menuToggle.getAttribute("aria-expanded") === "true");
      } else {
        navigation.hidden = false;
        menuToggle.setAttribute("aria-expanded", "false");

        if (menuLabel) {
          menuLabel.textContent = "Abrir menu";
        }
      }
    }

    menuToggle.addEventListener("click", function () {
      setMenuState(menuToggle.getAttribute("aria-expanded") !== "true");
    });

    navigationLinks.forEach(function (link) {
      link.addEventListener("click", function () {
        if (mobileQuery.matches) {
          setMenuState(false);
        }
      });
    });

    document.addEventListener("keydown", function (event) {
      if (event.key === "Escape" && menuToggle.getAttribute("aria-expanded") === "true") {
        setMenuState(false);
        menuToggle.focus();
      }
    });

    if (mobileQuery.addEventListener) {
      mobileQuery.addEventListener("change", syncMenuToViewport);
    } else {
      mobileQuery.addListener(syncMenuToViewport);
    }

    window.addEventListener("resize", syncMenuToViewport);
    document.documentElement.classList.add("js-enabled");
    syncMenuToViewport();
  }

  document.querySelectorAll(".faq-item").forEach(function (item) {
    var summary = item.querySelector("summary");
    var answer = item.querySelector("summary + p");

    if (!summary || !answer) {
      return;
    }

    function syncFaqState() {
      var isOpen = item.open;

      summary.setAttribute("aria-expanded", String(isOpen));
      answer.hidden = !isOpen;
    }

    item.addEventListener("toggle", syncFaqState);
    syncFaqState();
  });
})();
