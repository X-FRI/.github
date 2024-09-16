open Styles
open Constants

@react.component
let make = () => {
  <section
    className={`${styles["flexCenter"]} ${styles["marginY"]} ${styles["padding"]} sm:flex-row flex-col bg-black-gradient-2 rounded-[20px] box-shadow`}>
    <div className="flex-1 flex flex-col">
      <h3 className={`${styles["heading3"]}`}> {"开始与X档案研究所的其他成员进行交流"->React.string} </h3>
      <p className={`${styles["paragraph"]} mt-5`}>
        {"我们使用一些IM应用进行交流，例如 QQ，企业微信，或是 Matrix。同时我们也支持使用邮件列表的方式进行交流。"->React.string}
      </p>
      <section className={`${styles["flexCenter"]} my-4`}>
        <div className={`${styles["flexCenter"]} flex-wrap w-full`}>
          {Array.map(clients, client => {
            <div
              key={client["id"]}
              className={`flex-1 ${styles["flexCenter"]} sm:min-w-[20%] min-w-[20%] mt-5`}>
              <img
                src={client["logo"]} alt="client_logo" className="sm:w-[20%] w-[50%] object-contain"
              />
            </div>
          })->React.array}
        </div>
      </section>
    </div>
  </section>
}
