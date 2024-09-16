open Styles
open Constants

@react.component
let make = () => {
  <section
    className={`${styles["flexCenter"]} ${styles["marginY"]} ${styles["padding"]} sm:flex-row flex-col bg-black-gradient-2 rounded-[20px] box-shadow`}>
    <div className="flex-1 flex flex-col">
      <h2 className={`${styles["heading2"]}`}> {"Let's try our service now!"->React.string} </h2>
      <p className={`${styles["paragraph"]} max-w-[470px] mt-5`}>
        {"Everything you need to accept card payments and grow your business
        anywhere on the planet."->React.string}
      </p>
      <section className={`${styles["flexCenter"]} my-4`}>
        <div className={`${styles["flexCenter"]} flex-wrap w-full`}>
          {Array.map(clients, client => {
            <div
              key={client["id"]}
              className={`flex-1 ${styles["flexCenter"]} sm:min-w-[20%] min-w-[20%] mt-5`}>
              <img
                src={client["logo"]}
                alt="client_logo"
                className="sm:w-[20%] w-[50%] object-contain"
              />
            </div>
          })->React.array}
        </div>
      </section>
    </div>
  </section>
}
