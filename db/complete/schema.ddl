
    create table Agent (
        id varchar(255) not null,
        email varchar(255),
        name varchar(255),
        primary key (id)
    );

    create table DeliveryNote (
        id varchar(255) not null,
        agentName varchar(255),
        confirmDate datetime,
        createDate datetime,
        dnNumber varchar(255),
        printDate datetime,
        status varchar(255),
        agent_id varchar(255),
        primary key (id)
    );

    create table DeliveryNoteDetail (
        id varchar(255) not null,
        model varchar(255),
        posId varchar(255),
        simPhoneNo varchar(255),
        sn varchar(255),
        dn_id varchar(255),
        primary key (id)
    );

    create table FinanceReportHistory (
        id varchar(255) not null,
        agentId varchar(255),
        agentName varchar(255),
        createDate datetime,
        endDate datetime,
        modifyDate datetime,
        reportDetail longtext,
        startDate datetime,
        status varchar(255),
        primary key (id)
    );

    create table GroupBuyValidateResult (
        id varchar(255) not null,
        createAt datetime,
        grouponId varchar(255),
        grouponVCode varchar(255),
        modifyAt datetime,
        result varchar(255),
        status varchar(255),
        primary key (id)
    );

    create table GrouponCache (
        id bigint not null auto_increment,
        createDate datetime,
        detailName varchar(255),
        grouponId varchar(255),
        grouponName varchar(255),
        listName varchar(255),
        mercName varchar(255),
        posId varchar(255),
        resultCode varchar(255),
        primary key (id)
    );

    create table HuaxiaRedeem (
        id varchar(255) not null,
        ackDate datetime,
        ackId varchar(255),
        agentId varchar(255),
        agentName varchar(255),
        cardNum varchar(255),
        confirmDate datetime,
        createDate datetime,
        orderDate varchar(255),
        posId varchar(255),
        posModel varchar(255),
        posSimPhoneNo varchar(255),
        serialNum varchar(255),
        status varchar(255),
        primary key (id)
    );

    create table Journal (
        id bigint not null auto_increment,
        entity varchar(255),
        entityId varchar(255),
        event varchar(255),
        eventDetail longtext,
        ts datetime,
        primary key (id)
    );

    create table PingTest (
        id varchar(255) not null,
        descript varchar(255),
        primary key (id)
    );

    create table Pos (
        id varchar(255) not null,
        dstatus varchar(255),
        firmware varchar(255),
        istatus varchar(255),
        model varchar(255),
        ostatus varchar(255),
        posId varchar(255) not null unique,
        secret varchar(255),
        simPhoneNo varchar(255),
        sn varchar(255),
        upgradeRequired bit,
        version bigint not null,
        primary key (id)
    );

    create table PosAssignment (
        id varchar(255) not null,
        agent_id varchar(255),
        pos_id varchar(255),
        primary key (id)
    );

    create table QQActivityHistory (
        id varchar(255) not null,
        atype varchar(255),
        consumeAmt double precision not null,
        createdAt datetime,
        lastModifiedAt datetime,
        memberKey varchar(255),
        posId varchar(255),
        rebateAmt double precision not null,
        primary key (id)
    );

    create table QQActivityMember (
        id varchar(255) not null,
        createdAt datetime,
        giftStatus varchar(255),
        lastModifiedAt datetime,
        memberKey varchar(255),
        privilegeStatus varchar(255),
        sendTime datetime,
        primary key (id)
    );

    create table QQMeishiXaction (
        id varchar(255) not null,
        agentId varchar(255),
        agentName varchar(255),
        consumeAmount double precision not null,
        forcePwdOnNextAction bit not null,
        posId varchar(255),
        posModel varchar(255),
        posSimPhoneNo varchar(255),
        qqUserToken varchar(255),
        receiptTip varchar(255),
        receiptTitle varchar(255),
        remoteXactDate datetime,
        remoteXactPwd varchar(255),
        ts datetime,
        xactPwd varchar(255),
        xactResultCode integer not null,
        primary key (id)
    );

    create table QQWeixinSignIn (
        id varchar(255) not null,
        createdAt datetime,
        lastModifiedAt datetime,
        posId varchar(255),
        weixinNo varchar(255),
        primary key (id)
    );

    create table ReturnNote (
        id varchar(255) not null,
        agentName varchar(255),
        confirmDate datetime,
        createDate datetime,
        printDate datetime,
        rnNumber varchar(255),
        status varchar(255),
        token varchar(255),
        agent_id varchar(255),
        primary key (id)
    );

    create table ReturnNoteDetail (
        id varchar(255) not null,
        dstatus varchar(255),
        model varchar(255),
        posId varchar(255),
        simPhoneNo varchar(255),
        sn varchar(255),
        rn_id varchar(255),
        primary key (id)
    );

    create table ReturnNoteInvitation (
        id varchar(255) not null,
        requestDate datetime,
        token varchar(255),
        agent_id varchar(255),
        primary key (id)
    );

    create table SysUser (
        username varchar(255) not null,
        password varchar(255),
        primary key (username)
    );

    create table Validation (
        id varchar(255) not null,
        agentId varchar(255),
        agentName varchar(255),
        cstatus varchar(255),
        currentTime varchar(255),
        pcode varchar(255),
        posId varchar(255),
        posModel varchar(255),
        posSimPhoneNo varchar(255),
        refundTime varchar(255),
        resultExplain varchar(255),
        resultName varchar(255),
        resultStatus varchar(255),
        status varchar(255),
        ts datetime,
        useTime varchar(255),
        validTime varchar(255),
        vcode varchar(255),
        primary key (id)
    );

    alter table DeliveryNote 
        add index FK326E7A26EE9BB1B9 (agent_id), 
        add constraint FK326E7A26EE9BB1B9 
        foreign key (agent_id) 
        references Agent (id);

    alter table DeliveryNoteDetail 
        add index FK3426CA179B101BF7 (dn_id), 
        add constraint FK3426CA179B101BF7 
        foreign key (dn_id) 
        references DeliveryNote (id);

    alter table PosAssignment 
        add index FK75B26C216BD33719 (pos_id), 
        add constraint FK75B26C216BD33719 
        foreign key (pos_id) 
        references Pos (id);

    alter table PosAssignment 
        add index FK75B26C21EE9BB1B9 (agent_id), 
        add constraint FK75B26C21EE9BB1B9 
        foreign key (agent_id) 
        references Agent (id);

    alter table ReturnNote 
        add index FKC6832562EE9BB1B9 (agent_id), 
        add constraint FKC6832562EE9BB1B9 
        foreign key (agent_id) 
        references Agent (id);

    alter table ReturnNoteDetail 
        add index FK98C518539B46D481 (rn_id), 
        add constraint FK98C518539B46D481 
        foreign key (rn_id) 
        references ReturnNote (id);

    alter table ReturnNoteInvitation 
        add index FK8A36A69BEE9BB1B9 (agent_id), 
        add constraint FK8A36A69BEE9BB1B9 
        foreign key (agent_id) 
        references Agent (id);
