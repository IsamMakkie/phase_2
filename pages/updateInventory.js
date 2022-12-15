import FormPropsTextFields from "../components/TextBox";

export default function update() {
  return (
    <div>
      <FormPropsTextFields
        onSubmit={(data) => {
          console.log(data);
          if (data.message == "no shoes found") {
            alert("no shoes found");
          }
        }}
      />
    </div>
  );
}
