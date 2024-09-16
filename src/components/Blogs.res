open Styles

@module("../assets/card.png") external card_image: string = "default"

@react.component
let make = () => {
  <section className={`${layout["section"]}`}>
    <div className={`${layout["sectionInfo"]}`}>
      <h3 className={`${styles["heading3"]}`}>
        {"将你热爱的事物传递下去，"->React.string}
        <br className="sm:block hidden" />
        {"或传递给未来的自己。"->React.string}
      </h3>
      <p className={`${styles["paragraph"]} mt-5`}>
        {"一个技术博客可以帮助许多人学习和成长，就像你个人的成长一样。"->React.string}
      </p>

      <p className={`${styles["paragraph"]} mt-5`}>
        {"毕竟，当我们尝试学习新东西时，也会去寻找博客。"->React.string}
      </p>
      <Button styles="mt-10" />
    </div>
    <div className={`${layout["sectionImg"]}`}>
      <img src={card_image} alt="billing" className="w-[100%] h-[100%]" />
    </div>
  </section>
}
