import { useState } from 'react'
import styled from 'styled-components'
import ColumnTitle from './ColumnTitle'
import Form from '../card/Form'
import Card from '../card/Card'

const ColumnStyle = styled.div`
    width: 308px;
    margin-right: 16px;
`

const Column = ({ initialColumn, setSidebarLog }) => {
    const [isAddBtnClicked, setIsAddBtnClicked] = useState(false)
    const [columnData, setColumnData] = useState(initialColumn)

    const handleClickAddBtn = () => setIsAddBtnClicked(!isAddBtnClicked)
    
    return (
        <div>
            <ColumnStyle>
                <ColumnTitle columnData={columnData} handleClickAddBtn={handleClickAddBtn}/>
                {isAddBtnClicked && 
                    <Form 
                        setIsAddBtnClicked={setIsAddBtnClicked} 
                        columnData={columnData} 
                        setColumnData={setColumnData} 
                        setSidebarLog={setSidebarLog} 
                    />}
                {[...columnData.cardList].reverse().map((card, i) => 
                    <Card key={Date.now() + i} data={card} />)}
            </ColumnStyle>
        </div>
    )
}

export default Column