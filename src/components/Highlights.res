open Constants
open Styles

module FeatureCard = {
  @react.component
  let make = (~feature, ~index) => {
    let mb = index != Array.length(features) - 1 ? "mb-6" : "mb-9"

    <div className={`${mb} flex flex-row p-6 rounded-[20px] feature-card`}>
      <div className={`${styles["flexCenter"]} w-[64px] h-[64px] rounded-full bg-dimBlue`}>
        <img src={feature["icon"]} alt="icon" className="w-[50%] h-[50%] object-contain" />
      </div>
      <div className="flex-1 flex flex-col ml-3">
        <h4 className="font-poppins font-semibold text-white text-[18px] leading-[23px] mb-1">
          {feature["title"]->React.string}
        </h4>
        <p className="font-poppins font-normal text-dimWhite text-[18px] leading-[23px] mb-1">
          {feature["content"]->React.string}
        </p>
      </div>
    </div>
  }
}

@react.component
let make = () => {
  <section className=`${layout["section"]}`>
    <div className={`${layout["sectionInfo"]}`}>
      <h3 className={`${styles["heading3"]}`}>
        {"在与你有相同爱好的人群中，"->React.string}
        <br className="sm:block hidden" />
        {"进一步寻找你需要的技术栈。"->React.string}
      </h3>
      <p className={`${styles["paragraph"]} max-w-[470px] mt-5`}>
        {"我们不带偏见地看待各种技术，OCaml、F#、Rescript、C++、Rust、Golang、Scala、Java、Kotlin、Clojure、JavaScript、TypeScript、Python...（排名不分先后）"->React.string}
      </p>
      <Button styles="mt-10" />
    </div>
    <div className={`${layout["sectionImg"]} flex-col`}>
      {Array.mapWithIndex(features, (feature, index) => {
        <FeatureCard key={feature["id"]} feature index />
      })->React.array}
    </div>
  </section>
}
