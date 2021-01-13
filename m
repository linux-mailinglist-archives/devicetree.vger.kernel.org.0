Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 888E52F4CA4
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 15:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726584AbhAMOAD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 09:00:03 -0500
Received: from mail-eopbgr00066.outbound.protection.outlook.com ([40.107.0.66]:11430
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726531AbhAMOAD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 09:00:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K2Q0vdVwoLeNd73E8lLJzS92mHuj1xrHe7btmu5VjE=;
 b=6ki1TJNzeNVvSxGrERl8k4az6qX7JFSOI0oS52w6V7J4+fcdStTVpInfFkAHiV6m/VBQ7MQhPN+LCPSdqFHnd6R8jLf4PgDKjYqI93jqOUiHkC/iptBw9kcN9H1XANrJJ1dh7wxol85OKElY75qsF9UOb1u4wwDt7ZJrVgiYV9I=
Received: from AM6P194CA0055.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:84::32)
 by AM0PR08MB3346.eurprd08.prod.outlook.com (2603:10a6:208:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 13:59:12 +0000
Received: from AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:84:cafe::2b) by AM6P194CA0055.outlook.office365.com
 (2603:10a6:209:84::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend
 Transport; Wed, 13 Jan 2021 13:59:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT030.mail.protection.outlook.com (10.152.16.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3742.6 via Frontend Transport; Wed, 13 Jan 2021 13:59:12 +0000
Received: ("Tessian outbound 587c3d093005:v71"); Wed, 13 Jan 2021 13:59:11 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 14c16dfde8b655e5
X-CR-MTA-TID: 64aa7808
Received: from f98479c0bc00.2
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3078E4D7-D27C-4026-9427-34C397295529.1;
        Wed, 13 Jan 2021 13:59:06 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f98479c0bc00.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 13 Jan 2021 13:59:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HeBP8oWzo0ZPKxXDlCKJqvozH3GnFx4KCrX13F8yOzpuoRS0M58vGh/jANHEQNsu9ahFecojjpsWPYqDa7qDRxcsr5heAylluDhvtX2DcXw7OPLRMWQo44IFIhTc/Z+lRkLlju52TEI+7ZZ3n91w+0sQOxEV2RkFp3trnN74q6GD5fJBjxI0wMCwupU40M2RbteN1YsqUnl8opoyAlbFtZBZ84IXpviTK0i38YUuPE+W3uik3qBxhAutYoGXNTcXbIE749Pus7Oxj2VGGT3e5H4fTlOh0cuBB4ne22mEL9By1LkgavEu8MV8fUjd9Fq0k0QEZ6IZH6qaGoS7iccsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K2Q0vdVwoLeNd73E8lLJzS92mHuj1xrHe7btmu5VjE=;
 b=fv/wxpi4qcVLAvcoziUVTs4rjbHx7QtLQMj8QLQ2Bb5oVgha8zHf1yAZKQ5aMQfIt0ibgI7RuXcN9IHf8XXQSAtwxSuqadUQ06mo47qZndOX8HrGj67p2c5pIgJ6ioQcZXQ8PBoWdP9ON0Ue5vnnctMXdTYwLFOFn2pEk/2WknVS8hXVy2rJaAI0CRxy9MhgStCoY2falNMX9eHk4DVLD3IrBrmN0b2cpmIYm2a1OuC/KBGN2xBH8gUYMsi4QKJkp4TrTxg1QY5/9r2q1O0uK3K281zGkGie3s+jeZ39oK7KOR7EAxijBB0kl3vxpvmYhrrchyC5ZhR+Vl2DAGJFTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K2Q0vdVwoLeNd73E8lLJzS92mHuj1xrHe7btmu5VjE=;
 b=6ki1TJNzeNVvSxGrERl8k4az6qX7JFSOI0oS52w6V7J4+fcdStTVpInfFkAHiV6m/VBQ7MQhPN+LCPSdqFHnd6R8jLf4PgDKjYqI93jqOUiHkC/iptBw9kcN9H1XANrJJ1dh7wxol85OKElY75qsF9UOb1u4wwDt7ZJrVgiYV9I=
Authentication-Results-Original: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=arm.com;
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com (2603:10a6:4:73::21)
 by DB8PR08MB5257.eurprd08.prod.outlook.com (2603:10a6:10:e8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 13 Jan
 2021 13:59:04 +0000
Received: from DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::c479:9c78:6d4c:ae51]) by DB6PR0801MB1861.eurprd08.prod.outlook.com
 ([fe80::c479:9c78:6d4c:ae51%4]) with mapi id 15.20.3763.010; Wed, 13 Jan 2021
 13:59:04 +0000
Date:   Wed, 13 Jan 2021 13:58:56 +0000
From:   Achin Gupta <achin.gupta@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        nd@arm.com
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <X/78oOu6+YzvYnJ7@C02ZJ1BRLVDN>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
 <20210113094408.pjkno4nalk5zizxa@bogus>
 <CAHUa44EcxCK0ssNHL_GR7uO3airNUdS9+xmVPvXgQfL9DhZCSw@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHUa44EcxCK0ssNHL_GR7uO3airNUdS9+xmVPvXgQfL9DhZCSw@mail.gmail.com>
X-Originating-IP: [84.71.134.149]
X-ClientProxiedBy: LO4P123CA0150.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::11) To DB6PR0801MB1861.eurprd08.prod.outlook.com
 (2603:10a6:4:73::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from C02ZJ1BRLVDN (84.71.134.149) by LO4P123CA0150.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:188::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10 via Frontend Transport; Wed, 13 Jan 2021 13:59:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fc1b2997-ba07-4233-e1c4-08d8b7cb6817
X-MS-TrafficTypeDiagnostic: DB8PR08MB5257:|AM0PR08MB3346:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB33464778CEDD7DF6D51F9F03FFA90@AM0PR08MB3346.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ON9YlpfVp+3Y6jo9ytwEvq6K9fd6NdHac3iichNZ/fKXxP9MNntt0COO0vVzOFWWl4qvFkNevDdnYNI2HPee2EJyRBnzUh/SV9mouqw5R7VHbHfUt4RqAxuaXDXS+l8ZdN80tjQdY12IhyYX4m7tjwmJKHq3YVzDEmD8FhigRj3LC4Gfo+sbsVewhYOJ/TQjqjSiJzyRStAIVaCvPClOPVDwuVLi7EQT3klz+xujq7OJ94A1HydYVMGo2sVcr3HI7IjF1OkM5/ButCvlOK8aUu6VX8Fq+uWVSnBH/CoWuvOdQk9tFF036IojZQonWjpeL42AZshgVbXS1oc5nLA7KV4BbrIkPgsjeX3hZcRDHIYqx/fibrViURKBdapwI8YMf0gJqgGh2rP50JxdJe+8wg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0801MB1861.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(39860400002)(346002)(396003)(6666004)(66946007)(8936002)(54906003)(55016002)(478600001)(26005)(16526019)(186003)(5660300002)(66476007)(8676002)(53546011)(44832011)(316002)(6496006)(2906002)(956004)(6916009)(4326008)(83380400001)(52116002)(9686003)(86362001)(33716001)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?dKoDIIYPVg3yQFcSb8OzTkMuYX89KC758rKQm9xmItsfSqo9E4sM+1syOsPJ?=
 =?us-ascii?Q?yzBRC1dH6kSQS8st2vqoN4LewA3yRBJTHmZ/0Yk/3N1GxVbSTJx5QloH0wNV?=
 =?us-ascii?Q?Rp4LikM900LGniem7rygrWE8jSzPcLAbkf7v6j3C6cWX2my19s8nl1H4sPQo?=
 =?us-ascii?Q?dEaknbtc6nU7NTT2QX5ELEZhzqsFz7V2hnJfrwukbflwahLsBJaREOI5kRfS?=
 =?us-ascii?Q?lmNKzIfZH5dXoEfVPXlYiWbZ7wIc2YfIx/drOegQHljihIpUeVLS4hBUbThG?=
 =?us-ascii?Q?8CJjh6o1GutArYdC9q4rQG6u4fy9XAT/63wfjQq/QbzvjyG8QryqUeskfbdB?=
 =?us-ascii?Q?VwoXsb2Cdx6qRZd9OS+0zB93kh/nu2XGUOx+BITL91fU1D/78tHK5FmOysf8?=
 =?us-ascii?Q?N0oUTGESCkGFxfuWH40VsSLGXKKLT7rFOMCf534bfyp0I8bqbyLlFJUStDxv?=
 =?us-ascii?Q?RKVinEl6yvnkzkk8xEoi9aaTekeIJ5ZlsrwTh1sYGkAR4JTLGANs1VPmxSuC?=
 =?us-ascii?Q?lHfPlBbdm6P44OOPtneVzw3Pgjbcr+doTW9R575B7b6OskDjsvWVJZjwGlSk?=
 =?us-ascii?Q?6fkc2vFJWUTVSZ8cqbYncQSc77T6mVr2E6G4ZCPLAd03rtw9z4fiOkwUWOQU?=
 =?us-ascii?Q?vI6NK+XPd99I3+0gQ1x+/+548NNU4Lyk2qZoMRVS6qWOlatgE2DKH1mdkQBh?=
 =?us-ascii?Q?LTNo2lbhsDWuXP+qumsSeXV1Fem+SrORzkMqIsiBTRUxf1Kv6Cpx95EV+yoG?=
 =?us-ascii?Q?cyzBtL7I0v8wzN+9R9d5ArXcc9K9CAyvvUVNXrieMoZUaa2yDWf4nYeZhnR/?=
 =?us-ascii?Q?15a1XsANCxH0dz6kt9YDWVU7MnAdnu0wve/+YsO1CrGOUZ2qZctAPMLGeoYr?=
 =?us-ascii?Q?IPRrfb+pPKOyftBzIfhrHOUUtgCF1kp5Vzgpg4ypz3sQTNzEzKUMp4ergbDY?=
 =?us-ascii?Q?qyuOu05Cz1cRHucTRYIms3DrV8ljPRCG6M0Ybl/Pp/4GCWZWXT24t+SYoutY?=
 =?us-ascii?Q?Y1o+?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5257
Original-Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7bce6ebd-02bb-43f2-d8ce-08d8b7cb6333
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y7Je41TZUamPRp5AygBH8ULbjQzlkq5SsHKPpaykwCqanzNw/L7LEb38Cs0XCtDxksXWUTjMlqolV90OQsrtgyxie0rkNMur8BGLDJHFw37zW3mPpXIMd4vf9haqsAnhpAgO8uZyWrc8E2kt0OhWfidJA6ktCPVi5aYYb1EZ3++HtNSOf6iu2ZFUtS2Rpcsg2q69VwH0JCcgy2eprGfAvT5ROdEfo9s1CWxusE9IBAV3v2CjuBrwy42KgkzG755QppiQiYGolH+BKeIqEJsogBevdijPQg5gI5r+zcOyCCyyHmqQCRkzdgp0/5ot04GgsxdNbb6uHw5HaRifglMxI+cr6aIrU3i1OgRutT6WZBB+F6vzWOFtopuuMXPrUr/hKWafMUizRs0otQg98iBKM5JLPyC65KNYPyi4WNwdptGJn3PqNuNm5+eppq0ahgM0MyAkkBH7JgrBb41ExmjfIce/EOsTf91Fw8591jz6pHEx4cSMX6KmKige5mORBwf1
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(396003)(346002)(39860400002)(376002)(136003)(46966006)(6666004)(33716001)(186003)(336012)(356005)(47076005)(956004)(70586007)(2906002)(9686003)(4326008)(55016002)(82310400003)(5660300002)(16526019)(86362001)(53546011)(70206006)(83380400001)(8936002)(6862004)(6496006)(8676002)(478600001)(26005)(81166007)(82740400003)(54906003)(34020700004)(44832011)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 13:59:12.4965
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fc1b2997-ba07-4233-e1c4-08d8b7cb6817
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3346
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 01:30:56PM +0100, Jens Wiklander wrote:
> On Wed, Jan 13, 2021 at 10:44 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> [...]
> > > > > +static int ffa_partition_probe(const char *uuid_str,
> > > > > +                              struct ffa_partition_info *buffer)
> > > > > +{
> > > > > +       int count;
> > > > > +       uuid_t uuid;
> > > > > +       u32 uuid0_4[4] = { 0 };
> > > > > +
> > > > > +       if (uuid_parse(uuid_str, &uuid)) {
> > > > > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > > > > +               return -ENODEV;
> > > > > +       }
> > > > > +
> > > > > +       export_uuid((u8 *)uuid0_4, &uuid);
> > > > > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > > > > +                                        uuid0_4[3], &buffer);
> > > Wrong byte order?
> > > According to section 5.3 of the SMCCC, UUIDs are returned as a single
> > > 128-bit value using the SMC32 calling convention. This value is mapped
> > > to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
> > > for example shall hold bytes 0 to 3, with byte 0 in the low-order
> > > bits.
> > >
> >
> > I need to spend some time to understand the concern here. Initially I agreed
> > with your analysis and then a quick review make be realise it is all OK.
> > I need to check if my understanding is correct again. I thought I will
> > take example and check here itself.
> >
> > UUID: "fd02c9da-306c-48c7-a49c-bbd827ae86ee"

IIUC this maps to (as per RFC4122).

fd02c9da = time_low (bytes 0-3)
306c48c7 = time_mid & time_hi_and_version (bytes 4-7)
a49cbbd8 = clock_seq_hi_and_reserved, clock_seq_low and bytes/octets 0-1 of node (bytes 8-11)
27ae86ee = bytes 2-5 of node (bytes 12-15)

SMCCC says:

w0 : bytes 0-3 with byte 0 in the lower order bits.
w1 : bytes 4-7 with byte 4 in the lower order bits.
w2 : bytes 8-11 with byte 8 in the lower order bits.
w3 : bytes 12-15 with byte 12 in the lower order bits.

This should amount to:

w0 = dac902fd
w1 = c7486c30
w2 = d8bb9ca4
w3 = ee86ae27

So, even though RFC4122 uses big-endian i.e network byte order. The UUID is
encoded as little-endian as per the SMCCC.

What do you reckon?

cheers,
Achin

> >
> > UUID[0]   UUID[1]  UUID[2]  UUID[3] (referring uuid0_4 above)
> > dac902fd c7486c30 d8bb9ca4 ee86ae27
> >
> > It seems correct as per SMCCC convention to me, or am I missing something
> > obvious ?
>
> In this example I'd expect the first register to hold 0xfd02c9da
> regardless of the byte order of the machine. If there is a different
> byte order in the receiver it will still be received as 0xfd02c9da.
> That's how I've understood the specification.


>
> Cheers,
> Jens
