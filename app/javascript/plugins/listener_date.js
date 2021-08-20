
const computPrice = () => {
  const startDate = document.querySelector("#booking_start_date");
  const endDate = document.querySelector("#booking_end_date");
  if (startDate) {
    endDate.addEventListener("change", postValue)
    function postValue(event) {
      console.log(startDate)
      const end_date_value = new Date(event.target.value);
      const start_date_value = new Date(startDate.value)
      const diffDays = (end_date_value - start_date_value) / (1000 * 3600 * 24);
      const creaturePrice = parseInt(document.querySelector("#creature_price").innerHTML);
      const price = creaturePrice * diffDays
      document.querySelector("#total_price").innerHTML = `Your experience will cost ${price} $.`
      document.querySelector("#duration").innerHTML = `Your experience will last ${diffDays} days.`

    }

  }

}
export {computPrice}
