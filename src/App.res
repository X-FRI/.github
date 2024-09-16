@module("./assets/logo.svg") external logo: string = "default"

open Styles

@react.component
let make = () => {
  <div className="bg-primary w-full overflow-hidden">
    <div className={`${styles["paddingX"]} ${styles["flexCenter"]}`}>
      <Navbar />
    </div>
    <div className={`bg-primary ${styles["flexStart"]}`}>
      <div className={`${styles["boxWidth"]}`}>
        <Home />
      </div>
    </div>
    <div className={`bg-primary ${styles["paddingX"]} ${styles["flexStart"]}`}>
      <div className={`${styles["boxWidth"]}`}>
        <Stats />
        <Highlights />
        <Hostings />
        <Blogs />
        <Testimonials />
        <CTA />
        <Footer />
      </div>
    </div>
  </div>
}
