import React from "react";
import { Link } from "react-router-dom";

export default function Main() {

  return (
    <div>
      <div className="left-box">
        <button><Link to="/movies">Movies</Link></button>
      </div>
      <div className="right-box">
        <button><Link to="/foods">Foods</Link></button>
      </div>
    </div>
  )
}
