open Styles
open Constants

@react.component
let make = () => {
  <section
    id="clients" className={`${styles["paddingY"]} ${styles["flexCenter"]} flex-col relative `}>
    <div
      className="absolute z-[0] w-[60%] h-[60%] blue__gradient bottom-40"
    />
    <div
      className="absolute z-[0] w-[60%] h-[60%] -right-[50%] rounded-full blue__gradient bottom-40"
    />
    <div
      className="w-full flex justify-between items-center md:flex-row flex-col sm:mb-16 mb-6 relative z-[1]">
      <h2 className={`${styles["heading2"]}`}>
        {"人们对X档案研究所的看法"->React.string}
      </h2>
      <div className="w-full md:mt-0 mt-6">
        <p className={`${styles["paragraph"]} text-left max-w-[450px]`}>
          {"任何事物在人们不同的视角下都会有不同的评价。"->React.string}
        </p>
        <p className={`${styles["paragraph"]} text-left max-w-[450px]`}>
          {"毕竟，思想——人的全部尊严就在于思想。"->React.string}
        </p>
      </div>
    </div>
    <div
      className="flex flex-wrap sm:justify-start justify-center w-full feedback-container relative z-[1]">
      {Array.map(feedback, card => <FeedbackCard key={card["id"]} card />)->React.array}
    </div>
  </section>
}
