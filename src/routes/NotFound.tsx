import { Link } from "react-router-dom";

export default function NotFound() {
  return (
    <div className="mt-20 flex flex-col flex-wrap items-center justify-center text-white ">
      <h1 className="text-3xl">Opps. Page not found!</h1>
      <Link to="/" className="underline underline-offset-1">
        go back to front
      </Link>
    </div>
  );
}
