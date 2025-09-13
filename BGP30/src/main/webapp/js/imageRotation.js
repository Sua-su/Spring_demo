/**
 * 
 */

function startImageRotation(imgId, images, interval = 3000) {
	let index = 0;
	const mainImage = document.getElementById(imgId);
	
	if (!mainImage) {
		console.error(`Element with id="${imgId}" not found`);
		return;
	}
	
	setInterval(() => {
		index = (index + 1) % images.lenth;
		mainImage.src = images[index];
	}, interval);
}