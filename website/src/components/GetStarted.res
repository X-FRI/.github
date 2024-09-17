open Styles

@module("../assets/arrow-up.svg") external arrow_up_icon: string = "default"

@react.component
let make = () => {
  <a href="#community">
    <div
      className={`${styles["flexCenter"]} w-[140px] h-[140px] rounded-full bg-blue-gradient p-[2px] cursor-pointer`}>
      <div className={`${styles["flexCenter"]} flex-col bg-primary w-[100%] h-[100%] rounded-full`}>
        <div className={`${styles["flexStart"]} flex-row`}>
          <p className="font-poppins font-medium mr-2 text-[18px] leading-[23.4px]">
            <span className="text-[#8ca7d8]"> {"立即"->React.string} </span>
          </p>
          <img src=arrow_up_icon alt="arrow-up" className="w-[23px] h-[23px] object-contain" />
        </div>
        <p className="font-poppins font-medium text-[18px] leading-[23.4px]">
          <span className="text-[#8ca7d8]"> {"加入我们"->React.string} </span>
        </p>
      </div>
    </div>
  </a>
}
