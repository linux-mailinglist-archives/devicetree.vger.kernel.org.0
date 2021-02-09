Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B7B93144B2
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 01:13:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbhBIANg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 19:13:36 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:20394 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbhBIANf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 19:13:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612829614; x=1644365614;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=rO/aF9n4fxH00COtJzMqKJoYnsKc6I8pfyjnydn4vEk=;
  b=KAlmzHOyJpFSuUx+qDgzWfqaDbNV5TqTsqZUqYpbX1cQwskIt02FrPO5
   uiEA6HBZKhTFW2ARkOyGMOZ9GIeNVx/z/5RE1nIYKAYZ+Scg4SqvuEaJL
   1SlLIc7DwcYipmoWXXGBBi+hqrOdbVjZTen8PjVkSt4Z4+PTUjsbE7SC4
   REncPViYkcARTO8DzbJ7sNBNNk3xZT7UGUouJeyh1Lf7Mi6sYWe+7ANfw
   KTLx6AHDSHOZAYCyNqLK8D7naZntZLpaCnBXuLSzY1vPzE0r3+dkLgXue
   lOZ68RZv76SmMh39qJP616sXezQI2ZoBbZjIt2ZRBN08FnxMpFYhCCeZx
   g==;
IronPort-SDR: MrXtvUP8+UoZMXx11xymA+u+1oVgcU0bFax11u6YpyECNlQ0xBFaOxHxihLBiLZvSlWjlPp7WY
 lH0NswquC41YjBTDa3Yd1SIJ6VBgZxnTrQpPYXXoUqgv45xSIPt00x3O9VbGOQD9sCp03tGF03
 UNcSg9Z860d1aPw8gTMZxWynncJqlbVQtNThAsZmeFbchUaopfLe4T72E2IGGFr4Mpk0gL5p5X
 u/S37c8P1WLwLKAfNqIgrYYJrFrYIeOW0MYbfKbLbZ0BV8+sDLR38Yh/r41fb6rPgMftyRm85N
 nB8=
X-IronPort-AV: E=Sophos;i="5.81,163,1610380800"; 
   d="scan'208";a="163947997"
Received: from mail-bn7nam10lp2106.outbound.protection.outlook.com (HELO NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.106])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 08:12:27 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OI6itkZfkFBcDiPgSBSA53Z5H6jLjfnGmyFcrJ4mP889XNZPz9wCNLAHZGlVnDXcBtATAWL9Qr6MgY/Bal98P/zRj9UtvP5Si0H8jisqICvvsv2eHXYSCkDw4h8HAajnj0+9swiC+ysuoS7aOQs2L7nI/UzGdA6macTlAov6Z9tsdEFxXaELDil4WVZvHssFZA9TIY5C6smcIqJlQ3yEPd/yJvtiyRwWJOlfuXR0AbxOGiOOGR0Rh/MBJIHBHkRZjsqlyrBTNYdGm3DG5GICIEJ93COpBbamMjgz19BuWOums1HbOAx8/4/z9FwL2y7IB+dNj1+Rnby4482wTvr1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZotScWMt7wvaCT/hhhY0zfPyqf7EcpaBtbTyVMtr4mo=;
 b=mB5pige70FcijXBREoCnvo2SOfcH8hE7rAV9JavZeCda/a6XkjsvCjCYaI+tcRk7Xit83zfJWyA5FkO6E/Db/Jt9wX3pSWEc7Y3iYTA2MbtaRbcbf2vx8PUtpvdyehtTJJAHV8R6ThLTsR4yG6clwyy7CvVbd01ecJu+lN+6hDqKExLbUzZRYe3qDDoFsw5SMUIVpJqZhuhrqAZ7JBilKq+O6zLPvs22LF8kOepKVTb/v0oXwoJl+yTzGM0DEQ4v6ZASEOamYKgbnusERAW/bGhH8KG4rx+Y0yeI0HQaC+L4/IGu8V2RQvFh2rpnhidiifN+TeNtS9sY3Q0g6HiZrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZotScWMt7wvaCT/hhhY0zfPyqf7EcpaBtbTyVMtr4mo=;
 b=G8UrHMxGR/JnnLvYieb7iF/rTRkUPHoYIeSN42mnIOLRziLcP7GAJFyiuz9B5YtQm+iI+M3Z+mQxJdG4uiIl9y6fbYbpnoMb36D4dJblDpZgzl50gKflTBxXR/iQRwjOcLDQZldq0BOthGtJUVVOFBqrJLNwxOsXfbVO/2qOR4s=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6672.namprd04.prod.outlook.com (2603:10b6:208:1e5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Tue, 9 Feb
 2021 00:12:26 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.030; Tue, 9 Feb 2021
 00:12:25 +0000
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
Date:   Tue, 9 Feb 2021 00:12:25 +0000
Message-ID: <BL0PR04MB6514520081461B1E1461ABA3E78E9@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
 <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
 <CAL_JsqLbMbMx3TLf+CPG-MdimHTz2sdzgQdmmuQkLfnsTJQAvQ@mail.gmail.com>
 <a924468e-9d6e-d66f-403c-77d7e0422651@gmail.com>
 <BL0PR04MB6514747C7AD8FA7E56D61CB9E78F9@BL0PR04MB6514.namprd04.prod.outlook.com>
 <e451a093-a37f-6078-d158-965b7fce4ebf@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:f420:fabe:ea5e:e152]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 79200ccb-490c-44a1-779f-08d8cc8f616a
x-ms-traffictypediagnostic: MN2PR04MB6672:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6672CC316615636E0C5B48C3E78E9@MN2PR04MB6672.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zxXVmQWKwzp3mZZYPyQxvkNti6t3jUUDldYgBn0S23IEihoiBumkzIjMifV5yCm+1dwvvD/ntEsSoqjsIIsxNTzuLlDZ5e/hmr0yLSAVIdijju+Neq2+fzjLRaPbpoTQbyq3zkANW/rqHMU9Eu4YVVJ1z6VkqmSw2VDzoGoUweIFO+wU3C3USbosjW8ljwx7hTcXLnTIoJrPhsVtPFjvfiqgXB0cT+xQfWqORVFY0hNczqbwoplMvprsz+cXABB4y/622om8VNKFDvb8KMiL7fjWKTVw2YppWu5K+QHig/x7UTAGCgTYhrdPzhpMoeQbgG2ECYdVn1/4sdUzbd0Olw8NCS+eNnzPUQf/Nvmm97a/Xcn3wrzafLctI3viYEV0Y8MtN7MN1QGKFqU9LDz009BjkhzUAaSCvMJgwjJkzurtrWZ2q5vb+fQr89M224gCoAuSc+qCRGNBbm4Ay8Qrw66GvrbTUOFcROCm7oSvs+hCcYQ5Ttp2bBNa+oETWiDu+Sog7iKcE6hC4UXcXJ2Y8A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(4326008)(33656002)(53546011)(6506007)(83380400001)(186003)(478600001)(7696005)(5660300002)(66476007)(15650500001)(9686003)(2906002)(8676002)(64756008)(66946007)(86362001)(316002)(66556008)(54906003)(8936002)(71200400001)(52536014)(91956017)(110136005)(76116006)(55016002)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?hpzSQ2VszRdsfYQlUecnPntSEND4Uz95g+XZSmkZNdYjV/L1IyHg2zURo7dN?=
 =?us-ascii?Q?GkJHCETpt8TNwB83m9vMryrj2Y2qv6nQkuX7aZttu004j7NzVc3ov/vHyiVW?=
 =?us-ascii?Q?3Tg5C+VFLBIv3JiJpNoB5+RBQimBgglqJT33T1XoMhxK7rx5NdosXAvSPk7W?=
 =?us-ascii?Q?jbCWdtNi546B1wiCVkyUn4XDlYUR2UDsC06ztKUbvlh6mZzwL6BQNZf+/do1?=
 =?us-ascii?Q?pF6w6cbuMwSvfZyXs+KwjoL2W0sDF6SJjfvN1jv31kk0MHle1y5qwiWnTjYI?=
 =?us-ascii?Q?EtSL6hHjt7eAEArM3RxMw48KnlEWLI99PSxdoCR+VRvxFe+VTaxXyzgdpBkY?=
 =?us-ascii?Q?zzpZj421QiWz8UiqwL9uLZv8Wmb9nyFaH1FLlAY/3HwLBmj8sSbwl+XoTQJg?=
 =?us-ascii?Q?DD413WDjEY0H0LNDrtyM0/tVFLixokBgeVMV0SZ93B7yy13xvkHhDc62tXxO?=
 =?us-ascii?Q?W/Ltp6Pu7/t0QfyBqodAKIFOWN16NcXLTMXYbClE308oTHDO482dMASPc5+W?=
 =?us-ascii?Q?i6vJ01m65OqGwfMb/b9tN0RYPg8WQ9DQo+BGkdSkpk29bUp6d9v9GUjz5Bqv?=
 =?us-ascii?Q?RW/JsHq4l+dfaZskpd235UntZRea7tf1A8iPtRawP30aG7KAOqqtgs4rdqBE?=
 =?us-ascii?Q?pPSHNprs+P/VxbMMmA3R45cy6uBo/f5Z2vSVDRnFaVsmRO+B/OLHvZvJBGwk?=
 =?us-ascii?Q?qCOTn7P8PX7MsEscaMIcbE75hXC2J8g7MQLFjacwXF4nMDdATylSij3NYOUK?=
 =?us-ascii?Q?Zx3jcWchAfsHm7YfWuoxNgvuOcHsZj4NDXac5VG8AVzDm6CzEkkgyNW+rdN4?=
 =?us-ascii?Q?P7F4FPXhtZsh3iZXBKfbcNegu+TDgiIyyYX9xtjdoLRzJkChxC4RjuCXJ6Uq?=
 =?us-ascii?Q?/ZnaxCi5ygsrv+VfiFaR+0RnkIfbP3ZYZPxnpev5FdJsg8rkIQbqTBs9yCPC?=
 =?us-ascii?Q?ysAGAUxFVKZhSagGAtf3C4wzz/rbDcM+XR3oCQ8eo7cRSexSf+dNzwkB7TYZ?=
 =?us-ascii?Q?n8b6QfjRqkI5dARsuoAMfCDIgsGhw0ZDiJ9o9VRD3rWvor2dKFln03I5DS1Z?=
 =?us-ascii?Q?FKykzpNYpBPqcl/Eaeye8R5PFis7Cnj87h8OVrtXb7RsHRFrEELcd+HO8A6/?=
 =?us-ascii?Q?kL37Dev9Q8u9ikm7ME77DKz5hejuCMuFDtvdEWUf3W7hd8nrkLfFvJSW2gQZ?=
 =?us-ascii?Q?pwdt92BHjAYFA3/EYBzeg2vSzNquO4wmaTbVQSzbNPsxEa5RNbgSHh+D5Jb1?=
 =?us-ascii?Q?wyntSpu4aYSeiBLdMearIXJEOpNGVLHCDBPSjC4ejRedX1LSSHJr2KkPH5o+?=
 =?us-ascii?Q?RTO5vZLZ/+O065jfFoxAKdly9Cs3V5wpEw2rfv/2rhOo0PoYIrjOfO/ZH35F?=
 =?us-ascii?Q?m3zFRIQeNrpPfeyYHJOrPsWzFkiDtWk98Ef0r8l6W6j95/zPHA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79200ccb-490c-44a1-779f-08d8cc8f616a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2021 00:12:25.8646
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkAWNu6BrHmQeoMg3OngeKNNUp+9HDZzE9TBQCmpwBjliq8+xlMDojmkdsffeIMX7CIqxaLs1sP9h1hylX8x9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6672
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/09 8:05, Sean Anderson wrote:=0A=
> On 2/8/21 5:55 PM, Damien Le Moal wrote:=0A=
>> On 2021/02/09 7:53, Sean Anderson wrote:=0A=
>>> On 2/8/21 3:00 PM, Rob Herring wrote:=0A=
>>>> On Fri, Feb 5, 2021 at 6:13 PM Damien Le Moal <Damien.LeMoal@wdc.com> =
wrote:=0A=
>>>>>=0A=
>>>>> On Fri, 2021-02-05 at 14:25 -0600, Rob Herring wrote:=0A=
>>>>> [...]=0A=
>>>>>>> +                   otp0: nvmem@50420000 {=0A=
>>>>>>> +                           #address-cells =3D <1>;=0A=
>>>>>>> +                           #size-cells =3D <1>;=0A=
>>>>>>> +                           compatible =3D "canaan,k210-otp";=0A=
>>>>>>> +                           reg =3D <0x50420000 0x100>,=0A=
>>>>>>> +                                 <0x88000000 0x20000>;=0A=
>>>>>>> +                           reg-names =3D "reg", "mem";=0A=
>>>>>>> +                           clocks =3D <&sysclk K210_CLK_ROM>;=0A=
>>>>>>> +                           resets =3D <&sysrst K210_RST_ROM>;=0A=
>>>>>>> +                           read-only;=0A=
>>>>>>> +                           status =3D "disabled";=0A=
>>>>>>=0A=
>>>>>> Your disabled nodes seem a bit excessive. A device should really onl=
y be=0A=
>>>>>> disabled if it's a board level decision to use or not. I'd assume th=
e=0A=
>>>>>> OTP is always there and usable.=0A=
>>>>>=0A=
>>>>> Please see below.=0A=
>>>>>=0A=
>>>>>>=0A=
>>>>>>> +=0A=
>>>>>>> +                           /* Bootloader */=0A=
>>>>>>> +                           firmware@00000 {=0A=
>>>>>>=0A=
>>>>>> Drop leading 0s.=0A=
>>>>>>=0A=
>>>>>> Is this memory mapped? If so, you are missing 'ranges' in the parent=
 to=0A=
>>>>>> make it translateable.=0A=
>>>>>>=0A=
>>>>>>> +                                   reg =3D <0x00000 0xC200>;=0A=
>>>>>>> +                           };=0A=
>>>>>>> +=0A=
>>>>>>> +                           /*=0A=
>>>>>>> +                            * config string as described in RISC-V=
=0A=
>>>>>>> +                            * privileged spec 1.9=0A=
>>>>>>> +                            */=0A=
>>>>>>> +                           config-1-9@1c000 {=0A=
>>>>>>> +                                   reg =3D <0x1C000 0x1000>;=0A=
>>>>>>> +                           };=0A=
>>>>>>> +=0A=
>>>>>>> +                           /*=0A=
>>>>>>> +                            * Device tree containing only register=
s,=0A=
>>>>>>> +                            * interrupts, and cpus=0A=
>>>>>>> +                            */=0A=
>>>>>>> +                           fdt@1d000 {=0A=
>>>>>>> +                                   reg =3D <0x1D000 0x2000>;=0A=
>>>>>>> +                           };=0A=
>>>>>>> +=0A=
>>>>>>> +                           /* CPU/ROM credits */=0A=
>>>>>>> +                           credits@1f000 {=0A=
>>>>>>> +                                   reg =3D <0x1F000 0x1000>;=0A=
>>>>>>> +                           };=0A=
>>>>>>> +                   };=0A=
>>>>>>> +=0A=
>>>>>>> +                   dvp0: camera@50430000 {=0A=
>>>>>>> +                           compatible =3D "canaan,k210-dvp";=0A=
>>>>>>=0A=
>>>>>> No documented. Seems to be several of them.=0A=
>>>>>=0A=
>>>>> There are no Linux drivers for these undocumented nodes. That is why =
I did not=0A=
>>>>> add any documentation.=0A=
>>>>=0A=
>>>> Documentation is required when dts files OR Linux drivers use them.=0A=
>>>>=0A=
>>>>> make dtbs_check does not complain about that as long as=0A=
>>>>> the nodes are marked disabled.=0A=
>>>>=0A=
>>>> 'disabled' should only turn off required properties missing checks.=0A=
>>>> Undocumented compatible strings checks are about to get turned on now=
=0A=
>>>> that I've made it work without false positives.=0A=
>>>>=0A=
>>>>> I kept these nodes to have the DTS in sync with=0A=
>>>>> U-Boot which has them.=0A=
>>>>=0A=
>>>> That's a worthwhile goal. Doesn't u-boot require documenting bindings?=
=0A=
>>>=0A=
>>> Generally, no. Usually if the bindings differ from the kernel they are=
=0A=
>>> documented, but usually the device trees are just imported straight fro=
m=0A=
>>> the kernel. This is a bit of an unusual case in that the device tree is=
=0A=
>>> being imported from U-Boot instead of the other way around.=0A=
>>>=0A=
>>>>=0A=
>>>>> Keeping them also creates documentation for the SoC=0A=
>>>>> since this device tree is more detailed than the SoC specsheet...=0A=
>>>>=0A=
>>>> It's already 'documented' in u-boot it seems...=0A=
>>>=0A=
>>> I would like to keep Kernel and U-Boot device trees in-sync. However, i=
f=0A=
>>> there are significant divergences, that becomes more difficult.=0A=
>>=0A=
>> Sean,=0A=
>>=0A=
>> Are you OK with removing the nodes without a driver ? I think they are t=
he same=0A=
>> for the kernel and U-Boot but I have not checked in detail.=0A=
> =0A=
> I suppose. The 8285 uarts should be kept as iirc someone was using them.=
=0A=
> Same with i2c. WDT has a U-Boot driver, and probably has a Linux one too=
=0A=
> (I haven't checked). I believe the timers also have working drivers, but=
=0A=
> I haven't tested on Linux.=0A=
=0A=
Yep, all of these are supported and work. I used i2c a lot for my biped rob=
ot=0A=
and robot arm control. The watchdog timers also work but I did not enable t=
he=0A=
drivers by default in the kernel config.=0A=
=0A=
Preparing v18 with the updated dtsi then. I do not think we need to change =
the=0A=
dts for the boards. Will check.=0A=
=0A=
Thanks !=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
