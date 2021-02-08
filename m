Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D13F1314320
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 23:42:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbhBHWmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 17:42:12 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:51013 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbhBHWmL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 17:42:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612824130; x=1644360130;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=bvxZMnx1gZmPmk8gW/eQ432fZIpeo2SujEJ7uI8g0T4=;
  b=l62IzJ07G/rSOrdbsvxXyGL3x0uiX/O8Fbd3/KK9DPEb7TJhOuPBZbV+
   YRqUCw9qSX3mlWA0wTnKfu2b6VulS+VZgicpSPpuuWxnYRPUF3NK2ES/g
   2m1jQFddf0BkExrKsgotuzrW0jEoq1IbJgCCmHwmjb4qI66ydVVYLXjtf
   KEVMAMqRLL4iZRXld9ryK1g7eO7u4oghz9pmlxT1q0N8TlawN0gq+JtEG
   tXqpvezB3IaGB2YlFGpuDkzCnM5H2my5B5rkjr1Ak3Yb6OeLm1X151Uc0
   W6yU99/aQpb4wBHnFv9i9uVhOuD030+jHzAQQ5oq+omfFZK2M93ILq8Vz
   A==;
IronPort-SDR: WwRgrDBljoyLphKkjbG2ar0A0HdQy4u4/Q05u4OMpKi6PDKosnAH7tDngcRxoPm9DeV1GaqIEq
 6nCW/cEZ6Nnu1xhhHt6ElXhuSmUg3a/O5nkc5WMumVyYYZXeRbwGnqLqkNv68ivxC8a9gkC+2e
 8QFFI5qpVDIdOwG6/ppCyj77j0IX1M0RBZl5PAHJHJJHMcFwt3jnhKA/sRXdFs6luQoLZiZ0I7
 qHK1Q+1wn+zDFvkv1rz+c8y1HmBdWkYGNb/yw3sU5wzyXI+BVk8QbtfWM3dW+ca3Zxkfzh1eAO
 VuA=
X-IronPort-AV: E=Sophos;i="5.81,163,1610380800"; 
   d="scan'208";a="163942966"
Received: from mail-dm6nam10lp2107.outbound.protection.outlook.com (HELO NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.107])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 06:41:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sg3WjiIlA9s3sV++3y5Ve3tXa/oLB1eo2pL60qE11Ph44HW2uzojegs/QPy3bS/tCVDl0J6qekbOJCk6a7nQmCJ7D8rUcLGciRNXN/EzfVBpIXWr52VTIYk04r2QbPJMYYkeumAzTOLLg0IfkmFkjPOsDQ2lx7cSOBKwZtHj2Iy/XFoKUSj3W/WlblQ+Xjp7xNT1naX8HtJSP6nYb8lkFtxbRY/pAPn069dRLVfIEaCj3bqUhvq3DbRI65sCpEipIppo8w3y7CaJFQ+HBwI8dWKM9XTCqA4nCE+lyZnFlyBEN5oim/aWIIsjkMtpaTMTmDHyTsog6OCKqNWtZq0D8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L4sr2TqAZu5gLhEL1EjjwkcWWtSMOsiTlDDXUxMDJS0=;
 b=WedvszXzGhp+AWpFPjug8PSLCKwDqdJeV4KzzkWwVHsxWeWKMWtYkqE+NYap9OAKYiuZU2OZUGWrYdNGNtGp7Fn7nURlJoAGaADelkoG4egjkZhkrm9Y+RXMPYroQW3Y5mjoCRYLNzRPVA0qlwgJ0nT/vs6ZCBNFAC3UIPqqWN5InoUmT53f6+b2JD/DrYi+fIUWDWYDgQYda9Pa/n3J8cfOINB/H+3E5lu958WGifs4FrIP+Mf357Ri4IOCuRAiMlK5/4RStu9g4syVXUlJdExDGv5f61OVwwV8z9rzEFfxvxLGvWGHgdV2ghe08442XibD0LirS34qXvhmFkBRAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L4sr2TqAZu5gLhEL1EjjwkcWWtSMOsiTlDDXUxMDJS0=;
 b=n74BNna01FeLpK1S/cvxpGHH/+1HZXfXRUNAlYpAUYIX2SOKAGq9qzoiWBa5xDDnc445knQbPzxoH63NIfv69NsR79MxB+BmHgYvt1Qox1Da0WkxFoYWlJjfjlTZF8hc+V4sL0BLZjC2KNYP+8Rr8r6HfeYnngZIB2fzrBLyCs8=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB4915.namprd04.prod.outlook.com (2603:10b6:208:2a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19; Mon, 8 Feb
 2021 22:41:02 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 22:41:02 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Rob Herring <robh@kernel.org>, Sean Anderson <seanga2@gmail.com>
CC:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Topic: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Index: AQHW+4xeGC09t/jMzkSSVnIpB80beA==
Date:   Mon, 8 Feb 2021 22:41:01 +0000
Message-ID: <BL0PR04MB6514AA84D6D2BB8E8A920F71E78F9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
 <52dc2537-7668-4409-f35b-bfddfd09059b@gmail.com>
 <CAL_JsqJmpMf-bf=HxfWXLyYxzOH23O50QW6_TdjU0qukCW6Fhw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:f420:fabe:ea5e:e152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a5fd08c8-f2db-426f-01c6-08d8cc829cc2
x-ms-traffictypediagnostic: BL0PR04MB4915:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR04MB491570A24D35ADBEBFC8D5E1E78F9@BL0PR04MB4915.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X0wegGNSGMwE3d9CDQJPdX+Fefo7tn6tyYEmVxK+oumPIZaIv8dPJjiCJR7QybOPaeT831g9zyw5aXGgYiTT60DZVzok/00pVeSYqP6VcVgk5G/EsjX2t7LU9vPJp7IzmlYswfAz8DFfOhCHr4+K2iCaER4QL+OMozZj8vaurBznsb/LK/7ILvo7D88sx/ej7Fvo9V1spIAFKRvGYCa43aLmucb67Pej/zrMNufaS+oRuZ9c31Yyz50fUqR80DC/045LLQQqiW33QYAk7CEnciOpwvAyr55KQhARiWP/Jly0+3WWta5/amjKG0v5MqYO6UKopOkYhHL1uBpsW2SPvhxs9X+cMH8jt61akahb1vOpbk6mznVLUz7f77qvBbQFAjd6BZ086c/3wX4mNHoy9+pNvTXaOUkHko3PitdEBnukxa7jEkVD3OekoO0zfeseXdAImAZqhjOvCBmIB1CWXCbLDBeT22wG8CG/gwLIaOmTcLEY7kctl9uiPZDj1iXDK4qZK5MmyhBlx1qRUKch5w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(39860400002)(136003)(346002)(366004)(8676002)(71200400001)(54906003)(316002)(8936002)(33656002)(110136005)(53546011)(6506007)(4326008)(5660300002)(76116006)(478600001)(186003)(91956017)(86362001)(9686003)(7696005)(83380400001)(66946007)(66476007)(66556008)(66446008)(64756008)(55016002)(52536014)(15650500001)(2906002)(30864003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?gauBojiBleI7BCVSSUJLYUertmEx2mntKmUWd0Tut4dptkpbHbTBJL3vW8yv?=
 =?us-ascii?Q?zT6lt3Gp9WClkrKWJjkSo6fS/M52j5RnAZ/MS6CloPLfR8mwZliq3pWW6LT0?=
 =?us-ascii?Q?x8t5CCpC3zH9XTDLbWSM73bpzMTq5Fc5o7G+SRDD+VDsRspG6Ja3QgHH8zp/?=
 =?us-ascii?Q?iEiQB3HRksjtL0nhNVqDIY4WozBTyAaK+ltGvlAPYhf3R2691TaROQ/5vVVZ?=
 =?us-ascii?Q?SNG8ecJdXJANjYK3jFsQ3JjWkPockzkcMevgvLbnozp2LPfmLLK/wr0bpE6f?=
 =?us-ascii?Q?BfrFsCdipQ7NyA+Cu8ORnGBiXGVoRLEghd0BHntDPctOwde4T1yxvZnj/0IT?=
 =?us-ascii?Q?OJaPL26NCjyQXXYemQhlRShrRwMwiy7tJbjArUTBPkmWXAsXKP37PCghudae?=
 =?us-ascii?Q?UWnHWQAIYb3gF5mTtVeNWXnUK/Nln3W//b9btdFXcTm9QY8SqHavt+RUSZpa?=
 =?us-ascii?Q?s9OWQQrZBW13dLcMGup81v4x31lIRnQamxB/oDVzuRpzVfI7hYEGd16ACoMy?=
 =?us-ascii?Q?n6jsqOhfqgSTnG0pKWzgvV19LvPpYhXBUPUi8bLVBPkWS/U/ymnl/eXM2tlS?=
 =?us-ascii?Q?NVpjdB0zvasxWmA/yPBnRsP5HFaR1coRqt1EhUYRueuQ0f4DgaiUKvICL2tw?=
 =?us-ascii?Q?V5/8y+Brl7f1CiANzO6bawUgYiyR9TTUngn+y9ubMBCv5IToT5ATG8sXg5sM?=
 =?us-ascii?Q?WjrlOCf0L/5AcILZ73JUd1+HuXdj1R9bzfsJhb0wBDvCprjYMbuIrQWILWeH?=
 =?us-ascii?Q?UUx0cnU+KrZ0HO7CcE/8HDNO5887m9I0HynhVBKdm8AB3I7yb41yqNEg4z+i?=
 =?us-ascii?Q?yT2qZC4Vd/msRuGTXfGT6yU/Ar2TpEtrogK/FpydoYg2g3PT3a5LcMyNMEB9?=
 =?us-ascii?Q?REc3D+aBKDmrkS7nBcvsSs50C4S0i7kENzJrysRx//cLFOHdI1ELiDbBLN2v?=
 =?us-ascii?Q?dQWZtRo1gF7OOppLpdVCnpBls5O5qeC0fgBIKQjnKyvvsfksMTj71o62n52L?=
 =?us-ascii?Q?pLzZ7yAjzHr8PkiYvkzj/zKyXXK36fFdHWUIJPPQbz0bFB5HCEoot2Xd1U9a?=
 =?us-ascii?Q?hi5WUmeCv2zqSptyGDmE3paK+vcLnEwivngrlJbq1lghyUDQb+t+Z/zlfzD5?=
 =?us-ascii?Q?VrapFQwE3PvbHIA9998Sz0U1eLNoqofDp34B4j1VapNjM89GEVOSrJ1OsL8z?=
 =?us-ascii?Q?DV7CaOY+XPtPCLCxKsPOW1imBkIAqUcBU9OyHEkKuEpCj/xnizLTODRkJmOH?=
 =?us-ascii?Q?XYjFzQXJwktvgFgZbgqTn2RjyWck1y4XgGiN+eSyhoB2p71Q1Dxfkg24Kx3D?=
 =?us-ascii?Q?MrM1w2qurM6zLNP9N8Upq25+Uqu2Q9nP98J+yMffa7Ga8vZCZe0UhmaC7SHz?=
 =?us-ascii?Q?sITNqv1RV+jat1HDBDhQYxTN91HygxDxAVZlx6vdJ/32tb/oqQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5fd08c8-f2db-426f-01c6-08d8cc829cc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2021 22:41:01.9226
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zIjV8IDlvA+FFXc0SbNMRgg9qFRBFKhXgOUnDz7nvBYjHI7CgJCXMF8IpWIztEs8C4QEim5moHBkRv3ETz6MsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB4915
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/09 4:50, Rob Herring wrote:=0A=
> On Fri, Feb 5, 2021 at 4:52 PM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>=0A=
>> On 2/5/21 3:25 PM, Rob Herring wrote:=0A=
>>> On Fri, Feb 05, 2021 at 03:58:20PM +0900, Damien Le Moal wrote:=0A=
>>>> Update the Canaan Kendryte K210 base device tree k210.dtsi to define=
=0A=
>>>> all peripherals of the SoC, their clocks and reset lines. The device=
=0A=
>>>> tree file k210.dts is renamed to k210_generic.dts and becomes the=0A=
>>>> default value selection of the SOC_CANAAN_K210_DTB_BUILTIN_SOURCE=0A=
>>>> configuration option. No device beside the serial console is defined b=
y=0A=
>>>> this device tree. This makes this generic device tree suitable for use=
=0A=
>>>> with a builtin initramfs with all known K210 based boards.=0A=
>>>>=0A=
>>>> These changes result in the K210_CLK_ACLK clock ID to be unused and=0A=
>>>> removed from the dt-bindings k210-clk.h header file.=0A=
>>>>=0A=
>>>> Most updates to the k210.dtsi file come from Sean Anderson's work on=
=0A=
>>>> U-Boot support for the K210.=0A=
>>>>=0A=
>>>> Cc: Rob Herring <robh@kernel.org>=0A=
>>>> Cc: devicetree@vger.kernel.org=0A=
>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>> ---=0A=
>>>>   arch/riscv/Kconfig.socs                     |   2 +-=0A=
>>>>   arch/riscv/boot/dts/canaan/k210.dts         |  23 -=0A=
>>>>   arch/riscv/boot/dts/canaan/k210.dtsi        | 535 ++++++++++++++++++=
+-=0A=
>>>>   arch/riscv/boot/dts/canaan/k210_generic.dts |  46 ++=0A=
>>>>   include/dt-bindings/clock/k210-clk.h        |   1 -=0A=
>>>>   5 files changed, 554 insertions(+), 53 deletions(-)=0A=
>>>>   delete mode 100644 arch/riscv/boot/dts/canaan/k210.dts=0A=
>>>>   create mode 100644 arch/riscv/boot/dts/canaan/k210_generic.dts=0A=
>>>>=0A=
>>>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs=0A=
>>>> index 6402746c68f3..7efcece8896c 100644=0A=
>>>> --- a/arch/riscv/Kconfig.socs=0A=
>>>> +++ b/arch/riscv/Kconfig.socs=0A=
>>>> @@ -51,7 +51,7 @@ config SOC_CANAAN_K210_DTB_SOURCE=0A=
>>>>      string "Source file for the Canaan Kendryte K210 builtin DTB"=0A=
>>>>      depends on SOC_CANAAN=0A=
>>>>      depends on SOC_CANAAN_K210_DTB_BUILTIN=0A=
>>>> -    default "k210"=0A=
>>>> +    default "k210_generic"=0A=
>>>>      help=0A=
>>>>        Base name (without suffix, relative to arch/riscv/boot/dts/cana=
an)=0A=
>>>>        for the DTS file that will be used to produce the DTB linked in=
to the=0A=
>>>> diff --git a/arch/riscv/boot/dts/canaan/k210.dts b/arch/riscv/boot/dts=
/canaan/k210.dts=0A=
>>>> deleted file mode 100644=0A=
>>>> index 0d1f28fce6b2..000000000000=0A=
>>>> --- a/arch/riscv/boot/dts/canaan/k210.dts=0A=
>>>> +++ /dev/null=0A=
>>>> @@ -1,23 +0,0 @@=0A=
>>>> -// SPDX-License-Identifier: GPL-2.0+=0A=
>>>> -/*=0A=
>>>> - * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>>> - */=0A=
>>>> -=0A=
>>>> -/dts-v1/;=0A=
>>>> -=0A=
>>>> -#include "k210.dtsi"=0A=
>>>> -=0A=
>>>> -/ {=0A=
>>>> -    model =3D "Kendryte K210 generic";=0A=
>>>> -    compatible =3D "kendryte,k210";=0A=
>>>> -=0A=
>>>> -    chosen {=0A=
>>>> -            bootargs =3D "earlycon console=3DttySIF0";=0A=
>>>> -            stdout-path =3D "serial0";=0A=
>>>> -    };=0A=
>>>> -};=0A=
>>>> -=0A=
>>>> -&uarths0 {=0A=
>>>> -    status =3D "okay";=0A=
>>>> -};=0A=
>>>> -=0A=
>>>> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dt=
s/canaan/k210.dtsi=0A=
>>>> index 354b263195a3..63c1f4c98d6c 100644=0A=
>>>> --- a/arch/riscv/boot/dts/canaan/k210.dtsi=0A=
>>>> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi=0A=
>>>> @@ -1,9 +1,11 @@=0A=
>>>>   // SPDX-License-Identifier: GPL-2.0+=0A=
>>>>   /*=0A=
>>>> - * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>=0A=
>>>> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>=0A=
>>>>    * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>>>    */=0A=
>>>>   #include <dt-bindings/clock/k210-clk.h>=0A=
>>>> +#include <dt-bindings/pinctrl/k210-fpioa.h>=0A=
>>>> +#include <dt-bindings/reset/k210-rst.h>=0A=
>>>>=0A=
>>>>   / {=0A=
>>>>      /*=0A=
>>>> @@ -12,14 +14,33 @@ / {=0A=
>>>>       */=0A=
>>>>      #address-cells =3D <1>;=0A=
>>>>      #size-cells =3D <1>;=0A=
>>>> -    compatible =3D "kendryte,k210";=0A=
>>>> +    compatible =3D "canaan,kendryte-k210";=0A=
>>>>=0A=
>>>>      aliases {=0A=
>>>> +            cpu0 =3D &cpu0;=0A=
>>>> +            cpu1 =3D &cpu1;=0A=
>>>> +            dma0 =3D &dmac0;=0A=
>>>> +            gpio0 =3D &gpio0;=0A=
>>>> +            gpio1 =3D &gpio1_0;=0A=
>>>> +            i2c0 =3D &i2c0;=0A=
>>>> +            i2c1 =3D &i2c1;=0A=
>>>> +            i2c2 =3D &i2c2;=0A=
>>>> +            pinctrl0 =3D &fpioa;=0A=
>>>>              serial0 =3D &uarths0;=0A=
>>>> +            serial1 =3D &uart1;=0A=
>>>> +            serial2 =3D &uart2;=0A=
>>>> +            serial3 =3D &uart3;=0A=
>>>> +            spi0 =3D &spi0;=0A=
>>>> +            spi1 =3D &spi1;=0A=
>>>> +            spi2 =3D &spi2;=0A=
>>>> +            spi3 =3D &spi3;=0A=
>>>> +            timer0 =3D &timer0;=0A=
>>>> +            timer1 =3D &timer1;=0A=
>>>> +            timer2 =3D &timer2;=0A=
>>>=0A=
>>> Don't add random aliases. Really, only the serialN ones should be here.=
=0A=
>>> cpu, dma, pinctrl, timer are definitely non-standard.=0A=
>>=0A=
>>=0A=
>> All of these except for cpu and dma are already found in the kernel.=0A=
>> They were primarily added for U-Boot.=0A=
>>=0A=
>>>=0A=
>>>>      };=0A=
>>>>=0A=
>>>>      /*=0A=
>>>> -     * The K210 has an sv39 MMU following the priviledge specificatio=
n v1.9.=0A=
>>>> +     * The K210 has an sv39 MMU following the privileged specificatio=
n v1.9.=0A=
>>>>       * Since this is a non-ratified draft specification, the kernel d=
oes not=0A=
>>>>       * support it and the K210 support enabled only for the !MMU case=
.=0A=
>>>>       * Be consistent with this by setting the CPUs MMU type to "none"=
.=0A=
>>>> @@ -30,14 +51,14 @@ cpus {=0A=
>>>>              timebase-frequency =3D <7800000>;=0A=
>>>>              cpu0: cpu@0 {=0A=
>>>>                      device_type =3D "cpu";=0A=
>>>> +                    compatible =3D "canaan,k210", "riscv";=0A=
>>>>                      reg =3D <0>;=0A=
>>>> -                    compatible =3D "kendryte,k210", "sifive,rocket0",=
 "riscv";=0A=
>>>>                      riscv,isa =3D "rv64imafdc";=0A=
>>>> -                    mmu-type =3D "none";=0A=
>>>> -                    i-cache-size =3D <0x8000>;=0A=
>>>> +                    mmu-type =3D "riscv,none";=0A=
>>>>                      i-cache-block-size =3D <64>;=0A=
>>>> -                    d-cache-size =3D <0x8000>;=0A=
>>>> +                    i-cache-size =3D <0x8000>;=0A=
>>>>                      d-cache-block-size =3D <64>;=0A=
>>>> +                    d-cache-size =3D <0x8000>;=0A=
>>>>                      cpu0_intc: interrupt-controller {=0A=
>>>>                              #interrupt-cells =3D <1>;=0A=
>>>>                              interrupt-controller;=0A=
>>>> @@ -46,14 +67,14 @@ cpu0_intc: interrupt-controller {=0A=
>>>>              };=0A=
>>>>              cpu1: cpu@1 {=0A=
>>>>                      device_type =3D "cpu";=0A=
>>>> +                    compatible =3D "canaan,k210", "riscv";=0A=
>>>>                      reg =3D <1>;=0A=
>>>> -                    compatible =3D "kendryte,k210", "sifive,rocket0",=
 "riscv";=0A=
>>>>                      riscv,isa =3D "rv64imafdc";=0A=
>>>> -                    mmu-type =3D "none";=0A=
>>>> -                    i-cache-size =3D <0x8000>;=0A=
>>>> +                    mmu-type =3D "riscv,none";=0A=
>>>>                      i-cache-block-size =3D <64>;=0A=
>>>> -                    d-cache-size =3D <0x8000>;=0A=
>>>> +                    i-cache-size =3D <0x8000>;=0A=
>>>>                      d-cache-block-size =3D <64>;=0A=
>>>> +                    d-cache-size =3D <0x8000>;=0A=
>>>>                      cpu1_intc: interrupt-controller {=0A=
>>>>                              #interrupt-cells =3D <1>;=0A=
>>>>                              interrupt-controller;=0A=
>>>> @@ -64,10 +85,15 @@ cpu1_intc: interrupt-controller {=0A=
>>>>=0A=
>>>>      sram: memory@80000000 {=0A=
>>>>              device_type =3D "memory";=0A=
>>>> +            compatible =3D "canaan,k210-sram";=0A=
>>>>              reg =3D <0x80000000 0x400000>,=0A=
>>>>                    <0x80400000 0x200000>,=0A=
>>>>                    <0x80600000 0x200000>;=0A=
>>>>              reg-names =3D "sram0", "sram1", "aisram";=0A=
>>>> +            clocks =3D <&sysclk K210_CLK_SRAM0>,=0A=
>>>> +                     <&sysclk K210_CLK_SRAM1>,=0A=
>>>> +                     <&sysclk K210_CLK_AI>;=0A=
>>>> +            clock-names =3D "sram0", "sram1", "aisram";=0A=
>>>>      };=0A=
>>>>=0A=
>>>>      clocks {=0A=
>>>> @@ -81,40 +107,493 @@ in0: oscillator {=0A=
>>>>      soc {=0A=
>>>>              #address-cells =3D <1>;=0A=
>>>>              #size-cells =3D <1>;=0A=
>>>> -            compatible =3D "kendryte,k210-soc", "simple-bus";=0A=
>>>> +            compatible =3D "simple-bus";=0A=
>>>>              ranges;=0A=
>>>>              interrupt-parent =3D <&plic0>;=0A=
>>>>=0A=
>>>> -            sysctl: sysctl@50440000 {=0A=
>>>> -                    compatible =3D "kendryte,k210-sysctl", "simple-mf=
d";=0A=
>>>> -                    reg =3D <0x50440000 0x1000>;=0A=
>>>> -                    #clock-cells =3D <1>;=0A=
>>>> +            debug0: debug@0 {=0A=
>>>> +                    compatible =3D "canaan,k210-debug", "riscv,debug"=
;=0A=
>>>=0A=
>>> Not documented.=0A=
>>=0A=
>> On 1/14/21 7:06 PM, Sean Anderson wrote:=0A=
>>> Here it's because "riscv,debug" doesn't exist. This is the "debug"=0A=
>>> device as described in the debug spec. AFAIK Linux never needs to=0A=
>>> configure this device. It could probably be removed.=0A=
>>=0A=
>> No objections here.=0A=
>>=0A=
>>>=0A=
>>>> +                    reg =3D <0x0 0x1000>;=0A=
>>>> +                    status =3D "disabled";=0A=
>>>> +            };=0A=
>>>> +=0A=
>>>> +            rom0: nvmem@1000 {=0A=
>>>> +                    reg =3D <0x1000 0x1000>;=0A=
>>>> +                    read-only;=0A=
>>>> +                    status =3D "disabled";=0A=
>>>>              };=0A=
>>>>=0A=
>>>>              clint0: clint@2000000 {=0A=
>>>=0A=
>>> interrupt-controller@...=0A=
>>=0A=
>> Yes, this should be changed.=0A=
>>=0A=
>>>=0A=
>>>> -                    #interrupt-cells =3D <1>;=0A=
>>>> -                    compatible =3D "riscv,clint0";=0A=
>>>> +                    compatible =3D "canaan,k210-clint", "sifive,clint=
0";=0A=
>>>>                      reg =3D <0x2000000 0xC000>;=0A=
>>>> -                    interrupts-extended =3D  <&cpu0_intc 3 &cpu0_intc=
 7=0A=
>>>> -                                            &cpu1_intc 3 &cpu1_intc 7=
>;=0A=
>>>> +                    interrupts-extended =3D <&cpu0_intc 3 &cpu0_intc =
7=0A=
>>>> +                                          &cpu1_intc 3 &cpu1_intc 7>;=
=0A=
>>>>              };=0A=
>>>>=0A=
>>>> -            plic0: interrupt-controller@c000000 {=0A=
>>>> +            plic0: interrupt-controller@C000000 {=0A=
>>>=0A=
>>> No, lowercase hex in unit-addresses was correct.=0A=
>>=0A=
>> Do you have any authoritative source for this? When I was creating this=
=0A=
>> tree, I didn't see anything about what case the addresses should be in=
=0A=
>> (and a quick grep for lower-case in Documentation/devicetree doesn't=0A=
>> have any relevant results).=0A=
> =0A=
> It's ultimately up to the bus definition, but the DT spec may say=0A=
> something. I don't recall offhand. For most bus definitions we have a=0A=
> schema enforcement and dtc has some checks. (Though I just noticed the=0A=
> simple-bus schema allows uppercase which is an error. dtc does not.)=0A=
> This case doesn't get caught because there's not a bus definition for=0A=
> root node. IMO, it should be same as 'simple-bus', but there was some=0A=
> debate about that when I added the dtc checks.=0A=
> =0A=
> The other cases should have been flagged by simple-pm-bus.yaml. You=0A=
> all did run 'make dtbs_check' on this, right?=0A=
=0A=
Yes, I did, and rerun before sending any new version of the series. No warn=
ings=0A=
at all show about anything.=0A=
=0A=
> =0A=
>>>> +                    otp0: nvmem@50420000 {=0A=
>>>> +                            #address-cells =3D <1>;=0A=
>>>> +                            #size-cells =3D <1>;=0A=
>>>> +                            compatible =3D "canaan,k210-otp";=0A=
>>>> +                            reg =3D <0x50420000 0x100>,=0A=
>>>> +                                  <0x88000000 0x20000>;=0A=
>>>> +                            reg-names =3D "reg", "mem";=0A=
>>>> +                            clocks =3D <&sysclk K210_CLK_ROM>;=0A=
>>>> +                            resets =3D <&sysrst K210_RST_ROM>;=0A=
>>>> +                            read-only;=0A=
>>>> +                            status =3D "disabled";=0A=
>>>=0A=
>>> Your disabled nodes seem a bit excessive. A device should really only b=
e=0A=
>>> disabled if it's a board level decision to use or not. I'd assume the=
=0A=
>>> OTP is always there and usable.=0A=
>>=0A=
>> It's disabled because there is no driver for it (yet). Though see below=
=0A=
>> for the reasoning behind this.=0A=
> =0A=
> No driver is not really a reason to disable. Why force a DT change=0A=
> when there is a driver?=0A=
=0A=
We can omit the nodes that do not have drivers, but when the drivers are ad=
ded,=0A=
there will be a need to change the DT. So isn't it the same in the end ?=0A=
=0A=
> =0A=
>>>> +=0A=
>>>> +                            /* Bootloader */=0A=
>>>> +                            firmware@00000 {=0A=
>>>=0A=
>>> Drop leading 0s.=0A=
>>>=0A=
>>> Is this memory mapped? If so, you are missing 'ranges' in the parent to=
=0A=
>>> make it translateable.=0A=
>>=0A=
>> Yes, there should be ranges.=0A=
>>=0A=
>> Though I am not sure that the ROM is controllable from this OTP...=0A=
>>=0A=
>> Perhaps it should be its own node.=0A=
>>=0A=
>>>=0A=
>>>> +                                    reg =3D <0x00000 0xC200>;=0A=
>>>> +                            };=0A=
>>>> +=0A=
>>>> +                            /*=0A=
>>>> +                             * config string as described in RISC-V=
=0A=
>>>> +                             * privileged spec 1.9=0A=
>>>> +                             */=0A=
>>>> +                            config-1-9@1c000 {=0A=
>>>> +                                    reg =3D <0x1C000 0x1000>;=0A=
>>>> +                            };=0A=
>>>> +=0A=
>>>> +                            /*=0A=
>>>> +                             * Device tree containing only registers,=
=0A=
>>>> +                             * interrupts, and cpus=0A=
>>>> +                             */=0A=
>>>> +                            fdt@1d000 {=0A=
>>>> +                                    reg =3D <0x1D000 0x2000>;=0A=
>>>> +                            };=0A=
>>>> +=0A=
>>>> +                            /* CPU/ROM credits */=0A=
>>>> +                            credits@1f000 {=0A=
>>>> +                                    reg =3D <0x1F000 0x1000>;=0A=
>>>> +                            };=0A=
>>>> +                    };=0A=
>>>> +=0A=
>>>> +                    dvp0: camera@50430000 {=0A=
>>>> +                            compatible =3D "canaan,k210-dvp";=0A=
>>>=0A=
>>> No documented. Seems to be several of them.=0A=
>>=0A=
>> Correct. At some point there may be drivers. But there is no=0A=
>> authoritative information (memory map, list of registers, list of=0A=
>> interrupts) outside of source code for this board.=0A=
> =0A=
> Then you should just omit it.=0A=
=0A=
OK. Will omit the unsupported nodes. Sending v18.=0A=
=0A=
> =0A=
> Rob=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
