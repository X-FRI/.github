open Constants
open Styles

let stats = Array.mapWithIndex(stats, (stat, _index) => {
  let stats_bg = `bg-black-gradient p-5 rounded-xl`
  <div
    key={stat["id"]}
    className={`${stats_bg} flex-1 flex justify-start items-center flex-row m-3`}>
    <p
      className="font-normal xs:text-[20px] text-[15px] xs:leading-[26px] leading-[21px] mr-3 text-white">
      {stat["title"]->React.string}
    </p>
    <h4
      className="font-semibold xs:text-[40px] text-[30px] xs:leading-[50px] leading-[43px] text-gradient">
      {stat["value"]->React.string}
    </h4>
  </div>
})

@react.component
let make = () => {
  <section className={`${styles["flexCenter"]} flex-row flex-wrap sm:mb-20 mb-6`}>
    {stats->React.array}
  </section>
}
