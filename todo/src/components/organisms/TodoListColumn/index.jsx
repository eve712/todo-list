import styled from "styled-components";
import TodoTitle from "../../molecules/TodoTitle";
import TodoListItem from "../../molecules/TodoListItem";
import TodoListInput from "../../molecules/TodoListInput";
import useToggle from "../../../hooks/useToggle";

const Div = styled.div`
  margin: 5px;
`;

const TodoListColumn = ({ columnName, items }) => {
  const [isClicked, toggleActions] = useToggle(false);

  let template;

  if (!isClicked) {
    template = (
      <Div>
        <TodoTitle addTodo={toggleActions.toggle}>{columnName}</TodoTitle>
        {items.map(({ id, title, content, author }) => {
          return (
            <TodoListItem
              key={id}
              {...{ title, content, author }}
            ></TodoListItem>
          );
        })}
      </Div>
    );
  } else {
    template = (
      <Div>
        <TodoTitle addTodo={toggleActions.toggle}>{columnName}</TodoTitle>
        <TodoListInput></TodoListInput>
        {items.map(({ id, title, content, author }) => {
          return (
            <TodoListItem
              key={id}
              {...{ title, content, author }}
            ></TodoListItem>
          );
        })}
      </Div>
    );
  }

  return <>{template}</>;
};

export default TodoListColumn;
