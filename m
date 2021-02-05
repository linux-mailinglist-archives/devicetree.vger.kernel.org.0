Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E685311983
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbhBFDIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:08:47 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:13409 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231452AbhBFDCq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 22:02:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612580565; x=1644116565;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=L551jv9hOynmnDi4CvdOOwie8BskVWuInP7vacv2H9E=;
  b=YDkEodMgAD3zzZcNIhv22zufkDgW7wIdOecEVA79KB4HD7NvlyFJ9XLM
   6pS/a09hT9qm0dfYn9NPTYffXYHrEaxJPpbKW9FALnJ/Ygz1V/qeUWxep
   goLgxEYmCd/vnnMCFX+QAwXLXbDt9Zb6ng458uMCXOCLjdTwllr9+OnQt
   ziERGT+jkKPTSn0JGLjuv4IBEGEXP+RrGS9qq1/oR+GPiFPcFGhN+x5bP
   pseeIny/5jDIcFVBo3Nwfs3wOQqP1HMWRvzF2PuaIVK24uIXOyCUTfF9s
   k8C+q5rzRxzzbP7M1EhdsfFQqDVW92M+v1RLy5jRwRDEtpLFyLfgz8EcL
   Q==;
IronPort-SDR: CfH+PUuZUWktox2uoVqrQK6n4scVbBxjG2RSrD71VgWULakGSQL12ZsKxt4pYAbpX8SW2qZFKZ
 PHBSh41BLnun7U09MC0doxgRNkZn4u0OucttTUO4gJrSgzav81A0gvmmz/ZQCJpJR1Qb1NOYXs
 jozItgn9SCSfDdEt9Co/eQcamL7uFfcSM4vyDSmNlVzv9l+oSJ1hzw/Mvz1b0tRY8pPTYT97pm
 sLGV2evhIpcVefNgOoS1ZolM3R7RxjF5gqT/cQqtC3vrrCeyMDgio69ouIhQPMiolg8tkOwwKX
 1dc=
X-IronPort-AV: E=Sophos;i="5.81,156,1610380800"; 
   d="scan'208";a="159263138"
Received: from mail-dm6nam12lp2176.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.176])
  by ob1.hgst.iphmx.com with ESMTP; 06 Feb 2021 07:49:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKIFDyHI0L0o3LEXh+2W3qZKLxe6nMZ5g+yH33I2XRn1hjtj8I7hZiyBtQF4zRM6fqr/feKlTS9aVqye2Jff2C5OEf9AVCoTVZ/lVyspQ2G2av1E2a9D/0YXWXmYOy06joxt7ije8ktJPCRmJPj/di+whJqrYdapevtLGF6ayMIkOiqyDipJFckIU4mJk/HZvQQyH4mfWxWx8K6MukIb02Yp9suAgpIQW21yJbLkjwrkGognuHkmPPjke0emlctfIYF1u5AQp0SL0F/gNNpc2tCQ+9R3Kam8oXH1wI7OgnFgu8fQEEuhXGcKEHH51HiWoXF1csqaozc789+mv4U+nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2J7vj8uwFWPRqPrk/LRckpVvEyXbjmlscxNXRGnGPLc=;
 b=UC7HWjqLQbCnUbpzC5icfKc7wu4Lhvkr73UhLmByXrSYuaZvZeysDx2O8A+eG1m/GT9M5+d42qRl1+NxaPG2umfVvjj32W9eedZq/esSfcxaDSgaxg5W/LBuTNuOvXgzLPHUyni0/6oU+orL7Br7bUXvVWMB0kyrtvSGiQzCUYaeH9MBkNovGJh+pCkRWZz1VjMnca3M6Lz5aKCyzzrM+o3RqC606++OU6rojtKO/hIfNxl2VlbIXITj0Z+yEOowW7G6xdkTadeg1bIDeiAiPswGfK8497fAHinXdhOiBVX7V2OSoW7TCjWXsnjg17Iy8XxNBsZ8u4Bigo50A1Okzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2J7vj8uwFWPRqPrk/LRckpVvEyXbjmlscxNXRGnGPLc=;
 b=KKu23+HDTDDFp/D+IwUhVZL95aEMmnaYeKb9Oe2/dQ3uOhiQ1iusLzR+igIqxLa2WedkYhTiLCkMDLomgxf4bZBue/x83XMBWkh339lN5glWw4Tc0Zu5LLW1j1eH8WG98pQtnQWFwesslYSBQDz86wwqyp7pkiBjAoaHsMrBBSM=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6350.namprd04.prod.outlook.com (2603:10b6:208:1a1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Fri, 5 Feb
 2021 23:49:36 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.025; Fri, 5 Feb 2021
 23:49:36 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Sean Anderson <seanga2@gmail.com>, Rob Herring <robh@kernel.org>
CC:     Palmer Dabbelt <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Topic: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Index: AQHW+4xeGC09t/jMzkSSVnIpB80beA==
Date:   Fri, 5 Feb 2021 23:49:36 +0000
Message-ID: <BL0PR04MB65146BD4DF1C3BA208AFC198E7B29@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
 <52dc2537-7668-4409-f35b-bfddfd09059b@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:50f7:ee01:712b:bf92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2deda642-09f7-4b88-5b5b-08d8ca30b1ef
x-ms-traffictypediagnostic: MN2PR04MB6350:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB63501650708E9B7AF96A2559E7B29@MN2PR04MB6350.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gn6YnOQKqN8s2jxxajjQ/hwz6M+sGeTMdf2K8WFtqP2lDDEPygSEXyoVSDRxZIzWTvTR3wsoiPrSrVQOxY7A9A+PO6h1w7c+erFQx42vfSmRDA4sWaO25v7QO6BpZIIUMtzo9GIR6VCQ+B4fv/RMh9ZT2koxd4fPngE4o2UGhMvpnFVV0SlyctvOI2yiArXOKDy+unHGzoW9aSWZqMgg8s1U+oy5ImqIBKo5rP0a1aL/CEjkl6v23V6Qf3/mpMFMaVzwgEv/qvojtPcjV8XqcoCc+9rvrKzl6n2vazcrqn1Cc+J8iCumbO7IKDMFEdFnY6grHK9fsBxeiTsBtaN5BKtFUanORXH7Bz2PmpAjSJkGWar5mmynbeo61ev9rS3tlxVJsE/3amHEGfMRRjZMRPsj/ARnLvRFUChzt0HSFu4ILoLaqQkaea2muy3+8kE2ayjZEw2JiSBz2EX+HMhzqTXdOVCP1mLjRZqq9YIYsrFwuDNF1SgM1Xoib5ZGwFAhzAgJYUFrUwOIfkP7z4BCiw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(83380400001)(4326008)(6506007)(8676002)(71200400001)(2906002)(91956017)(64756008)(15650500001)(8936002)(76116006)(186003)(66556008)(66446008)(30864003)(66946007)(52536014)(66476007)(316002)(54906003)(478600001)(86362001)(5660300002)(53546011)(7696005)(33656002)(110136005)(55016002)(9686003)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?gKnd2MHJchvFGz3lDo1qTCre6V9it9eon9yh/rYguyb+I58CzuAq5obbAhEZ?=
 =?us-ascii?Q?13XvpxJ4v7XdTC1cjqSaRdJL1S1IfJIYyVA070jztqhc8/nWFScuh6YnF+lI?=
 =?us-ascii?Q?cm5FkYP1lp5XB+YyBug+lrt4BQLOTC20O+YOhbhvqM6FzvhlPtUIPoMdvLP7?=
 =?us-ascii?Q?CevVVEANA5sEXroPxgvETtptB34mgQiDbL7/afKHEW8D4LPvBw9JVm3OCbNk?=
 =?us-ascii?Q?7Q8+HZPzrNTd1U4X1bgx3RH8P2LP9j0l0+VITmElzjxhHkDgN2oq+sZIKCqL?=
 =?us-ascii?Q?IJOk4w3VncSDY9vfIcGlj7V3e0wWUrbFhhf5B3//uErTc2PdgWvwP+NwQBnK?=
 =?us-ascii?Q?nj1dEhrgd4mj6cyKhluwltNcSpmaBlYV8T+3HhFkiE2QrigZGib8jyQUL+Vo?=
 =?us-ascii?Q?30VUEeuPTYccsPrLNwxk3Tu1CyMAxzIvFikU0mTFQ12H7T6y1NxW1J3hLu/R?=
 =?us-ascii?Q?pSLFOdjr/9foSPalENAc4mfsVj3Ps7od9YkI0sMCYahQ1R+Mk+TZZWjMdYwE?=
 =?us-ascii?Q?xTyd8yNBqPhXzzQj9WY8zL0DoOlyFqaZGiLvw7xnxI8B5kbil4NSQy/fVoCW?=
 =?us-ascii?Q?mGk/SdNyv+3l+CREOUSn9Fa7Caj3uWzaagDrEOsp18RZukJT8mwP/83Ur8e6?=
 =?us-ascii?Q?osxBF+sHfq3ic23y6LgBt3oxMPssrrx5ssFg6RTIqUDxAEfH5s4K7ymoOrug?=
 =?us-ascii?Q?Wz0muoT1/9VvrD7CcBltEAmeYLq+vl36YbM4rnf59YqvlPRsEdNqC0x9k2Q+?=
 =?us-ascii?Q?GiaXWkAU2v3OUy/Pet6d0E5UMMuSO14fuMUvtk+piT9gYUeYVNitXGQcJi3M?=
 =?us-ascii?Q?K5uyN5cBeR3ZpqpTHYFc8j3kRRfmZZH0AsIRVh5mAgvss5ivL6zD7qBHS0KZ?=
 =?us-ascii?Q?YkJ93TPQ6uFORkbPtBZnZdbXl4CsiqvWDS6PlO1HWclXjtQAeFY9T683XhcE?=
 =?us-ascii?Q?Jirk7J0NCOgEKaHAGPvxYPw/Nda7blFrVsKK+/zLqYblcwHAQZTnP4YldAux?=
 =?us-ascii?Q?A82UxH9uovgGDeG/0kX9p4vcWaMcvQl8rlxmYlqcpA5Xvfkk/QYqpVT+XG+N?=
 =?us-ascii?Q?FcDKJ3d/FokTWOigNQshRMcGMDqoPbUy4jytMC4kwiVv+sjK0ma7neVic7hP?=
 =?us-ascii?Q?/cvumCWVmyerlV85YJXQynI/sud37Y3pdFuFbxqiUKKoiGcxYfpL8OsWm8+Y?=
 =?us-ascii?Q?01uCYrgc83bbdQIGXrEuef0CTMttODJBYs2HgcolSpwTgLjx2KEd3eXOZALd?=
 =?us-ascii?Q?LosbmmO63bEwSEQcoNzyM1jb6YAHMS86+X8CL/Ctd02doeoGKaxJC3kyQDLU?=
 =?us-ascii?Q?YmSPON1Wvo/HYcd4Z5GazCiP4cXr4EvRV8sB3+9du9R+VikZvzcfjr+1Ms3C?=
 =?us-ascii?Q?Mm8Of41AY0/RZ3fMV86gJTVPBkqZovm8IR1iRH2G7I/IN2tgwQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2deda642-09f7-4b88-5b5b-08d8ca30b1ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2021 23:49:36.3846
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mJWyAXf1s4bdj8O4ImcJEHZsDXJJ4vfT6j8PNElT2XbX0XAVb7p337ByDAhYNlw857DgXQ/zpvIJhwSbyeJuEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6350
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/06 7:52, Sean Anderson wrote:=0A=
> On 2/5/21 3:25 PM, Rob Herring wrote:=0A=
>> On Fri, Feb 05, 2021 at 03:58:20PM +0900, Damien Le Moal wrote:=0A=
>>> Update the Canaan Kendryte K210 base device tree k210.dtsi to define=0A=
>>> all peripherals of the SoC, their clocks and reset lines. The device=0A=
>>> tree file k210.dts is renamed to k210_generic.dts and becomes the=0A=
>>> default value selection of the SOC_CANAAN_K210_DTB_BUILTIN_SOURCE=0A=
>>> configuration option. No device beside the serial console is defined by=
=0A=
>>> this device tree. This makes this generic device tree suitable for use=
=0A=
>>> with a builtin initramfs with all known K210 based boards.=0A=
>>>=0A=
>>> These changes result in the K210_CLK_ACLK clock ID to be unused and=0A=
>>> removed from the dt-bindings k210-clk.h header file.=0A=
>>>=0A=
>>> Most updates to the k210.dtsi file come from Sean Anderson's work on=0A=
>>> U-Boot support for the K210.=0A=
>>>=0A=
>>> Cc: Rob Herring <robh@kernel.org>=0A=
>>> Cc: devicetree@vger.kernel.org=0A=
>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>> ---=0A=
>>>   arch/riscv/Kconfig.socs                     |   2 +-=0A=
>>>   arch/riscv/boot/dts/canaan/k210.dts         |  23 -=0A=
>>>   arch/riscv/boot/dts/canaan/k210.dtsi        | 535 +++++++++++++++++++=
-=0A=
>>>   arch/riscv/boot/dts/canaan/k210_generic.dts |  46 ++=0A=
>>>   include/dt-bindings/clock/k210-clk.h        |   1 -=0A=
>>>   5 files changed, 554 insertions(+), 53 deletions(-)=0A=
>>>   delete mode 100644 arch/riscv/boot/dts/canaan/k210.dts=0A=
>>>   create mode 100644 arch/riscv/boot/dts/canaan/k210_generic.dts=0A=
>>>=0A=
>>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs=0A=
>>> index 6402746c68f3..7efcece8896c 100644=0A=
>>> --- a/arch/riscv/Kconfig.socs=0A=
>>> +++ b/arch/riscv/Kconfig.socs=0A=
>>> @@ -51,7 +51,7 @@ config SOC_CANAAN_K210_DTB_SOURCE=0A=
>>>   	string "Source file for the Canaan Kendryte K210 builtin DTB"=0A=
>>>   	depends on SOC_CANAAN=0A=
>>>   	depends on SOC_CANAAN_K210_DTB_BUILTIN=0A=
>>> -	default "k210"=0A=
>>> +	default "k210_generic"=0A=
>>>   	help=0A=
>>>   	  Base name (without suffix, relative to arch/riscv/boot/dts/canaan)=
=0A=
>>>   	  for the DTS file that will be used to produce the DTB linked into =
the=0A=
>>> diff --git a/arch/riscv/boot/dts/canaan/k210.dts b/arch/riscv/boot/dts/=
canaan/k210.dts=0A=
>>> deleted file mode 100644=0A=
>>> index 0d1f28fce6b2..000000000000=0A=
>>> --- a/arch/riscv/boot/dts/canaan/k210.dts=0A=
>>> +++ /dev/null=0A=
>>> @@ -1,23 +0,0 @@=0A=
>>> -// SPDX-License-Identifier: GPL-2.0+=0A=
>>> -/*=0A=
>>> - * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>> - */=0A=
>>> -=0A=
>>> -/dts-v1/;=0A=
>>> -=0A=
>>> -#include "k210.dtsi"=0A=
>>> -=0A=
>>> -/ {=0A=
>>> -	model =3D "Kendryte K210 generic";=0A=
>>> -	compatible =3D "kendryte,k210";=0A=
>>> -=0A=
>>> -	chosen {=0A=
>>> -		bootargs =3D "earlycon console=3DttySIF0";=0A=
>>> -		stdout-path =3D "serial0";=0A=
>>> -	};=0A=
>>> -};=0A=
>>> -=0A=
>>> -&uarths0 {=0A=
>>> -	status =3D "okay";=0A=
>>> -};=0A=
>>> -=0A=
>>> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts=
/canaan/k210.dtsi=0A=
>>> index 354b263195a3..63c1f4c98d6c 100644=0A=
>>> --- a/arch/riscv/boot/dts/canaan/k210.dtsi=0A=
>>> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi=0A=
>>> @@ -1,9 +1,11 @@=0A=
>>>   // SPDX-License-Identifier: GPL-2.0+=0A=
>>>   /*=0A=
>>> - * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>=0A=
>>> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>=0A=
>>>    * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>>    */=0A=
>>>   #include <dt-bindings/clock/k210-clk.h>=0A=
>>> +#include <dt-bindings/pinctrl/k210-fpioa.h>=0A=
>>> +#include <dt-bindings/reset/k210-rst.h>=0A=
>>>   =0A=
>>>   / {=0A=
>>>   	/*=0A=
>>> @@ -12,14 +14,33 @@ / {=0A=
>>>   	 */=0A=
>>>   	#address-cells =3D <1>;=0A=
>>>   	#size-cells =3D <1>;=0A=
>>> -	compatible =3D "kendryte,k210";=0A=
>>> +	compatible =3D "canaan,kendryte-k210";=0A=
>>>   =0A=
>>>   	aliases {=0A=
>>> +		cpu0 =3D &cpu0;=0A=
>>> +		cpu1 =3D &cpu1;=0A=
>>> +		dma0 =3D &dmac0;=0A=
>>> +		gpio0 =3D &gpio0;=0A=
>>> +		gpio1 =3D &gpio1_0;=0A=
>>> +		i2c0 =3D &i2c0;=0A=
>>> +		i2c1 =3D &i2c1;=0A=
>>> +		i2c2 =3D &i2c2;=0A=
>>> +		pinctrl0 =3D &fpioa;=0A=
>>>   		serial0 =3D &uarths0;=0A=
>>> +		serial1 =3D &uart1;=0A=
>>> +		serial2 =3D &uart2;=0A=
>>> +		serial3 =3D &uart3;=0A=
>>> +		spi0 =3D &spi0;=0A=
>>> +		spi1 =3D &spi1;=0A=
>>> +		spi2 =3D &spi2;=0A=
>>> +		spi3 =3D &spi3;=0A=
>>> +		timer0 =3D &timer0;=0A=
>>> +		timer1 =3D &timer1;=0A=
>>> +		timer2 =3D &timer2;=0A=
>>=0A=
>> Don't add random aliases. Really, only the serialN ones should be here.=
=0A=
>> cpu, dma, pinctrl, timer are definitely non-standard.=0A=
> =0A=
> =0A=
> All of these except for cpu and dma are already found in the kernel.=0A=
> They were primarily added for U-Boot.=0A=
=0A=
They are unused in the DTS. make dtbs_check passes keeping only the serial=
=0A=
aliases, just check. Can I remove them ? Will that be a problem for U-Boot =
?=0A=
=0A=
> =0A=
>>=0A=
>>>   	};=0A=
>>>   =0A=
>>>   	/*=0A=
>>> -	 * The K210 has an sv39 MMU following the priviledge specification v1=
.9.=0A=
>>> +	 * The K210 has an sv39 MMU following the privileged specification v1=
.9.=0A=
>>>   	 * Since this is a non-ratified draft specification, the kernel does=
 not=0A=
>>>   	 * support it and the K210 support enabled only for the !MMU case.=
=0A=
>>>   	 * Be consistent with this by setting the CPUs MMU type to "none".=
=0A=
>>> @@ -30,14 +51,14 @@ cpus {=0A=
>>>   		timebase-frequency =3D <7800000>;=0A=
>>>   		cpu0: cpu@0 {=0A=
>>>   			device_type =3D "cpu";=0A=
>>> +			compatible =3D "canaan,k210", "riscv";=0A=
>>>   			reg =3D <0>;=0A=
>>> -			compatible =3D "kendryte,k210", "sifive,rocket0", "riscv";=0A=
>>>   			riscv,isa =3D "rv64imafdc";=0A=
>>> -			mmu-type =3D "none";=0A=
>>> -			i-cache-size =3D <0x8000>;=0A=
>>> +			mmu-type =3D "riscv,none";=0A=
>>>   			i-cache-block-size =3D <64>;=0A=
>>> -			d-cache-size =3D <0x8000>;=0A=
>>> +			i-cache-size =3D <0x8000>;=0A=
>>>   			d-cache-block-size =3D <64>;=0A=
>>> +			d-cache-size =3D <0x8000>;=0A=
>>>   			cpu0_intc: interrupt-controller {=0A=
>>>   				#interrupt-cells =3D <1>;=0A=
>>>   				interrupt-controller;=0A=
>>> @@ -46,14 +67,14 @@ cpu0_intc: interrupt-controller {=0A=
>>>   		};=0A=
>>>   		cpu1: cpu@1 {=0A=
>>>   			device_type =3D "cpu";=0A=
>>> +			compatible =3D "canaan,k210", "riscv";=0A=
>>>   			reg =3D <1>;=0A=
>>> -			compatible =3D "kendryte,k210", "sifive,rocket0", "riscv";=0A=
>>>   			riscv,isa =3D "rv64imafdc";=0A=
>>> -			mmu-type =3D "none";=0A=
>>> -			i-cache-size =3D <0x8000>;=0A=
>>> +			mmu-type =3D "riscv,none";=0A=
>>>   			i-cache-block-size =3D <64>;=0A=
>>> -			d-cache-size =3D <0x8000>;=0A=
>>> +			i-cache-size =3D <0x8000>;=0A=
>>>   			d-cache-block-size =3D <64>;=0A=
>>> +			d-cache-size =3D <0x8000>;=0A=
>>>   			cpu1_intc: interrupt-controller {=0A=
>>>   				#interrupt-cells =3D <1>;=0A=
>>>   				interrupt-controller;=0A=
>>> @@ -64,10 +85,15 @@ cpu1_intc: interrupt-controller {=0A=
>>>   =0A=
>>>   	sram: memory@80000000 {=0A=
>>>   		device_type =3D "memory";=0A=
>>> +		compatible =3D "canaan,k210-sram";=0A=
>>>   		reg =3D <0x80000000 0x400000>,=0A=
>>>   		      <0x80400000 0x200000>,=0A=
>>>   		      <0x80600000 0x200000>;=0A=
>>>   		reg-names =3D "sram0", "sram1", "aisram";=0A=
>>> +		clocks =3D <&sysclk K210_CLK_SRAM0>,=0A=
>>> +			 <&sysclk K210_CLK_SRAM1>,=0A=
>>> +			 <&sysclk K210_CLK_AI>;=0A=
>>> +		clock-names =3D "sram0", "sram1", "aisram";=0A=
>>>   	};=0A=
>>>   =0A=
>>>   	clocks {=0A=
>>> @@ -81,40 +107,493 @@ in0: oscillator {=0A=
>>>   	soc {=0A=
>>>   		#address-cells =3D <1>;=0A=
>>>   		#size-cells =3D <1>;=0A=
>>> -		compatible =3D "kendryte,k210-soc", "simple-bus";=0A=
>>> +		compatible =3D "simple-bus";=0A=
>>>   		ranges;=0A=
>>>   		interrupt-parent =3D <&plic0>;=0A=
>>>   =0A=
>>> -		sysctl: sysctl@50440000 {=0A=
>>> -			compatible =3D "kendryte,k210-sysctl", "simple-mfd";=0A=
>>> -			reg =3D <0x50440000 0x1000>;=0A=
>>> -			#clock-cells =3D <1>;=0A=
>>> +		debug0: debug@0 {=0A=
>>> +			compatible =3D "canaan,k210-debug", "riscv,debug";=0A=
>>=0A=
>> Not documented.=0A=
> =0A=
> On 1/14/21 7:06 PM, Sean Anderson wrote:=0A=
>> Here it's because "riscv,debug" doesn't exist. This is the "debug"=0A=
>> device as described in the debug spec. AFAIK Linux never needs to=0A=
>> configure this device. It could probably be removed. =0A=
> =0A=
> No objections here.=0A=
=0A=
OK. Will drop this one.=0A=
=0A=
> =0A=
>>=0A=
>>> +			reg =3D <0x0 0x1000>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		rom0: nvmem@1000 {=0A=
>>> +			reg =3D <0x1000 0x1000>;=0A=
>>> +			read-only;=0A=
>>> +			status =3D "disabled";=0A=
>>>   		};=0A=
>>>   =0A=
>>>   		clint0: clint@2000000 {=0A=
>>=0A=
>> interrupt-controller@...=0A=
> =0A=
> Yes, this should be changed.=0A=
=0A=
The bindings doc say it should be timer@... Will change to that.=0A=
=0A=
> =0A=
>>=0A=
>>> -			#interrupt-cells =3D <1>;=0A=
>>> -			compatible =3D "riscv,clint0";=0A=
>>> +			compatible =3D "canaan,k210-clint", "sifive,clint0";=0A=
>>>   			reg =3D <0x2000000 0xC000>;=0A=
>>> -			interrupts-extended =3D  <&cpu0_intc 3 &cpu0_intc 7=0A=
>>> -						&cpu1_intc 3 &cpu1_intc 7>;=0A=
>>> +			interrupts-extended =3D <&cpu0_intc 3 &cpu0_intc 7=0A=
>>> +					      &cpu1_intc 3 &cpu1_intc 7>;=0A=
>>>   		};=0A=
>>>   =0A=
>>> -		plic0: interrupt-controller@c000000 {=0A=
>>> +		plic0: interrupt-controller@C000000 {=0A=
>>=0A=
>> No, lowercase hex in unit-addresses was correct.=0A=
> =0A=
> Do you have any authoritative source for this? When I was creating this=
=0A=
> tree, I didn't see anything about what case the addresses should be in=0A=
> (and a quick grep for lower-case in Documentation/devicetree doesn't=0A=
> have any relevant results).=0A=
> =0A=
>>=0A=
>>>   			#interrupt-cells =3D <1>;=0A=
>>> -			interrupt-controller;=0A=
>>> -			compatible =3D "kendryte,k210-plic0", "riscv,plic0";=0A=
>>> +			#address-cells =3D <0>;=0A=
>>> +			compatible =3D "canaan,k210-plic", "sifive,plic-1.0.0";=0A=
>>>   			reg =3D <0xC000000 0x4000000>;=0A=
>>> -			interrupts-extended =3D <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,=
=0A=
>>> -					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;=0A=
>>> +			interrupt-controller;=0A=
>>> +			interrupts-extended =3D <&cpu0_intc 11 &cpu1_intc 11>;=0A=
>>>   			riscv,ndev =3D <65>;=0A=
>>> -			riscv,max-priority =3D <7>;=0A=
>>>   		};=0A=
>>>   =0A=
>>>   		uarths0: serial@38000000 {=0A=
>>> -			compatible =3D "kendryte,k210-uarths", "sifive,uart0";=0A=
>>> +			compatible =3D "canaan,k210-uarths", "sifive,uart0";=0A=
>>>   			reg =3D <0x38000000 0x1000>;=0A=
>>>   			interrupts =3D <33>;=0A=
>>> -			clocks =3D <&sysctl K210_CLK_CPU>;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_CPU>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		gpio0: gpio-controller@38001000 {=0A=
>>> +			#interrupt-cells =3D <2>;=0A=
>>> +			#gpio-cells =3D <2>;=0A=
>>> +			compatible =3D "canaan,k210-gpiohs", "sifive,gpio0";=0A=
>>> +			reg =3D <0x38001000 0x1000>;=0A=
>>> +			interrupt-controller;=0A=
>>> +			interrupts =3D <34 35 36 37 38 39 40 41=0A=
>>> +				      42 43 44 45 46 47 48 49=0A=
>>> +				      50 51 52 53 54 55 56 57=0A=
>>> +				      58 59 60 61 62 63 64 65>;=0A=
>>> +			gpio-controller;=0A=
>>> +			ngpios =3D <32>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		kpu0: kpu@40800000 {=0A=
>>> +			compatible =3D "canaan,k210-kpu";=0A=
>>> +			reg =3D <0x40800000 0xc00000>;=0A=
>>> +			interrupts =3D <25>;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_AI>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		fft0: fft@42000000 {=0A=
>>> +			compatible =3D "canaan,k210-fft";=0A=
>>> +			reg =3D <0x42000000 0x400000>;=0A=
>>> +			interrupts =3D <26>;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_FFT>;=0A=
>>> +			resets =3D <&sysrst K210_RST_FFT>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		dmac0: dma-controller@50000000 {=0A=
>>> +			compatible =3D "snps,axi-dma-1.01a";=0A=
>>> +			reg =3D <0x50000000 0x1000>;=0A=
>>> +			interrupts =3D <27 28 29 30 31 32>;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_DMA>, <&sysclk K210_CLK_DMA>;=0A=
>>> +			clock-names =3D "core-clk", "cfgr-clk";=0A=
>>> +			resets =3D <&sysrst K210_RST_DMA>;=0A=
>>> +			dma-channels =3D <6>;=0A=
>>> +			snps,dma-masters =3D <2>;=0A=
>>> +			snps,priority =3D <0 1 2 3 4 5>;=0A=
>>> +			snps,data-width =3D <5>;=0A=
>>> +			snps,block-size =3D <0x200000 0x200000 0x200000=0A=
>>> +					   0x200000 0x200000 0x200000>;=0A=
>>> +			snps,axi-max-burst-len =3D <256>;=0A=
>>> +			status =3D "disabled";=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		apb0: bus@50200000 {=0A=
>>> +			#address-cells =3D <1>;=0A=
>>> +			#size-cells =3D <1>;=0A=
>>> +			compatible =3D "simple-pm-bus";=0A=
>>> +			ranges;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_APB0>;=0A=
>>> +=0A=
>>> +			gpio1: gpio@50200000 {=0A=
>>> +				#address-cells =3D <1>;=0A=
>>> +				#size-cells =3D <0>;=0A=
>>> +				compatible =3D "snps,dw-apb-gpio";=0A=
>>> +				reg =3D <0x50200000 0x80>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_APB0>,=0A=
>>> +					 <&sysclk K210_CLK_GPIO>;=0A=
>>> +				clock-names =3D "bus", "db";=0A=
>>> +				resets =3D <&sysrst K210_RST_GPIO>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +=0A=
>>> +				gpio1_0: gpio-port@0 {=0A=
>>> +					#gpio-cells =3D <2>;=0A=
>>> +					#interrupt-cells =3D <2>;=0A=
>>> +					compatible =3D "snps,dw-apb-gpio-port";=0A=
>>> +					reg =3D <0>;=0A=
>>> +					interrupt-controller;=0A=
>>> +					interrupts =3D <23>;=0A=
>>> +					gpio-controller;=0A=
>>> +					ngpios =3D <8>;=0A=
>>> +				};=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			uart1: serial@50210000 {=0A=
>>> +				compatible =3D "snps,dw-apb-uart";=0A=
>>> +				reg =3D <0x50210000 0x100>;=0A=
>>> +				interrupts =3D <11>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_UART1>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "baudclk", "apb_pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_UART1>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				reg-shift =3D <2>;=0A=
>>> +				dcd-override;=0A=
>>> +				dsr-override;=0A=
>>> +				cts-override;=0A=
>>> +				ri-override;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			uart2: serial@50220000 {=0A=
>>> +				compatible =3D "snps,dw-apb-uart";=0A=
>>> +				reg =3D <0x50220000 0x100>;=0A=
>>> +				interrupts =3D <12>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_UART2>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "baudclk", "apb_pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_UART2>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				reg-shift =3D <2>;=0A=
>>> +				dcd-override;=0A=
>>> +				dsr-override;=0A=
>>> +				cts-override;=0A=
>>> +				ri-override;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			uart3: serial@50230000 {=0A=
>>> +				compatible =3D "snps,dw-apb-uart";=0A=
>>> +				reg =3D <0x50230000 0x100>;=0A=
>>> +				interrupts =3D <13>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_UART3>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "baudclk", "apb_pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_UART3>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				reg-shift =3D <2>;=0A=
>>> +				dcd-override;=0A=
>>> +				dsr-override;=0A=
>>> +				cts-override;=0A=
>>> +				ri-override;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			spi2: spi@50240000 {=0A=
>>> +				compatible =3D "canaan,k210-spi";=0A=
>>> +				spi-slave;=0A=
>>> +				reg =3D <0x50240000 0x100>;=0A=
>>> +				interrupts =3D <3>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_SPI2>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "ssi_clk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_SPI2>;=0A=
>>> +				spi-max-frequency =3D <25000000>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2s0: i2s@50250000 {=0A=
>>> +				compatible =3D "snps,designware-i2s";=0A=
>>> +				reg =3D <0x50250000 0x200>;=0A=
>>> +				interrupts =3D <5>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2S0>;=0A=
>>> +				clock-names =3D "i2sclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2S0>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			apu0: sound@520250200 {=0A=
>>> +				compatible =3D "canaan,k210-apu";=0A=
>>> +				reg =3D <0x50250200 0x200>;=0A=
>>=0A=
>> The unit-address and 'reg' value don't match.=0A=
> =0A=
> Good catch. The unit address should be 50250200.=0A=
=0A=
Fixed.=0A=
=0A=
> =0A=
>>=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2s1: i2s@50260000 {=0A=
>>> +				compatible =3D "snps,designware-i2s";=0A=
>>> +				reg =3D <0x50260000 0x200>;=0A=
>>> +				interrupts =3D <6>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2S1>;=0A=
>>> +				clock-names =3D "i2sclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2S1>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2s2: i2s@50270000 {=0A=
>>> +				compatible =3D "snps,designware-i2s";=0A=
>>> +				reg =3D <0x50270000 0x200>;=0A=
>>> +				interrupts =3D <7>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2S2>;=0A=
>>> +				clock-names =3D "i2sclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2S2>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2c0: i2c@50280000 {=0A=
>>> +				compatible =3D "snps,designware-i2c";=0A=
>>> +				reg =3D <0x50280000 0x100>;=0A=
>>> +				interrupts =3D <8>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2C0>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "ref", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2C0>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2c1: i2c@50290000 {=0A=
>>> +				compatible =3D "snps,designware-i2c";=0A=
>>> +				reg =3D <0x50290000 0x100>;=0A=
>>> +				interrupts =3D <9>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2C1>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "ref", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2C1>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			i2c2: i2c@502A0000 {=0A=
>>=0A=
>> Again, lowercase hex.=0A=
>>=0A=
>>> +				compatible =3D "snps,designware-i2c";=0A=
>>> +				reg =3D <0x502A0000 0x100>;=0A=
>>> +				interrupts =3D <10>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_I2C2>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "ref", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_I2C2>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			fpioa: pinmux@502B0000 {=0A=
>>> +				compatible =3D "canaan,k210-fpioa";=0A=
>>> +				reg =3D <0x502B0000 0x100>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_FPIOA>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "ref", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_FPIOA>;=0A=
>>> +				canaan,k210-sysctl-power =3D <&sysctl 108>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			sha256: sha256@502C0000 {=0A=
>>> +				compatible =3D "canaan,k210-sha256";=0A=
>>> +				reg =3D <0x502C0000 0x100>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_SHA>;=0A=
>>> +				resets =3D <&sysrst K210_RST_SHA>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			timer0: timer@502D0000 {=0A=
>>> +				compatible =3D "snps,dw-apb-timer";=0A=
>>> +				reg =3D <0x502D0000 0x100>;=0A=
>>> +				interrupts =3D <14 15>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_TIMER0>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "timer", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_TIMER0>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			timer1: timer@502E0000 {=0A=
>>> +				compatible =3D "snps,dw-apb-timer";=0A=
>>> +				reg =3D <0x502E0000 0x100>;=0A=
>>> +				interrupts =3D <16 17>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_TIMER1>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "timer", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_TIMER1>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			timer2: timer@502F0000 {=0A=
>>> +				compatible =3D "snps,dw-apb-timer";=0A=
>>> +				reg =3D <0x502F0000 0x100>;=0A=
>>> +				interrupts =3D <18 19>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_TIMER2>,=0A=
>>> +					 <&sysclk K210_CLK_APB0>;=0A=
>>> +				clock-names =3D "timer", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_TIMER2>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		apb1: bus@50400000 {=0A=
>>> +			#address-cells =3D <1>;=0A=
>>> +			#size-cells =3D <1>;=0A=
>>> +			compatible =3D "simple-pm-bus";=0A=
>>> +			ranges;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_APB1>;=0A=
>>> +=0A=
>>> +			wdt0: watchdog@50400000 {=0A=
>>> +				compatible =3D "snps,dw-wdt";=0A=
>>> +				reg =3D <0x50400000 0x100>;=0A=
>>> +				interrupts =3D <21>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_WDT0>,=0A=
>>> +					 <&sysclk K210_CLK_APB1>;=0A=
>>> +				clock-names =3D "tclk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_WDT0>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			wdt1: watchdog@50410000 {=0A=
>>> +				compatible =3D "snps,dw-wdt";=0A=
>>> +				reg =3D <0x50410000 0x100>;=0A=
>>> +				interrupts =3D <22>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_WDT1>,=0A=
>>> +					 <&sysclk K210_CLK_APB1>;=0A=
>>> +				clock-names =3D "tclk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_WDT1>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			otp0: nvmem@50420000 {=0A=
>>> +				#address-cells =3D <1>;=0A=
>>> +				#size-cells =3D <1>;=0A=
>>> +				compatible =3D "canaan,k210-otp";=0A=
>>> +				reg =3D <0x50420000 0x100>,=0A=
>>> +				      <0x88000000 0x20000>;=0A=
>>> +				reg-names =3D "reg", "mem";=0A=
>>> +				clocks =3D <&sysclk K210_CLK_ROM>;=0A=
>>> +				resets =3D <&sysrst K210_RST_ROM>;=0A=
>>> +				read-only;=0A=
>>> +				status =3D "disabled";=0A=
>>=0A=
>> Your disabled nodes seem a bit excessive. A device should really only be=
=0A=
>> disabled if it's a board level decision to use or not. I'd assume the=0A=
>> OTP is always there and usable.=0A=
> =0A=
> It's disabled because there is no driver for it (yet). Though see below=
=0A=
> for the reasoning behind this.=0A=
> =0A=
>>> +=0A=
>>> +				/* Bootloader */=0A=
>>> +				firmware@00000 {=0A=
>>=0A=
>> Drop leading 0s.=0A=
>>=0A=
>> Is this memory mapped? If so, you are missing 'ranges' in the parent to=
=0A=
>> make it translateable.=0A=
> =0A=
> Yes, there should be ranges.=0A=
> =0A=
> Though I am not sure that the ROM is controllable from this OTP...=0A=
> =0A=
> Perhaps it should be its own node.=0A=
=0A=
Not sures what to do here... I added "ranges;" to the node. Is that enough =
? Or=0A=
should the range for each child be defined ?=0A=
=0A=
> =0A=
>>=0A=
>>> +					reg =3D <0x00000 0xC200>;=0A=
>>> +				};=0A=
>>> +=0A=
>>> +				/*=0A=
>>> +				 * config string as described in RISC-V=0A=
>>> +				 * privileged spec 1.9=0A=
>>> +				 */=0A=
>>> +				config-1-9@1c000 {=0A=
>>> +					reg =3D <0x1C000 0x1000>;=0A=
>>> +				};=0A=
>>> +=0A=
>>> +				/*=0A=
>>> +				 * Device tree containing only registers,=0A=
>>> +				 * interrupts, and cpus=0A=
>>> +				 */=0A=
>>> +				fdt@1d000 {=0A=
>>> +					reg =3D <0x1D000 0x2000>;=0A=
>>> +				};=0A=
>>> +=0A=
>>> +				/* CPU/ROM credits */=0A=
>>> +				credits@1f000 {=0A=
>>> +					reg =3D <0x1F000 0x1000>;=0A=
>>> +				};=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			dvp0: camera@50430000 {=0A=
>>> +				compatible =3D "canaan,k210-dvp";=0A=
>>=0A=
>> No documented. Seems to be several of them.=0A=
> =0A=
> Correct. At some point there may be drivers. But there is no=0A=
> authoritative information (memory map, list of registers, list of=0A=
> interrupts) outside of source code for this board.=0A=
> =0A=
>>=0A=
>>> +				reg =3D <0x50430000 0x100>;=0A=
>>> +				interrupts =3D <24>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_DVP>;=0A=
>>> +				resets =3D <&sysrst K210_RST_DVP>;=0A=
>>> +				canaan,k210-misc-offset =3D <&sysctl 84>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			sysctl: syscon@50440000 {=0A=
>>> +				compatible =3D "canaan,k210-sysctl",=0A=
>>> +					     "syscon", "simple-mfd";=0A=
>>> +				reg =3D <0x50440000 0x100>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_APB1>;=0A=
>>> +				clock-names =3D "pclk";=0A=
>>> +=0A=
>>> +				sysclk: clock-controller {=0A=
>>> +					#clock-cells =3D <1>;=0A=
>>> +					compatible =3D "canaan,k210-clk";=0A=
>>> +					clocks =3D <&in0>;=0A=
>>> +				};=0A=
>>> +=0A=
>>> +				sysrst: reset-controller {=0A=
>>> +					compatible =3D "canaan,k210-rst";=0A=
>>> +					#reset-cells =3D <1>;=0A=
>>> +				};=0A=
>>> +=0A=
>>> +				reboot: syscon-reboot {=0A=
>>> +					compatible =3D "syscon-reboot";=0A=
>>> +					regmap =3D <&sysctl>;=0A=
>>> +					offset =3D <48>;=0A=
>>> +					mask =3D <1>;=0A=
>>> +					value =3D <1>;=0A=
>>> +				};=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			aes0: aes@50450000 {=0A=
>>> +				compatible =3D "canaan,k210-aes";=0A=
>>> +				reg =3D <0x50450000 0x100>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_AES>;=0A=
>>> +				resets =3D <&sysrst K210_RST_AES>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			rtc: rtc@50460000 {=0A=
>>> +				compatible =3D "canaan,k210-rtc";=0A=
>>> +				reg =3D <0x50460000 0x100>;=0A=
>>> +				clocks =3D <&in0>;=0A=
>>> +				resets =3D <&sysrst K210_RST_RTC>;=0A=
>>> +				interrupts =3D <20>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +		};=0A=
>>> +=0A=
>>> +		apb2: bus@52000000 {=0A=
>>> +			#address-cells =3D <1>;=0A=
>>> +			#size-cells =3D <1>;=0A=
>>> +			compatible =3D "simple-pm-bus";=0A=
>>> +			ranges;=0A=
>>> +			clocks =3D <&sysclk K210_CLK_APB2>;=0A=
>>> +=0A=
>>> +			spi0: spi@52000000 {=0A=
>>> +				#address-cells =3D <1>;=0A=
>>> +				#size-cells =3D <0>;=0A=
>>> +				compatible =3D "canaan,k210-spi";=0A=
>>> +				reg =3D <0x52000000 0x100>;=0A=
>>> +				interrupts =3D <1>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_SPI0>,=0A=
>>> +					 <&sysclk K210_CLK_APB2>;=0A=
>>> +				clock-names =3D "ssi_clk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_SPI0>;=0A=
>>> +				reset-names =3D "spi";=0A=
>>> +				spi-max-frequency =3D <25000000>;=0A=
>>> +				num-cs =3D <4>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			spi1: spi@53000000 {=0A=
>>> +				#address-cells =3D <1>;=0A=
>>> +				#size-cells =3D <0>;=0A=
>>> +				compatible =3D "canaan,k210-spi";=0A=
>>> +				reg =3D <0x53000000 0x100>;=0A=
>>> +				interrupts =3D <2>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_SPI1>,=0A=
>>> +					 <&sysclk K210_CLK_APB2>;=0A=
>>> +				clock-names =3D "ssi_clk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_SPI1>;=0A=
>>> +				reset-names =3D "spi";=0A=
>>> +				spi-max-frequency =3D <25000000>;=0A=
>>> +				num-cs =3D <4>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>> +=0A=
>>> +			spi3: spi@54000000 {=0A=
>>> +				#address-cells =3D <1>;=0A=
>>> +				#size-cells =3D <0>;=0A=
>>> +				compatible =3D "snps,dwc-ssi-1.01a";=0A=
>>> +				reg =3D <0x54000000 0x200>;=0A=
>>> +				interrupts =3D <4>;=0A=
>>> +				clocks =3D <&sysclk K210_CLK_SPI3>,=0A=
>>> +					 <&sysclk K210_CLK_APB2>;=0A=
>>> +				clock-names =3D "ssi_clk", "pclk";=0A=
>>> +				resets =3D <&sysrst K210_RST_SPI3>;=0A=
>>> +				reset-names =3D "spi";=0A=
>>> +				/* Could possibly go up to 200 MHz */=0A=
>>> +				spi-max-frequency =3D <100000000>;=0A=
>>> +				num-cs =3D <4>;=0A=
>>> +				reg-io-width =3D <4>;=0A=
>>> +				status =3D "disabled";=0A=
>>> +			};=0A=
>>>   		};=0A=
>>>   	};=0A=
>>>   };=0A=
>>> diff --git a/arch/riscv/boot/dts/canaan/k210_generic.dts b/arch/riscv/b=
oot/dts/canaan/k210_generic.dts=0A=
>>> new file mode 100644=0A=
>>> index 000000000000..396c8ca4d24d=0A=
>>> --- /dev/null=0A=
>>> +++ b/arch/riscv/boot/dts/canaan/k210_generic.dts=0A=
>>> @@ -0,0 +1,46 @@=0A=
>>> +// SPDX-License-Identifier: GPL-2.0+=0A=
>>> +/*=0A=
>>> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>=0A=
>>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.=
=0A=
>>> + */=0A=
>>> +=0A=
>>> +/dts-v1/;=0A=
>>> +=0A=
>>> +#include "k210.dtsi"=0A=
>>> +=0A=
>>> +#include <dt-bindings/gpio/gpio.h>=0A=
>>> +#include <dt-bindings/input/input.h>=0A=
>>> +=0A=
>>> +/ {=0A=
>>> +	model =3D "Kendryte K210 generic";=0A=
>>> +	compatible =3D "canaan,kendryte-k210";=0A=
>>> +=0A=
>>> +	chosen {=0A=
>>> +		bootargs =3D "earlycon console=3DttySIF0";=0A=
>>> +		stdout-path =3D "serial0:115200n8";=0A=
>>> +	};=0A=
>>> +};=0A=
>>> +=0A=
>>> +&fpioa {=0A=
>>> +	pinctrl-0 =3D <&jtag_pins>;=0A=
>>> +	pinctrl-names =3D "default";=0A=
>>> +	status =3D "okay";=0A=
>>> +=0A=
>>> +	jtag_pins: jtag-pinmux {=0A=
>>> +		pinmux =3D <K210_FPIOA(0, K210_PCF_JTAG_TCLK)>,=0A=
>>> +			 <K210_FPIOA(1, K210_PCF_JTAG_TDI)>,=0A=
>>> +			 <K210_FPIOA(2, K210_PCF_JTAG_TMS)>,=0A=
>>> +			 <K210_FPIOA(3, K210_PCF_JTAG_TDO)>;=0A=
>>> +	};=0A=
>>> +=0A=
>>> +	uarths_pins: uarths-pinmux {=0A=
>>> +		pinmux =3D <K210_FPIOA(4, K210_PCF_UARTHS_RX)>,=0A=
>>> +			 <K210_FPIOA(5, K210_PCF_UARTHS_TX)>;=0A=
>>> +	};=0A=
>>> +};=0A=
>>> +=0A=
>>> +&uarths0 {=0A=
>>> +	pinctrl-0 =3D <&uarths_pins>;=0A=
>>> +	pinctrl-names =3D "default";=0A=
>>> +	status =3D "okay";=0A=
>>> +};=0A=
>>> diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings=
/clock/k210-clk.h=0A=
>>> index a48176ad3c23..b2de702cbf75 100644=0A=
>>> --- a/include/dt-bindings/clock/k210-clk.h=0A=
>>> +++ b/include/dt-bindings/clock/k210-clk.h=0A=
>>> @@ -9,7 +9,6 @@=0A=
>>>   /*=0A=
>>>    * Kendryte K210 SoC clock identifiers (arbitrary values).=0A=
>>>    */=0A=
>>> -#define K210_CLK_ACLK	0=0A=
>>>   #define K210_CLK_CPU	0=0A=
>>>   #define K210_CLK_SRAM0	1=0A=
>>>   #define K210_CLK_SRAM1	2=0A=
>>> -- =0A=
>>> 2.29.2=0A=
>>>=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
