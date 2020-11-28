Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCE032C7547
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:24:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732766AbgK1VtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:24 -0500
Received: from mail-eopbgr00085.outbound.protection.outlook.com ([40.107.0.85]:29347
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1732878AbgK1SJo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Nov 2020 13:09:44 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nyw8ac35Y0l582Nen8BXVOrgGP2+m4Eq+XMpAu89bJCGxYxFi8cGwvIm82zC/DgCYmle2JqnIkppbLD2LZk/TwAJTEq/zWsyWRU6ExOalRYumQzpfujdmYxo82guyQ36GI3Zs0dA/Hiup4kzEuKFrmftmZ/Ob8gOuMaekE0yn2yMt809aU4eKvtRQw9joO76/QiKkh+T9n5Tnx58c3DSWBoDY/ZExcx+tqkAx43+gHT2lEkdsPIKah+3cOiR0jdfl3SHIpSMsBl5Cnr5eoC6iPBjdZqkOrWwgNl/Sts1GI6DLCb2z9oIQoPO5VITdzvx6mMHBRcudnEqZgferIsExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fctwLqTrKDk6iUutRxjMdiCoxP+mOp9eJorOk1tZhu8=;
 b=Rl3Nfb0kGvgMAkQT3/LEHKh5BLBhxlU0dH53PiP4at+jzTXxJl6vSuVKcxZNFh7afGIZOADMMUNTf5JQhW1ELc/By2GXaAf5HmCl0Y7Li3aSZgUeGLnez1+/qPkvnh8w66Rz8OIA60LkJxo1rBNIqDcjuBjqwdBb8BbcGsYabBalRaJfinfh0j/HGnTgFaIY0X5Ztt130wQxlk15rl1AQc5L9O8lgzSp3Cueais+CCDUzmG0vefjIpMasSYVLDz1F4X5kLvPbvMG21f15BU5ye1n6q9xEGngXnsvMFDz4+R9/w6zDp8Iq5IEcJUqbbJynY6GzG0JPQ7KuO7cr7f6dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fctwLqTrKDk6iUutRxjMdiCoxP+mOp9eJorOk1tZhu8=;
 b=h1WsEmtyWVVjoP9g3+7zV6KyCvmhOXOmvCP1v3sAxdzq+19aR446zVLs5PzY9zK9Jk2GByaum2duKTulDQEKEyt5GGWO3woH2/+gDb0v9h9c+G4eUNlXwOsRpO23EsHdMsNZmxs02BJtp7c5QkH3u/2ULKtEtwBy9lxxmENssEA=
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB3PR0402MB3707.eurprd04.prod.outlook.com (2603:10a6:8:2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.25; Sat, 28 Nov
 2020 05:32:02 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3611.025; Sat, 28 Nov 2020
 05:32:02 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     "will@kernel.org" <will@kernel.org>,
        "john.garry@huawei.com" <john.garry@huawei.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        LnxRevLi <LnxRevLi@nxp.com>, Frank Li <frank.li@nxp.com>
Subject: Recall: [PATCH 0/2] perf/imx_ddr: Add sysfs identifier file
Thread-Topic: [PATCH 0/2] perf/imx_ddr: Add sysfs identifier file
Thread-Index: AQHWxUfMOUvPeI/QZkqjbc0nF/ak3Q==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 35
X-FaxNumberOfPages: 0
Date:   Sat, 28 Nov 2020 05:32:02 +0000
Message-ID: <DB8PR04MB679599D911E721A532226E80E6F70@DB8PR04MB6795.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a0b8066b-3f29-4896-3418-08d8935eef55
x-ms-traffictypediagnostic: DB3PR0402MB3707:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3707672B1776FDD1B5A861DEE6F70@DB3PR0402MB3707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QekiLWOojRZAwro5/dF2VAD+LyDaXKJm1MHRJZIYx1uFwdavVONSOhrwXmMDxTmMFqwe/VF0wfy1qnwfnLjcjeOlYtiLYW1EEeFTSKGMSZekD6tYKq2AViE+Ynf6KGRBbkgfs2XcRsBHtTT6fvpXGNBV4qOMCXPkseE/THq/1LRc0E7JBOAZlHU01bgv0MDCXih4yvlAGauy7dXNuyzSfdZgDnD7MFaHa6xsSCX4Vz8fGndZdUBDdftn0pqxq5HGCmnG5CpPYe9qkb/ei55ORlFYTyN1U7owUKvTzTXw+I3QN9rZGK/OgJsGacHNf1sQ
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(136003)(376002)(346002)(396003)(2906002)(8676002)(55016002)(71200400001)(5660300002)(83380400001)(9686003)(66946007)(54906003)(6506007)(76116006)(316002)(7696005)(64756008)(66476007)(110136005)(66556008)(66446008)(8936002)(26005)(86362001)(52536014)(33656002)(558084003)(186003)(478600001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?bsQNvToCRI9BAswLqpf0mdQalhwLt/EPeZk+Pd7qDvnF3MnMwsgrZf8WY2St?=
 =?us-ascii?Q?KuPnlkuJ7MLcguTh1xX/ZigYCxkrAt6ohuf8C+FWkefSJ2wRqTuzUjeb7J+/?=
 =?us-ascii?Q?FmKza/6oGFuXKDCwoHbRxab9jtqEH0QkSc2XAvlitDTfcny0jW/RNVGVpx+z?=
 =?us-ascii?Q?BkvqWO/RCR3uiq/e9KGMw30cchHjk6vPOBAzwFliRdawTXf03U7CcFB6cHB8?=
 =?us-ascii?Q?4u8NG3R1C4/3q+FIuUHsok8crlZ08HPzUKw+CvcIZczG1yY+non7jph2xg7P?=
 =?us-ascii?Q?VSEYNJYOwzrTDv8hO5xBoPJfcjiqmUEvNqWq+wyP32igG5YUZ/bBbm7eUePD?=
 =?us-ascii?Q?QjOStQbnARiwQ4I7DoHp3wD1CAO36csd7Me3QP5ycSWOld5AJUFUTI5acxtl?=
 =?us-ascii?Q?JfWIC6YpsYOl9t7t1+GHbC2A+XuYOu4OEVFiUVecTpdvuaxu3DoPxJhrP22M?=
 =?us-ascii?Q?76NsFshXo/vUxIP7DtCYl6+My8Th6xf13qbo2iGa4JErypSlqswbDmm9POsj?=
 =?us-ascii?Q?2kWKJxAsO3Zn+qGJ+FIVjyhdE1ZAyusQ6DTvRKGWHZQcGdo5XnJdTMdsPYDq?=
 =?us-ascii?Q?WGVTQ6Gq9KKTYrsig/VfbFXhM+CweH/xn4llFb+5L8Mn2wfOFI34N5S3+FoP?=
 =?us-ascii?Q?HaD5GgGjobZRrnXeSPjhuzwKe37wU5nLxKrw/3ZuAxiLAL8HILNExVoCOwFT?=
 =?us-ascii?Q?bP4nmKsKlizEn8w9FviZO25e/ZRlQQMF6MQQ1izN2YWI5dKZz7/SGMghJBh8?=
 =?us-ascii?Q?/EpPLrFNOXiWPxUvsrZOWjpWRKXaYei7c2Pky38ST6JyGbuHYYvlEdJJAmfl?=
 =?us-ascii?Q?GR9pXRBLFW4N/XGTT/dTrsffEVoEkDT4RDy8xKnjI3Hb8K/kteTdjZ0+aWHo?=
 =?us-ascii?Q?taW3UyTURN1beO4r/LcykRYkjngLH1FaOHLkiF83D0ycDVn+nFSy37aAbGg3?=
 =?us-ascii?Q?k+8/VqrYefl2qFRM5U4Ce8i3j6nJCJxKzplA71xv454=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b8066b-3f29-4896-3418-08d8935eef55
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2020 05:32:02.3307
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CiqUFU0YyDVKBhGdWYkbNi9nkaykv+KHpcAte8+5eU29gMzFy0T7xZR/IygFkIqKHDbsVicx6uGypfJbx7WVQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Joakim Zhang would like to recall the message, "[PATCH 0/2] perf/imx_ddr: A=
dd sysfs identifier file".=
