open Constants
open Styles

@val external document: 'a = "document"

@react.component
let make = () => {
  let social_mb = index => {
    index != Array.length(socialMedia) - 1 ? "mr-6" : "mr-0"
  }

  <section className={`${styles["flexCenter"]} ${styles["paddingY"]} flex-col`}>
    <div className={`${styles["flexStart"]} md:flex-row flex-col mb-8 w-full`}>
      <div className="flex-[1] flex flex-col justify-center items-center">
        <img src={logo} alt="hoobank" className="w-[266px] h-[72.14px] object-contain" />
        <p className={`${styles["paragraph"]} mt-4`}>
          {"一个纯粹的开源组织，旨在探索计算机科学和开源领域。"->React.string}
        </p>
      </div>
    </div>
    <div
      className="w-full flex justify-between items-center md:flex-row flex-col pt-6 border-t-[1px] border-t-[#3F3E45]">
      <p className="font-poppins font-normal text-center text-[18px] leading-[27px] text-white">
        {"Copyright Ⓒ 2024 The X-Files Research Institute. All Rights Reserved."->React.string}
      </p>
      <div className="flex flex-row md:mt-0 mt-6">
        {Array.mapWithIndex(socialMedia, (social, index) => {
          <img
            key={social["id"]}
            src={social["icon"]}
            alt={social["id"]}
            className={`${social_mb(index)} w-[21px] h-[21px] object-contain cursor-pointer`}
            onClick={_event => {document["location"]["href"] = social["link"]}}
          />
        })->React.array}
      </div>
    </div>
  </section>
}
