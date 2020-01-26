function flipcard(){
	let card = document.getElementById('card');
	if(card.classList.contains('flipped')){
		card.classList.remove('flipped');
	}else{
		card.classList.add('flipped');
	}
}