Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4700C314356
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 23:57:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231532AbhBHW4s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 17:56:48 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:20959 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbhBHW4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 17:56:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612825990; x=1644361990;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=ZbO5tX4OqWlF2QnuoUZu7oEX5qW1dIPxHLp+WTIJHV0=;
  b=Y2b/kNkoGECE47YedclVciV00FWwKIOwuE95gatapphrb2K+tjI469Dp
   7rFcCCSYzoSwMuvEc+srW0JUAsil5xch1vi9inkZOsOblt743Qoglz+k0
   tRCV+k7SSmKgTvNWSosEPEHooAj6p56l/USs9KzwlUU4wqAj83c/tJNgo
   KbrD7optJkbdzn4cjah6+WgdCDACFbxxdqiVGr6he4RqAvPwyVkkSIo2q
   VB2AOksXTkngqZtpyO2Ht2iwtBREBIypX/FsykHxR0oSZozR4IlgXw88a
   CXIDz8Xviu6g5wu0DvYeDs46ME4/DxNmE1GDDpATIRnc1tb0nVTJxcOvB
   g==;
IronPort-SDR: H7ChgdvHd5URvpKFACIYerOCC3eWPUvIt33d0GJ6YGktPuf4TC3MZ4thUGvWtRatPlo5fv85/d
 e50hTCtAyEvnidm9kclbdbqLQYPvl76aY4dTU66vkYyHgIbhkJxKC3RTKkR3x750/KPNjAaEkz
 RDQEE3gngooU2iPwcKAE7kZNs4l5UmQMlhZwxDTTRuW0WT+mtzynQvJ+Hu3XE0OMcZ/jD6meHz
 pmmp1jQOiEZ8bPHUVNlwuvFMvNzC51kF5aoQjnJK2M3+AmZ8TdqaIHiBd4jc+w8YFHj/eD+esh
 EQQ=
X-IronPort-AV: E=Sophos;i="5.81,163,1610380800"; 
   d="scan'208";a="263591766"
Received: from mail-co1nam11lp2175.outbound.protection.outlook.com (HELO NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.175])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 07:11:29 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P++N5hUGhRNhw0lg0tHMov+LRttGV/OX6Y5nU503+RkIwQa6G6+CIOqSv7ft2qDMIrGAtavo5iCWK/dxbNwzYfH1uBuWBg3YTZDzL9lYFLtlw/v9Wvwq8jsPnmkaGmLgSmkGYQpDC+rtboN/v+5Uf3cfMBzJ5Mp8fh0HLpANBuY7g2fAArSBvH7q6hbWoUD7hdIUC6gexwM0EjgwLnJM0u4GX196/m8+yxr9zUctqSNl/np0B5SCcdqEx6M2kCwu5xtytiqiy308ruZ7dPeaGlF1a2xGiLc2ZpJUkUlPfajovK1xwpxLRV3ZJ8MVbEAaT3E8zQdCIu0QITLIuoI/0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yGedMC+RcXDHnKcDG1yzWNbST/rSrHhkJ4U18YymjM=;
 b=Q0TaXsoZXXSQIg4nOHHRhn9j0KUHDNOJaM/OyNgT0cFbHuH/fqbuu02GgxVfPvGK3AN9ovwAEwE2jVZ7SJTYFeWYLMNY8ZmIdW8wWzjTD4ACWNp+i5vlNbVYmb7HpGMWoUCJwS+KMT5ww3fUqdlK/mtiCk4Ne7ID833QBj34nmi5EWQRqmJREp5MGrGqXBsOi8L/x972X9HkuoicZqXA8dS6C90Hr+cUmDG5niohgGq7HXm5VHIdOEPt/82+9PCsGK9PM6hYgWRQs3u2op6OohmYQqWRa8W/4BT+DMkeGAa8gfeloPRVNDWCGELLBoBzrtz8XknLQdathp4IBgZXRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yGedMC+RcXDHnKcDG1yzWNbST/rSrHhkJ4U18YymjM=;
 b=vz6dXmSy/057LpzXJ3ltZBYEpLnAIHIos/fX4TT3gwWWOY3C041tAXRioAAVeGU+hTAeD1MLdeJNeqFBeIGbsRbioRav4CRDcUhFyihfJhiBC7Ef83mPONuQzbOvPjhAZG/03aOC3MlV2IpOEWieG8EngK4NX3V/mYfrC3OeqnY=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB7070.namprd04.prod.outlook.com (2603:10b6:208:1e1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Mon, 8 Feb
 2021 22:55:35 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 22:55:35 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Sean Anderson <seanga2@gmail.com>, Rob Herring <robh@kernel.org>
CC:     "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Topic: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Index: AQHW+4xeGC09t/jMzkSSVnIpB80beA==
Date:   Mon, 8 Feb 2021 22:55:35 +0000
Message-ID: <BL0PR04MB6514747C7AD8FA7E56D61CB9E78F9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
 <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
 <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
 <a924468e-9d6e-d66f-403c-77d7e0422651@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:f420:fabe:ea5e:e152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2fc2f796-2379-4e96-d53e-08d8cc84a5a1
x-ms-traffictypediagnostic: MN2PR04MB7070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB70706C9CD10F821ED050D88CE78F9@MN2PR04MB7070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UFdfUnNDAXpSIEDFGoLqRTguSRWTtWbW2lgKi138tu2lbGq5nvhZUYt5JCf7qYovLELa5sj9chP3zSu4JJT2V8znmCh5Uei44l2wFKI263Q2YJSPrz8m1+kwNAPST7qvHsHjLtwPP+O3+rgAQK0cCY4ErwlrOo7Dd7KdqLR7O/3lr6zNM/vM0TAIZ5Q39jJJtybbHESonihObiNoR2DFHGErg67eApBe95hYfHfY3eoCp1VkTKXFgqDChnKdN94GynD6mMrjWLbTLQhtT+o2H9BCJRHRB1sX1Kl1LFSUvK9o/U1ojtWUhgkeNahyC0lqODdrE4JPhNqyBFBTpdKmHU84P5PzG+/1rqKwW0ykKUTrOleJ3qNIl1lzTkfsIf/UStTU1JQrV12Q7OzilZcFrStT2ZRiUqsq2wAGjiudaTWlRbY+nG+huecswfC2kSxO+Axsv5pY2KQiZkpclCl8vxxACTR2DUPpohYYymyNND8AF7QyPoBVLekEuPeT2vgVTBsjJtSNnU1zkfs77eXLgQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(2906002)(54906003)(53546011)(6506007)(110136005)(8936002)(316002)(8676002)(55016002)(83380400001)(33656002)(186003)(4326008)(7696005)(66476007)(9686003)(5660300002)(478600001)(52536014)(76116006)(91956017)(64756008)(66556008)(66946007)(66446008)(86362001)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?giW0gYrPnAo4kYWdh0TA6GKkdcvmX28v+0hj4kMSOQL9Ad0UUuwm8Sc/Bofq?=
 =?us-ascii?Q?h48MnI8h/YZHUwUf6znmU9C/YciAPTwjyPST0Q+fF7j7Lk5ZZFPOidCU1RDc?=
 =?us-ascii?Q?6eFZJ49oKb3nRD2QhoyII4RGXbDNYtEZwZZ5BxT4Vso94/dIZVoHfK13M/Tx?=
 =?us-ascii?Q?JCDEdUZRozuWCCrXgZu7JYrTqNhay9v3xU4WB2PQJufxBQdS5kiUQ9n3wpAM?=
 =?us-ascii?Q?McEWWr8ejzb4Y9gR8Njil1wfpUWbIVw18CbqJFQdns4q7eOIZDSRPaBy/Zsy?=
 =?us-ascii?Q?qj8pvgt6LBsYzNV7sCHluaGMJgoFNv+QGTD6iSvihqgnLZ7iDBfPPEjK0ZvV?=
 =?us-ascii?Q?tV/w6Rfqxlxz+cLKqQRlCA1+rjoTEKk3xq+bAaT40rjVwsTuRBgLtzAUwuBu?=
 =?us-ascii?Q?XJEUT03pyADpDqrMhk2lnNmK1U1h1iAidaykbqRFp9UzditSCQ2p4mcS8Edr?=
 =?us-ascii?Q?jpuiMBu8cFQ/fd3FKY+2L9bLJLozlnR1ueuXpq0b0VmHdRPw+ug0xCdmx2FS?=
 =?us-ascii?Q?yH2apIZLhw87X94cMt/ZUipG0cb/2RmUVb7uW/ReH4iF2dB1pKTSf3YzCpQs?=
 =?us-ascii?Q?taKzwMar56v6qMa5fl3KtS5O9JR15xkA5cgPcTfpHS1OiQb7i4c3cbvybC0g?=
 =?us-ascii?Q?uVOqJIopskLV2j8n7nGMnrjsM3Ia/dc3dhehX2Oz3I7tkYSFXH6T2RqIyTOH?=
 =?us-ascii?Q?7SBSX/FZ0TnWmmr5LqphUCVCc8ev2ZR7eP73cZq1zgpaVaFnLUHfEaSQGIe1?=
 =?us-ascii?Q?0WvcrnImeIoZGUSMdP5LF8dVZ97G8d1eEIXP7nyk9svhSyLqaaaYavBeDQwU?=
 =?us-ascii?Q?IoyBR8RJFY6PIccq3KbnBfY1sL8MOj3JujlXeq5SHGDXOpJlPzkVqymSSCSp?=
 =?us-ascii?Q?aDKxYUw7hOO/pxNldeVtbWQtsnJF/ZldQIl8izBPPcstE9TceG3MhQQSqMrS?=
 =?us-ascii?Q?QuqfcaHqMfO7H38X/M+mLcfJ3niVhwvpp+xhkumIUauw2PzzFqsC1h5vdAT/?=
 =?us-ascii?Q?mKG/EfmPi2RtktVyiX5JvEBNc3LEY6bIrfgJco/SahKQOnYlypiTUMxM83NV?=
 =?us-ascii?Q?lCpEjZyg8W2O3LH8kYYYXlum8mZXRJ7rBU/7SLa6zPiVUkh3l/+AwaKM5Qhf?=
 =?us-ascii?Q?p1gKZZszm+D5d1ursu/KEMstDAdZBPBPKHF64JBg0BmK5JHwCnIlg7z3uCWy?=
 =?us-ascii?Q?/WmEdcDclpsTRbAC/wpmdJl8iywNZaHx22o7a09z8vlwNpV2mNlYrfFv67Ou?=
 =?us-ascii?Q?z+DXIrgxt7VFepKBo74hh9f9hGUrMXSrIFBjmLMw87XWU91MoKghaprczy44?=
 =?us-ascii?Q?PzfgH8m0p9siZRs2m/s8LETl/fOQ1UqRE17dqYvdtxZRHfONuT5vBcb2vn//?=
 =?us-ascii?Q?qsLR8THbdstzdUkj5cVdq6MScjfCtPhdqQLOX/txF75jbU4nqA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fc2f796-2379-4e96-d53e-08d8cc84a5a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2021 22:55:35.8176
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZgy9+BsgE7PvlpmdOm1ddc2JFh/666E1h7bL5YMb6m6cu73qVzeQJxyOePaifaufxZHyoJ5YbVRvoo62VovFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7070
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/09 7:53, Sean Anderson wrote:=0A=
> On 2/8/21 3:00 PM, Rob Herring wrote:=0A=
>> On Fri, Feb 5, 2021 at 6:13 PM Damien Le Moal <Damien.LeMoal@wdc.com> wr=
ote:=0A=
>>>=0A=
>>> On Fri, 2021-02-05 at 14:25 -0600, Rob Herring wrote:=0A=
>>> [...]=0A=
>>>>> +                   otp0: nvmem@50420000 {=0A=
>>>>> +                           #address-cells =3D <1>;=0A=
>>>>> +                           #size-cells =3D <1>;=0A=
>>>>> +                           compatible =3D "canaan,k210-otp";=0A=
>>>>> +                           reg =3D <0x50420000 0x100>,=0A=
>>>>> +                                 <0x88000000 0x20000>;=0A=
>>>>> +                           reg-names =3D "reg", "mem";=0A=
>>>>> +                           clocks =3D <&sysclk K210_CLK_ROM>;=0A=
>>>>> +                           resets =3D <&sysrst K210_RST_ROM>;=0A=
>>>>> +                           read-only;=0A=
>>>>> +                           status =3D "disabled";=0A=
>>>>=0A=
>>>> Your disabled nodes seem a bit excessive. A device should really only =
be=0A=
>>>> disabled if it's a board level decision to use or not. I'd assume the=
=0A=
>>>> OTP is always there and usable.=0A=
>>>=0A=
>>> Please see below.=0A=
>>>=0A=
>>>>=0A=
>>>>> +=0A=
>>>>> +                           /* Bootloader */=0A=
>>>>> +                           firmware@00000 {=0A=
>>>>=0A=
>>>> Drop leading 0s.=0A=
>>>>=0A=
>>>> Is this memory mapped? If so, you are missing 'ranges' in the parent t=
o=0A=
>>>> make it translateable.=0A=
>>>>=0A=
>>>>> +                                   reg =3D <0x00000 0xC200>;=0A=
>>>>> +                           };=0A=
>>>>> +=0A=
>>>>> +                           /*=0A=
>>>>> +                            * config string as described in RISC-V=
=0A=
>>>>> +                            * privileged spec 1.9=0A=
>>>>> +                            */=0A=
>>>>> +                           config-1-9@1c000 {=0A=
>>>>> +                                   reg =3D <0x1C000 0x1000>;=0A=
>>>>> +                           };=0A=
>>>>> +=0A=
>>>>> +                           /*=0A=
>>>>> +                            * Device tree containing only registers,=
=0A=
>>>>> +                            * interrupts, and cpus=0A=
>>>>> +                            */=0A=
>>>>> +                           fdt@1d000 {=0A=
>>>>> +                                   reg =3D <0x1D000 0x2000>;=0A=
>>>>> +                           };=0A=
>>>>> +=0A=
>>>>> +                           /* CPU/ROM credits */=0A=
>>>>> +                           credits@1f000 {=0A=
>>>>> +                                   reg =3D <0x1F000 0x1000>;=0A=
>>>>> +                           };=0A=
>>>>> +                   };=0A=
>>>>> +=0A=
>>>>> +                   dvp0: camera@50430000 {=0A=
>>>>> +                           compatible =3D "canaan,k210-dvp";=0A=
>>>>=0A=
>>>> No documented. Seems to be several of them.=0A=
>>>=0A=
>>> There are no Linux drivers for these undocumented nodes. That is why I =
did not=0A=
>>> add any documentation.=0A=
>>=0A=
>> Documentation is required when dts files OR Linux drivers use them.=0A=
>>=0A=
>>> make dtbs_check does not complain about that as long as=0A=
>>> the nodes are marked disabled.=0A=
>>=0A=
>> 'disabled' should only turn off required properties missing checks.=0A=
>> Undocumented compatible strings checks are about to get turned on now=0A=
>> that I've made it work without false positives.=0A=
>>=0A=
>>> I kept these nodes to have the DTS in sync with=0A=
>>> U-Boot which has them.=0A=
>>=0A=
>> That's a worthwhile goal. Doesn't u-boot require documenting bindings?=
=0A=
> =0A=
> Generally, no. Usually if the bindings differ from the kernel they are=0A=
> documented, but usually the device trees are just imported straight from=
=0A=
> the kernel. This is a bit of an unusual case in that the device tree is=
=0A=
> being imported from U-Boot instead of the other way around.=0A=
> =0A=
>>=0A=
>>> Keeping them also creates documentation for the SoC=0A=
>>> since this device tree is more detailed than the SoC specsheet...=0A=
>>=0A=
>> It's already 'documented' in u-boot it seems...=0A=
> =0A=
> I would like to keep Kernel and U-Boot device trees in-sync. However, if=
=0A=
> there are significant divergences, that becomes more difficult.=0A=
=0A=
Sean,=0A=
=0A=
Are you OK with removing the nodes without a driver ? I think they are the =
same=0A=
for the kernel and U-Boot but I have not checked in detail.=0A=
=0A=
> =0A=
> --Sean=0A=
> =0A=
>>=0A=
>> Rob=0A=
>>=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
