"use strict";var siteBox=document.getElementById("siteBox");function openSite(){this.value&&window.open(this.value)}function init(){siteBox.addEventListener("change",openSite)}init();