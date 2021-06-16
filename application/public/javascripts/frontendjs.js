var express = require('express');
var router = express.Router();

router.get('/NewsFeed', (req, res, next) => {
    

function createCard(postData) {
    return `<div  id="post-${postData.id}" class="card">
    <img class ="card-image" src="${postData.thumbnail}" alt="Image is missing">
    <div class ="card-body">
        <p class="card-title">${postData.title}</p>
        <p class="card-text">${postData.description}</p>
        <a href="/post/${postData.id}" class="anchor-buttons">Image Information</a>
    </div>
</div>`;
}

function executeSearch() {
    let searchTerm = document.getElementById('search-text').value;
    if (!searchTerm) {
        location.replace('/NewsFeed');
        return;
    }
    let mainContent = document.getElementById('main-content');
    let searchURL = `/posts/search?search=${searchTerm}`;
    fetch(searchURL)
        .then((data) => {
            return data.json();
        })
        .then((data_json) => {
            let newMainContentHTML = '';
            data_json.results.forEach((row) => {
                newMainContentHTML += createCard(row);
            });
            mainContent.innerHTML = newMainContentHTML;
        })
        .catch((err) => console.log(err));
}

let searchButton = document.getElementById('search-button');
if (searchButton) {
    searchButton.onclick = executeSearch;
    }
});