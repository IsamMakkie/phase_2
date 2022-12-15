import FormForRemove from "../components/RemovePageText";

export default function remove() {
  return (
    <div>
      <FormForRemove
        onSubmit={(data) => {
          console.log(data);
        }}
      />
    </div>
  );
}