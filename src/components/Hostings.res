open Styles

@module("../assets/bill.png") external bill_image: string = "default"
@module("../assets/framagit.svg") external framagit_logo: string = "default"
@module("../assets/github.svg") external github_logo: string = "default"
@module("../assets/codeberg.svg") external codeberg_logo: string = "default"
@module("../assets/gitea.svg") external gitea_logo: string = "default"

@react.component
let make = () => {
  <section id="product" className={`${layout["sectionReverse"]}`}>
    <div className={`${layout["sectionImgReverse"]}`}>
      <img src=bill_image alt="billing" className="w-[100%] h-[100%] relative z-[5]" />
      <div
        className="absolute z-[3] -left-1/2 top-0 w-[50%] h-[50%] rounded-full white__gradient"
      />
      <div
        className="absolute z-[0] w-[50%] h-[50%] -left-1/2 bottom-0 rounded-full pink__gradient"
      />
    </div>
    <div className={`${layout["sectionInfo"]}`}>
      <h2 className={`${styles["heading2"]}`}>
        {"在你喜欢的代码托管平台中"->React.string}
        <br className="sm:block hidden" />
        {"轻松地管理你的仓库"->React.string}
      </h2>
      <p className={`${styles["paragraph"]} max-w-[470px] mt-5`}>
        {"这个世界上存在众多不同的版本控制系统（VCS）和代码托管平台（Github，GitLab等）。我们支持众多不同的平台，您可以自由选择它们之中最适合的。"->React.string}
      </p>
      <div
        className="flex sm:mt-10 mt-6 py-[6px] px-4 bg-black-gradient rounded-[10px] ">
        <img
          src=framagit_logo
          alt="framagit"
          className="w-[144.17px] h-[43.08px] object-contain cursor-pointer"
        />
        <img
          src=github_logo
          alt="github"
          className="w-[128.86px] h-[42.05px] object-contain mr-5 cursor-pointer"
        />
        <img
          src=codeberg_logo
          alt="codeberg"
          className="w-[144.17px] h-[43.08px] object-contain cursor-pointer"
        />
        <img
          src=gitea_logo
          alt="gitea"
          className="w-[144.17px] h-[43.08px] object-contain cursor-pointer"
        />
      </div>
    </div>
  </section>
}
