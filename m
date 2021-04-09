Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC9135A235
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 17:45:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233395AbhDIPpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 11:45:38 -0400
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]:62707
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229665AbhDIPpi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 9 Apr 2021 11:45:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KU0OQa0lI2g87JKlVa3mkIOqKpfHssRKA4Ys3YiQSwY=;
 b=pbJ+9/Gq2biAQn+aTguMlYtjGvrEybVDGC6lKeVAM4vQ9LkiJkQe6lb0GaICl1p9VlzpPK5OJEY2h4egx6gtLaZBLX1UoMYosQp05ujepO8JVbOeRuycudv0j7hZ90aw2w2nn+ARBOxKhw10ej2RC/8z4Wgn4WGAcvluxH2bI5I=
Received: from DB6PR0301CA0072.eurprd03.prod.outlook.com (2603:10a6:6:30::19)
 by PA4PR08MB6175.eurprd08.prod.outlook.com (2603:10a6:102:eb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.27; Fri, 9 Apr
 2021 15:45:23 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:30:cafe::c8) by DB6PR0301CA0072.outlook.office365.com
 (2603:10a6:6:30::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16 via Frontend
 Transport; Fri, 9 Apr 2021 15:45:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; vger.kernel.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;vger.kernel.org; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Fri, 9 Apr 2021 15:45:23 +0000
Received: ("Tessian outbound 34291f7cb530:v90"); Fri, 09 Apr 2021 15:45:23 +0000
X-CR-MTA-TID: 64aa7808
Received: from df80dba859de.1
        by 64aa7808-outbound-1.mta.getcheckrecipient.com id A9D59692-B9EC-46F6-B6BC-B2D6AF7A43A4.1;
        Fri, 09 Apr 2021 15:45:16 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id df80dba859de.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 09 Apr 2021 15:45:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyWU92WZMhvVt3+1l3W/8h6dGSC+6AGAX5NZaVTWMHiJZPNAtsbeJEOLw/6JFj8kf9ioMi19hlELRYtM8fwGYdYSedfhqmGR9IddJat8Bg063/Q0VUfo+IDeIyrIZ4ID9jhIKGB5VXsn9N++cEpaedUbylHxRtlkorL3VNEyvDZ12P5u6Ghp1H173PpDzWCef52aNKSkgXx1jE5xfSJXtNqFN2vFeWxTjBhOuZwzwNsU5nhJ81a7uObPmtpVW2+x1UouyU9jEM2czUUTAi6x4kV7id3BhmsRRcn0RtB2b0BYfPSwOK3oktM/qGO/0VD4yyD4OZs8R53sXGCQuE6FqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KU0OQa0lI2g87JKlVa3mkIOqKpfHssRKA4Ys3YiQSwY=;
 b=CxNXOq3vZ8aOHzuYSoWAylis8yK2cKbJP2YhiIg831rPDt86UMIV5Ldl/LGVu+w5gErRSIsxwFR1tpZ8s1mqZroPUFXKs5YeDWN5kR9xMLyQ3xYTGSdZqLjcGm1f7XiaSiScN/NBuQMbaFz8YmkTca+DZm3EFeDWL6VRPGjCsmujG0gDo7b+ZrsOgI0SC3d5q2lsj3grhJKeqU3/3hIe4s4HTZjl/xkrQhx3BhMlQGWZILm9eq4dhJN2aML8X7JLSptoPs26CssNKdvZSOasWokL5H2FjfouHMYHtaz2GGjdSGYjeCgSN8/GGEmoKaAMm7dZ/ZM2t6CRzrgz1cJfvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KU0OQa0lI2g87JKlVa3mkIOqKpfHssRKA4Ys3YiQSwY=;
 b=pbJ+9/Gq2biAQn+aTguMlYtjGvrEybVDGC6lKeVAM4vQ9LkiJkQe6lb0GaICl1p9VlzpPK5OJEY2h4egx6gtLaZBLX1UoMYosQp05ujepO8JVbOeRuycudv0j7hZ90aw2w2nn+ARBOxKhw10ej2RC/8z4Wgn4WGAcvluxH2bI5I=
Received: from VI1PR08MB3567.eurprd08.prod.outlook.com (2603:10a6:803:79::11)
 by VI1PR0802MB2238.eurprd08.prod.outlook.com (2603:10a6:800:9a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Fri, 9 Apr
 2021 15:45:13 +0000
Received: from VI1PR08MB3567.eurprd08.prod.outlook.com
 ([fe80::29d2:9648:ab83:1387]) by VI1PR08MB3567.eurprd08.prod.outlook.com
 ([fe80::29d2:9648:ab83:1387%3]) with mapi id 15.20.4020.017; Fri, 9 Apr 2021
 15:45:13 +0000
From:   Marc Bonnici <Marc.Bonnici@arm.com>
To:     Sudeep Holla <Sudeep.Holla@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     Sudeep Holla <Sudeep.Holla@arm.com>,
        Trilok Soni <tsoni@codeaurora.org>,
        "arve@android.com" <arve@android.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <Arunachalam.Ganapathy@arm.com>
Subject: RE: [PATCH v5 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Thread-Topic: [PATCH v5 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Thread-Index: AQHXIYPQgecCfn0f7EWJE7lcpZ/l5KqsZrGg
Date:   Fri, 9 Apr 2021 15:45:13 +0000
Message-ID: <VI1PR08MB356704472CA87B757B89AB5296739@VI1PR08MB3567.eurprd08.prod.outlook.com>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-7-sudeep.holla@arm.com>
In-Reply-To: <20210325143255.1532452-7-sudeep.holla@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 11EEEFA72901A048BAA570E827ED6973.0
x-checkrecipientchecked: true
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
x-originating-ip: [176.248.82.139]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 64d3d4f7-0763-4187-d59f-08d8fb6e7cc8
x-ms-traffictypediagnostic: VI1PR0802MB2238:|PA4PR08MB6175:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <PA4PR08MB6175EEA98E002EF5B765EF9C96739@PA4PR08MB6175.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Fav1Le2uavmigQZJGd6LeJxNACldtdD0geUuFC2wnDKYm8xQfeBY9BxPcHQfMzX+ZboWqno7UTSVVb4R/slAQiVgR31OdhoGJnXPCeA8i3UwPYoJBzFE7n3vzJB3U2reryVXNFprGEqiY0Vjsfh647AyaiAJc+wtK6X5i1VSY0V5wWdUfzvpAOCC3T921MWdEYGSn81Lq+DtsnVqWOL6jN3/TAmdHgACxg3LreT4hliUJ2LzpyJgME2nmOc497GBf/TjmJSXhvxlp+SaFXG1GE8oFMHtjJw9CF8ELLEbBXb43nDvvA5cScV/u9m6itlk0jS2kIlFVj/igGmB8NZI7akPMEbUAj0xkt2kS3w5NOmNxOyKQX08wwIUg6VVTqpbjQBm2asUfdleC0xYWn4B4hZZeFrDbhWPyw3OunXGzZaOxlVjKVZCAkbErxGnH5VB/bIrqtBl/AyTW2037pJmE/A3BaIH/fSIao4/W7w9n4BLa4r0zKayjJU2PcvbUQ8cuDUlxSgy9CmZ0HXIJUe+34ikLOvBbJWTY3wzFqgiTmxfPLsAWfqJtuNgf9bAeFTXNfj+dcA398S2zf2sI5PTTn+96Gb+bteDvwEyQdo0AjkW67sBAfPgZ66vSdJ20IbLemy/Iu8iXvc0NreoWL+nA5N82wuhbp+gWXk4ChGVGwc=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB3567.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(376002)(366004)(39850400004)(396003)(478600001)(83380400001)(4326008)(86362001)(7696005)(8936002)(8676002)(52536014)(66446008)(76116006)(66476007)(66556008)(64756008)(66946007)(5660300002)(316002)(26005)(9686003)(186003)(55016002)(38100700001)(54906003)(6506007)(2906002)(53546011)(110136005)(33656002)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?LWwwWUqATls9YVG9TX58IiQEVqnjk7S7s29jHL+874o3GB0HBdPTHtFnaJqG?=
 =?us-ascii?Q?1hOUMyil4TMtdkaP+F949A96ZNA/h8H8PqO27whL1M/9nS7VUakZ3bx5Z7Je?=
 =?us-ascii?Q?7OXLRdcSQbHKj/VIy4Wh37XFLl7OR7Uusi+uyLupYC6KURWhnlhTgcmSxaLZ?=
 =?us-ascii?Q?vtp+bNH/C0Tat0PoSD8fHprIou7t3PAGjUAd0tAyqOc7xRRxcbkHaQtIDsPe?=
 =?us-ascii?Q?Q7k+9Ma1MInKBGSEANZ0VIKUxIJH0R9FgRCtSYe5Al5uZbNO/z42iLdvlmso?=
 =?us-ascii?Q?qS+sDJ3/jKd/kzl9BmnjnQEhky5UZpDiDE6IySbcAIBgvgAU+jODAuzyXKSp?=
 =?us-ascii?Q?zGHP5bmTXX1Sk9Z2sdSLjnrQUZk2ApCiDr4NVNmRJFOJ2eUhop1z0Xl1Pokp?=
 =?us-ascii?Q?NOcmRimNjRZtoERcEDoq4BbNBl8wO+CMxkVze3PL2Hk9TPKMT1FxOVkZKBda?=
 =?us-ascii?Q?h8Z51SyDb4srumtCJQetcE47MSk6wdlkHDsBLtz0nNYMbTZlabqVweJvx7ad?=
 =?us-ascii?Q?3yc8ILxlhAwBnUa58ZC/z7RpyeS5G+3TnmjOw6myaoZHiX2dM07qVZCKN55b?=
 =?us-ascii?Q?fV2FE84UfXq+GT36QXhghHnkbtfrlykbMbZalWZDKQqpnvElyf8f3XwDgTca?=
 =?us-ascii?Q?jAxO6lILud2NZu+GLPUETLjEiJolDz1BROdn8+DeRQQp8gxXiH911BQP24KS?=
 =?us-ascii?Q?OEAq8ItfUtsTfxjm9jESONw8ajN1Cu6MOYZBmU5LR6UZzSRQCyQDSa5cZW94?=
 =?us-ascii?Q?kpvH5QRrldq5LMmOXzZ4qWvC8eTgxB0rdLacszpwVWCc5gg3lSBe0TK3GuhK?=
 =?us-ascii?Q?q94/aOceKMY+tnfuej+Ec8e5c61u7H4jaNWBw7kKXmDRf51Xchgesc+K8eRN?=
 =?us-ascii?Q?D05cFrjd3PyN3JPaJgACG8y3ReRQpPHFuFnEBoGLwbsywbiYdnG9r4VHfK85?=
 =?us-ascii?Q?eVjGa7p12YApt4pPJRsCBBlkPmfAKu1liizdjKWUC5Cmh3m8PjPTv+UBercM?=
 =?us-ascii?Q?XUM2HDFyt7fWA2wyJfI3R8GIq2TQzGVn7z4QMGs3JGstG/w2+uAW085vXSun?=
 =?us-ascii?Q?PnVPi2RxphvtO995QfXLPKHCmvgowhIS600RIs3BINE21h1Wadeyu4TVJeqE?=
 =?us-ascii?Q?+3t9LCqCvuwUULs7AMiQ4Q8GH55Etvt8mpDGTKnm6vAMp1XJqd0BGK42G2rW?=
 =?us-ascii?Q?p4abIrI3Y6Uw1GqV00BTn9Ane0YG+8bMNU5Q1WUp8jSYGQLk9IcewHpbs5+1?=
 =?us-ascii?Q?aqDgWUsazTSewdfPxify8BbjFsng5p3fXa44ouwlEjoqv26XQvaCyxoO7QqQ?=
 =?us-ascii?Q?OP9t9KFMeNStoaCyLZ9ONGOW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2238
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: d48f93fe-f424-4cc7-61a5-08d8fb6e7739
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zf/3WZQftIS1CvhsAiUqI1LH6VBhw94D/c1ERiluN6dOj0NJGxbpsq6uTvZE94wm6mk84LnijeIzhPLejiXSNKM7yBO6UGf/eIhRtjRKrFj/A243gvIlxwQsYhDOEtglHiytvrAJlo/RnUxPw9k2AvTt2p5bfCIMDYBH88nLqqtZzKc/C3FdtKKDuMSplJZYPNf7XXy35dtaPA8xuXvtfu95lkf7e+ijDzZSWNu1h66daTF2FgtHfR2U1XHBhkkiUQ2Gn2QnIMhSZ6G0Gb/CyfZTf+2eNOsWRUL5oEPOFnQisPTbWo4QCrSfHZhUBRnGsE6sISep0XJdgnMxldfvOiDod6IVaDeLrP9YnRpEp80bPyvXsXIXN5oZoLXwm26LuHhDw8NK8YwnRY18qF2u6nZ52d5FHrkHVaTqtAUnaA2UrlPVmjBCWdU3J/5HSAour5sBeiQspdA0524y5fcAtIN/i+rUo8TLwXBN6zhGALVkdV4Rhf0zeQIi6oSSZUL3fTUDnbCm9AMA5cW5RcSDvwVbSxBneQcV8xcD2byrMUep7aJ0lVLDjDTZrgtAyyVhIGaC4mROLfTS+nNrqusv0wCDg6Zj05Mky1qVmLRA2RNEmJYfaHwmwwv0nFWHxFZS8IUPa2bXzoL01CBK39A56jCTwhCEJmEX6ZK/kRpZSuo=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(39850400004)(136003)(346002)(396003)(376002)(46966006)(36840700001)(9686003)(5660300002)(4326008)(82740400003)(82310400003)(8936002)(8676002)(70206006)(478600001)(26005)(356005)(336012)(81166007)(86362001)(47076005)(33656002)(55016002)(316002)(83380400001)(2906002)(54906003)(186003)(53546011)(36860700001)(7696005)(110136005)(52536014)(6506007)(70586007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2021 15:45:23.1361
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 64d3d4f7-0763-4187-d59f-08d8fb6e7cc8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6175
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,=20

> -----Original Message-----
> From: Sudeep Holla <sudeep.holla@arm.com>
> Sent: 25 March 2021 14:33
> To: linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org
> Cc: Sudeep Holla <Sudeep.Holla@arm.com>; Trilok Soni
> <tsoni@codeaurora.org>; arve@android.com; Andrew Walbran
> <qwandor@google.com>; David Hartley <dhh@qti.qualcomm.com>; Achin
> Gupta <Achin.Gupta@arm.com>; Jens Wiklander
> <jens.wiklander@linaro.org>; Arunachalam Ganapathy
> <Arunachalam.Ganapathy@arm.com>; Marc Bonnici <Marc.Bonnici@arm.com>
> Subject: [PATCH v5 6/7] firmware: arm_ffa: Setup in-kernel users of
> FFA partitions
>=20
> Parse the FFA nodes from the device-tree and register all the
> partitions whose services will be used in the kernel.
>=20
> In order to also enable in-kernel users of FFA interface, let us add
> simple set of operations for such devices.
>=20
> The in-kernel users are registered without the character device
> interface.
>=20
> Reviewed-by: Jens Wiklander <jens.wiklander@linaro.org>
> Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_ffa/common.h |   2 +
>  drivers/firmware/arm_ffa/driver.c | 188
> ++++++++++++++++++++++++++++++
>  include/linux/arm_ffa.h           |  38 +++++-
>  3 files changed, 227 insertions(+), 1 deletion(-)
>=20
[snip]
>=20
> +static int ffa_msg_send_direct_req(u16 src_id, u16 dst_id, bool
> mode_32bit,
> +				   struct ffa_send_direct_data *data) {
> +	u32 req_id, resp_id, src_dst_ids =3D PACK_TARGET_INFO(src_id,
> dst_id);
> +	ffa_res_t ret;
> +
> +	if (mode_32bit) {
> +		req_id =3D FFA_MSG_SEND_DIRECT_REQ;
> +		resp_id =3D FFA_MSG_SEND_DIRECT_RESP;
> +	} else {
> +		req_id =3D FFA_FN_NATIVE(MSG_SEND_DIRECT_REQ);
> +		resp_id =3D FFA_FN_NATIVE(MSG_SEND_DIRECT_RESP);
> +	}
> +
> +	ret =3D invoke_ffa_fn(req_id, src_dst_ids, 0, data->data0, data-
> >data1,
> +			    data->data2, data->data3, data->data4);
> +
> +	while (ret.a0 =3D=3D FFA_INTERRUPT)
> +		ret =3D invoke_ffa_fn(FFA_RUN, ret.a1, 0, 0, 0, 0, 0, 0);
> +	if (ret.a0 =3D=3D FFA_ERROR)
> +		return ffa_to_linux_errno((int)ret.a2);
> +
> +	if (ret.a0 =3D=3D resp_id) {
> +		data->data0 =3D ret.a3;
> +		data->data1 =3D ret.a4;
> +		data->data2 =3D ret.a5;
> +		data->data3 =3D ret.a6;
> +		data->data4 =3D ret.a7;
> +	}
> +
> +	return 0;
> +}=09
> +

If the returned function ID is not FFA_ERROR but still not what we're=20
expecting here we should return an error to the calling code rather
than success.

Kind Regards
Marc Bonnici
