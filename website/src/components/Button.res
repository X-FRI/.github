@react.component
let make = (~styles) => {
  <span className=styles>
    <a href="#community">
      <button
        className={`py-4 px-6 font-poppins font-medium text-[18px] text-[#f6f6f6] bg-blue-gradient rounded-[10px] outline-none hover:opacity-80`}>
        {"加入我们"->React.string}
      </button>
    </a>
  </span>
}
