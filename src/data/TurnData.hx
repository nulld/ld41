package data;

typedef Action = {
    tile:TileId,
    ?workerId:FarmerId,
    actionId:MetaData.ActionsKind,
    startTime:Float
}

typedef TurnData = {
    actions:Array<Action>,
    environmentActions:Array<Action>
}