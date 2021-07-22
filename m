Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 844BC3D1FFC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 10:45:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231271AbhGVIFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 04:05:03 -0400
Received: from mail-eopbgr140049.outbound.protection.outlook.com ([40.107.14.49]:63963
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231287AbhGVIER (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 04:04:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i/2oz/43OXJJ7JLqyN79fSNRnETvBCFJ1AdY9wOpR26axHv3873newRmWOe0eZ2Ul1RNuwVp6xXrdR/oRodtDNLCtCHBB+X4Um6r6NQt1Laepfpm5m97Fv5Dtx1ED88b4eye6euk/7o12tsi1bqCG+/DXR6KHMvsS/sLrusJ8UhSFNLSs448zWwWcJqEIy5dvN5jozvfJUDCqmpA1Qz3ycpRtOKcHwPjApx1CfOyMcHdMQxX7kDQqDo1iGXsH8lDjqtlcooElT1dfpOMUpfrq0qitonrWN68hymorLYRaw+GGtfQ7yd7ilhZ3EjzXmrgCcmljW+f1grEQROz63UGTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dgfpZen/rCGp1eHLDLUyYbSqpT+yttrT937/govKe4=;
 b=CtpZfx1tAejSpFrU3NFHIHP4tFxCPHEfN/LSZAVrOnSdH72AcjB1fcDHNzIXMD8gwSPdABW5VgZA3mVhVY9/Jvw6kwfB4kV6Ku/esB+UjwFzX0LffsQqFkffEA2ekSQvQwUf3OiKJwGksOikoUjBc1w92VOEYmEfObNo6h3O+Mdw13025MGUIx3SLYTcw2BmdqmgUJxltrj4YfZKFI9BqGuxiUVYmS5MCLGkHUJxJYWh8KlXa2jTHfiohijs7ClMDL1NTcPDOU2iYUj4R3WjlovIJ0vGQvLk6qL918gPedNDsXAHNjmQxXFgm6F9aEcH2NG1MRwS/TiajZZv/+NP6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dgfpZen/rCGp1eHLDLUyYbSqpT+yttrT937/govKe4=;
 b=jeTaUzAEqG4UagNby/qejgcXBKK8gwnvl8QcBPDT9Sj++XERPfROl3rg/MvvQqw3M52jWdRwJz6ki2WREt9BjbvKG2mMe+4EdfZXUXtesSMv7kGBmu6Ki7/YqTn3/m3U05ujZNiJ9FsUfKYHP4stCMjX+PxaqMGm4+aQ/IgF0ok=
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 (2603:10a6:200:4f::13) by AM8PR04MB7284.eurprd04.prod.outlook.com
 (2603:10a6:20b:1dc::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25; Thu, 22 Jul
 2021 08:44:47 +0000
Received: from AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601]) by AM4PR0401MB2308.eurprd04.prod.outlook.com
 ([fe80::99d8:bc8c:537a:2601%3]) with mapi id 15.20.4331.034; Thu, 22 Jul 2021
 08:44:47 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     Mathew McBride <matt@traverse.com.au>
CC:     Shawn Guo <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 5/5] arm64: dts: add device tree for Traverse Ten64
 (LS1088A)
Thread-Topic: [PATCH 5/5] arm64: dts: add device tree for Traverse Ten64
 (LS1088A)
Thread-Index: AQHXfrG/Ap2oj2nX2EG5J+zs1wGw8KtOrkIA
Date:   Thu, 22 Jul 2021 08:44:47 +0000
Message-ID: <20210722084446.pxvrzgvdajxv4hgy@skbuf>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210722042450.11862-6-matt@traverse.com.au>
In-Reply-To: <20210722042450.11862-6-matt@traverse.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: traverse.com.au; dkim=none (message not signed)
 header.d=none;traverse.com.au; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96bc4bfd-c700-40fd-ac08-08d94cecf625
x-ms-traffictypediagnostic: AM8PR04MB7284:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM8PR04MB7284E7BBA2EFC68B6640EEB3E0E49@AM8PR04MB7284.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XHyEhcNvCHBi63LOk8k9H4MAKGU06zYbBgDKTSUvsKXMlRfugRlhJPedcMnWIXCemgjHU3L1ZGHS6rPMe+g5fFEJcHx3Ns1tyIrQfREXsjbT0gq97AArdlCfm2nKBL1eZS3i26cnfLG/4HJj6dWxuy67US4ytBWwo+kXbssBXf/MqMUIlYoywAUJ7vCyC+idM/SW8zQ6ri/EQ7Q3b3OwWOr15aiut6BzXxE85FWaLT59/M0I4f2cUa0GkquDSvaFUye6P7PiWZRH+cLVTR+Zss9VcEghVMDjiWX32BCO0tGBWOWBLZQkuL8Ny7BxIFhFYzFdsM+R/9plz+5Rcz0ucw396DFJuhiKIKKjQ+Au3c8txFJOEonqHkMyySVtF3U1GvU4u4NAuyLkEwPvV/F/BAIgipBja0BYrVh1k7IzdculVMXETwNLw6aR1ik4inMmCdlqlW/aaNOatV5BYZ6LuO+reNlgBpe7EjxteyK8A5pmmREB/irsSpS/zPNb8G76zRcZQO96l18KVPUNxFw+VZNc97FY+CSZ1JF3oa8won+MmzekE0BFjPSv3NJm3AY0QqJfH2EYh01iaRMmRmRGGMqVsOMLrlGs1p6hmJBhEbrNzZlXEdM/EU9qn6o+67UpwFGw6SfbsgPDdbBHXImhiDxi90LuIo1y6n8S4cnrP1VcmreIc6jY26iq8mryPRwzFeO32Ge8whApMVrBE9vvwg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0401MB2308.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(66446008)(5660300002)(478600001)(26005)(8676002)(6512007)(6486002)(8936002)(9686003)(54906003)(91956017)(76116006)(122000001)(186003)(6506007)(2906002)(66476007)(38100700002)(66556008)(6916009)(316002)(1076003)(64756008)(4326008)(66946007)(86362001)(71200400001)(4744005)(33716001)(44832011)(38070700004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IW4icx/KAepE8m02hARKAb8s/naLsNpIcKxFeNonVOjeXfyedQ3CC/vTbmMj?=
 =?us-ascii?Q?QWCxzqHccfFSo6OXTIeBOfIkO0zmHcsohnAeVJOjRXUKBy96/YpikhNKAjG2?=
 =?us-ascii?Q?QGfy2vOUx9wAWTMs3nEo0EtW18bOzOx6EqnM/U1VKRmNOsCE9Z56Gt1ZUZYa?=
 =?us-ascii?Q?Azfy51mCP1i2z5t2zycxaSI5P3embg38KAVRch+62ra6BcD+0rPmrQbIlJ3y?=
 =?us-ascii?Q?T5wkweWyPsraRUKPrltglQaWNGN/RQdP87vmQov/AYWVTolebKTf4aAA8twK?=
 =?us-ascii?Q?9e87NHF+4g3T5XfRTdevuRUF4gEgoXRtdLzHSbiYthp3253BVBFNhqBIJ7bX?=
 =?us-ascii?Q?EISt3tt5AdytZS+kZkFMtGsMrq+P9ozNH0mCAqUR4qH5uew1M7g0IjpNUU/L?=
 =?us-ascii?Q?WUOPM0t6hBhB2U5GUG6gz3UQCMS96zzQmeDTfm4bpfTA1VtbbNBc2Vr8nN43?=
 =?us-ascii?Q?KJ1NaHFNjqttea+/s83RHBxBvPnpquguyTukEAaqmSOSaS5p2UZwNHlGKO11?=
 =?us-ascii?Q?I8GbDjWpHDF9tzmWB9cRxZmnSFWEM5e7H97nZ/OW6jl+b9WkpJZCJyWPYoFc?=
 =?us-ascii?Q?2omBc6OmSoDP5ElAC52YdAEGnL/ck60kECep6v6stuMW/Nn6TLJPK9uAPb2Q?=
 =?us-ascii?Q?YAt0kwEUt79cy1+qWX0/vVGZZZJBC2SMOVhj0lwsK/Ko2jOq+8Z4WE5WgJZI?=
 =?us-ascii?Q?QdD/LzNasGI20jiRLnPXt+m7uYmwa0EOckTHJPEONg3ej9tv/RejKMfh7BN7?=
 =?us-ascii?Q?vHG32y4ytB1QxTgod0nIdYl5ajGJ4UCJANPTozKNL0tU/OqsKAiH0QOQjxew?=
 =?us-ascii?Q?2KJOuhba8vf5jWGSRJDrs5dwR5ed4XE+i8NSC9GhpBMkAEg9AQA+8JeiUuu/?=
 =?us-ascii?Q?OvfPjuUSsVqjg/XoYdHTcqZoo+DlrePdzKfpZh50x50X3iQm6jLm1qTzMPDE?=
 =?us-ascii?Q?KUoyncPtpTrbt6/W/9ycPu4CRycEYZ3s/d/AVr9O3co5x0Sc6GtbwKvBLIaI?=
 =?us-ascii?Q?nAJkpPtnYVqXF0kHoCx3n9lHywp2WUL+aJFaxZfn7d3I1RDee/QKQkIUzi0/?=
 =?us-ascii?Q?bceC/sU0TOx6RrR28mmD2gn32Hw3V+SiTw26R31c2qjo50ORO06qGQJwZKGJ?=
 =?us-ascii?Q?X7h70HocxKdFTJCFskYPvPGYj54jXHz3Sh08pYmV7ApLMT3CdLU3eOgZh7LM?=
 =?us-ascii?Q?p4nkCckOjhEVt3etfB/0fcKGQ9iwSyaZT0bWEkJQgsUjQ9eLVNq1DcsZdjK9?=
 =?us-ascii?Q?Gtv0eILjN0LaHm7+hhSkBLG0CQUV09FYkH4Dt+NUWUPG0dlkIipM0yx8IEGy?=
 =?us-ascii?Q?vJ62fjLtW88hDsX55Tqss4Bj?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FED7BC7877A0B644869E36EA2567515B@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0401MB2308.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96bc4bfd-c700-40fd-ac08-08d94cecf625
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 08:44:47.4373
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ifyFIR1iVV3dakKw3uY+p0/pB9vT77lFoJlYeKs+XTc9arrrlvlshsf08c+4ijhvjX5/RR/bPtPnlKbqkVao/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7284
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 22, 2021 at 04:24:50AM +0000, Mathew McBride wrote:
> The Traverse Technologies Ten64 is a Mini-ITX form factor
> networking board using the NXP LS1088A SoC.
>=20
> This device tree only describes features which the mainline
> kernel currently has support for, such as some I2C-connected
> devices that are not described at present.
>=20
> System documentation may be found at ten64doc.traverse.com.au
>=20
> Signed-off-by: Mathew McBride <matt@traverse.com.au>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com> # for the MAC/PHY
