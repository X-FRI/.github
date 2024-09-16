open Styles

@module("../assets/Discount.svg") external discount: string = "default"
@module("../assets/robot.png") external robot_image: string = "default"

@react.component
let make = () => {
  <>
    <section id="home" className={`flex md:flex-row flex-col ${styles["paddingY"]}`}>
      <div className={`flex-1 ${styles["flexStart"]} flex-col xl:px-0 sm:px-16 px-6`}>
        <div
          className="flex flex-row items-center py-[6px] px-4 bg-discount-gradient rounded-[10px] mb-2">
          <img src=discount alt="discount" className="w-[32px] h-[32px]" />
          <p className={`${styles["paragraph"]} ml-2`}>
            {"为一切纯粹的"->React.string}
            <span className="text-white"> {"热爱"->React.string} </span>
            {"带来无限的"->React.string}
            <span className="text-white"> {"活力"->React.string} </span>
          </p>
        </div>
        <div className="flex flex-row justify-between items-center w-full">
          <h1
            className="flex-1 font-semibold ss:text-[72px] text-[52px] text-white ss:leading-[100.8px] leading-[75px]">
            {"X档案研究所"->React.string}
            <br className="sm:block hidden" />
            <span className="text-gradient">
              {"The X-Files Research Institute"->React.string}
            </span>
            <div className={`flex-1 flex ${styles["flexCenter"]} md:my-0 my-0 `}>
              <div
                className="animate-pulse absolute z-[0] w-[15%] h-[15%] rounded-full pink__gradient"
              />
              <div className="absolute z-[1] w-[5%] h-[5%] rounded-full white__gradient" />
              <div
                className="animate-bounce absolute z-[0] w-[15%] h-[15%] rounded-full blue__gradient"
              />
            </div>
          </h1>
          <div className="ss:flex hidden md:mr-4 mr-0">
            <GetStarted />
          </div>
        </div>
        <p className={`${styles["paragraph"]} max-w-[470px] mt-5`}>
          {"由来自五湖四海，各行各业中拥有相同爱好的人们组成的一个纯粹的开源组织，旨在探索计算机科学和开源领域。"->React.string}
        </p>
      </div>
      <div className={`flex-1 flex ${styles["flexCenter"]} md:my-0 my-10 relative`}>
        <img src={robot_image} alt="robot_image" className="w-[100%] h-[100%] relative z-[5]" />
      </div>
      <div className={`ss:hidden ${styles["flexCenter"]}`}>
        <GetStarted />
      </div>
    </section>
  </>
}
