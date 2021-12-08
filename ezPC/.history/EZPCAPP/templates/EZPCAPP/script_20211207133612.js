const footerYear = document.querySelector("#year");

function getTime(){
	const date = new Date(),
		yyyy = date.getFullYear();
		
	footerYear.innerHTML = `${yyyy}`;
}

getTime();