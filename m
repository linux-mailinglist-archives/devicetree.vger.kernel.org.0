Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8123E3101A4
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 01:31:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231898AbhBEAaq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 19:30:46 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:35083 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231721AbhBEAao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 19:30:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612485044; x=1644021044;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=pVGTG51me0s2yMqfcY4gDO8vMF/Z0dCA+ss1JAjQ3aQ=;
  b=SNNRIrtOxOqGYLOVfY/VftDrsxc8fh0LImeCTFhd/XBDLV9Y3OmF0aeq
   OlR7GwP9iUShMHQ6nIeutQKC5z5cxJD1Zydd+A4Xv7VwxsFd8QdqtmXnO
   lvra3Ibz0OZHy0PPmncl0RmHlP6F5c/czzhKk/+vbFr7pvft1MHcVx8d8
   BmQVcCK4RkSQ4JfoYd6+PEXboJWu0yqA0pm2s5BuvWV7jxjrtkLW7kJr9
   E8d5Hf8HdzZtby0LNXeKJhxAxHThN/PYUlmMbB+R8ZIVYWVJGvKfFGD+F
   ylefcZ5mKejZIO8qzxBjotnZeAW3wBgrYe7tAPBmR0ZfXxtmEAbsahR6f
   Q==;
IronPort-SDR: ncXj+8Vr+B+trMxo8rWAu3d+4wTVj18FLZAmi5G+da4rxxgMGLOR9bNGKubYL/P/BR3xFmFNIb
 Ey6WCRUgq6vkfMO24yd5re+Tv2AaRN5neViws3Wn5DACBW/ltuCmfzXvpzYcjxDHIQE4OXd9o5
 p9p7IYpRB2G3pZqS9vwah14/bKGbsci/BE2eEXwPo9kjg3XMdgia/92s0eozHhgjU5eUwyU2S9
 kdgKSA8X6m6CC6G0xv8keycqI73DTeiIZ0tSGD93kIrzNVJu9G6v9Mk5mrIhZquc9tF01Pv1Y+
 fxI=
X-IronPort-AV: E=Sophos;i="5.81,153,1610380800"; 
   d="scan'208";a="159182960"
Received: from mail-mw2nam12lp2041.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.41])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 08:29:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZsVmEYuzQ0QW5sYtR54GjCRWp6BjvdZk7OJF52p7fXiNng8TAwpXIxLTE3fJAXe98XOqFWiZZx5UjII8P2Asn0wjsxP2xOGVBHsQUiecgqiM26oOB8De/st5VfB22amIuPYS+n70IxD0wHwdYBIyu62ThuAkIBkM+d5+GbyGyXV+f4jchXpfYh/5Rnb2OfOsv5chaHgG6LvWOcJ38z7hlEy8Gk9Pcj5UTwZrY3+EZDqlPEP5CpoFAgTp+v57JmFCdl6E1uvwGXMFZ5WcuZcdsaGuCeTKB4wHIjZer/LBMpl2IjLxp49beJgGKt/yXssxC1TADFbOTr+/cCwog8zYCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+gnY1wIPkw1Dfm+RQZZdC9B56upBuuxtt+eTXvHHXY=;
 b=N9OzLYHaw5KLXOQ+8ldwBcTUHcBMidtMK8/Tp7B0sDlkFFWNBjmIiL+RoRQF6seQn26Gv+Wt9PvdcmjTAc9lKhMpkn4iwdMHugVI8NK+Velf4tVAqtsAZHbtzYxC+tXba0pbTfjBzrkpfg8gZBa9ajlaJgJQJ8/ma79Iqtdw8ffMyMjhnBuZm+d1ehQTVcs0jsor5kETNJKfvfu60S1lw42Vh6lqbTIVL36tmgxMWPFIUJPp3Gw1/if7J3n9hqST2RnzWa50L4BZko745zl8Z96Ox+ABEvzkBhyyxDuuAiIXDmyIqd43lrCW3dbxBpmBmRyAtJbF08H49mdR7waBXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a+gnY1wIPkw1Dfm+RQZZdC9B56upBuuxtt+eTXvHHXY=;
 b=YT3mEs/7v+Ud+hxthi5qkagd6TqkiAwjxroUTV5v3vJeD9UBM95YmI+8pog1xbDFmuT5MM46hgWeX3LRifG4GZG8YNHyYTqNVClvZCll+O9RKAAaGbS/fTJPZkBitSa60gk/lGrIgtiDBN+pXql9i0SbarBQsEjr48dRYp7Bqtk=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6894.namprd04.prod.outlook.com (2603:10b6:208:1ec::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.21; Fri, 5 Feb
 2021 00:29:35 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%8]) with mapi id 15.20.3805.024; Fri, 5 Feb 2021
 00:29:35 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     "robh@kernel.org" <robh@kernel.org>
CC:     "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "seanga2@gmail.com" <seanga2@gmail.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
Thread-Topic: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
Thread-Index: AQHW+U9T59FA/s8Z20mcfAvTuPFEfg==
Date:   Fri, 5 Feb 2021 00:29:35 +0000
Message-ID: <BL0PR04MB6514879BEDE7FDB7C863A969E7B29@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <89cccbae5add85c7bd811f3819ea3db7061e928d.camel@wdc.com>
 <CAL_JsqJeF364bPSNQLGujNHDkA7x8H_H7YXQFNZQ7vDzdAevcA@mail.gmail.com>
 <c9d273c87815a89be314e4e824a365313be0d677.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:50f7:ee01:712b:bf92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bcc16cd5-55ea-4fe9-97e6-08d8c96d1d88
x-ms-traffictypediagnostic: MN2PR04MB6894:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6894BDA6CB560FB8CA620D55E7B29@MN2PR04MB6894.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /N4Y+sVlTCtHEP/iAGAw5XQVL5Hs4bcKkaeeod1r1iL31N2hu8YBcpsMhi3nNomDfeIqJ9PXwlZu6fj6VlS6+pdSSbdS/IV1QV9SrYdJcLVST/l7iwdgKewXAPuD15d6OtLMUUFJtwVKj7bIiStea8xYs+Hogixj0qWmpdlrHZTfbqFT3pT3es5GTpTYb25yVfog1er4H55NiHZpjkphZ18sununNAOYkZXVugq9XaI0hoo3Zqc1b6z7Had7/KDwzeiHJrwMVSx/IqbHYPxJJzNcilMldamWV4QsZ3TwXCnh1WDdnmrR5S3Lm1lM11RGKdN143J9K4Iqsc6y3a/O38XIYrY1N9zu1ivvfHGQQYWMvSjRbWg18/xnG3P4LNoRPvv8mQO6gLexRCsvIhxZq97t/1p+1BOlceTyq03wUDPndL7ryNC592UvpaxOvi/fe5P6QUuzBxM64YK8at8mB93N/0rnqa74N4FKT5eFoq2G1yKV4RCsBXslTIBdqydyYqdATT6b4saYRM+kuOyldg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(366004)(136003)(346002)(39860400002)(2906002)(33656002)(66446008)(8936002)(55016002)(4326008)(66556008)(53546011)(64756008)(5660300002)(76116006)(8676002)(478600001)(66476007)(7696005)(316002)(86362001)(83380400001)(6506007)(54906003)(71200400001)(186003)(91956017)(66946007)(6916009)(52536014)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?HusbXYAeZPBnAXhbB0EcADmD/YBH1qouDGvkUs6gJ/O6FlwllqIZ8AklHS?=
 =?iso-8859-1?Q?I6+h8eAyzZvvo3+ssF/NjnV48tgXJDdUBO29OzWFWZLWEjjS8iTYg31Iwj?=
 =?iso-8859-1?Q?7NILerDlNXuJtFFB2dufGIunjo22iPN+tGc/k7KMEI+xqS7515sh8ffhyC?=
 =?iso-8859-1?Q?BwuG9M1ARmiPEAhbUYUzaNcgLjNrNN85kuWTS1lkSwvauIOhGY1jbwbVcl?=
 =?iso-8859-1?Q?WxmRUkjo/ZPvwqulgzLXaH3QOxz2XlTf/Pp1KWJw7LpVcl5WE1qZ4+WwP5?=
 =?iso-8859-1?Q?cZtJP8gok13DBN9/iloWZcAHbg1yYwgjbmcM+7lOo8lBpu8imt1zogOVGe?=
 =?iso-8859-1?Q?dIi3kFcHWG1selHP9tbXhup8c+Y/qHcgT78daZwQAecz7VX6r7h16nJirR?=
 =?iso-8859-1?Q?j4MQAfnNzcsfe4vTst0n7vZ48PpIOO5qnXLDhGdm7oW1ciWvgxzJjoATm/?=
 =?iso-8859-1?Q?pU4F6fMRyGD8U/PcvR/9bulDfLhu1iqERxbivFb6Q120SrPI3YSUT1TXP8?=
 =?iso-8859-1?Q?QmG+otP0e2u/4TrZI71UYkoPYREDn1UHZEx4a89/myra/ebrILbOCv6PXq?=
 =?iso-8859-1?Q?6C/M5vq+F1GoMSwgGdEJ2Y29v8wq2u8/xSyQg//JUzaoY3jfuhrlk/wORm?=
 =?iso-8859-1?Q?i3EtXSIiU98KLjt/Ei6eNMkMq7OdQJ1tv54nkrNqKO9qX7OvBeCv/IxhE8?=
 =?iso-8859-1?Q?4Mh6Kj3rvKOZFV9YHSvI/sfL6tJhPAn7HdemUwOvqhhdaha5/zT1tV6aml?=
 =?iso-8859-1?Q?2HRwQzSOdU0VrNV/sz4xNCwqYnV/+WFBIiDffaTFfsDwOan/VH9dJP03eP?=
 =?iso-8859-1?Q?12XCtLMbAiGYXpzeYEflVtJKu/0BiGmeSjZoDekkGxhV3eMRvuDmqPBOTT?=
 =?iso-8859-1?Q?m0sUvg987yjGpcEbSew6LEb30gl+QMHdQsdq5AkYQ5jWb/t0+/6qiOd0s+?=
 =?iso-8859-1?Q?K6e54TsVG6dKFDR6jBC9WtE6synOGg3XoxqcTSugLUoMw+83v4Q4+ockoD?=
 =?iso-8859-1?Q?/Y+Kik8UihD8YRKvmeaPC7/fSyOgBVftRgfRLm4w2bMCe7vlyG5L1ZwxeR?=
 =?iso-8859-1?Q?6vl/49V0xjDdVFK8HpHcwCix5hVHSFpA0JqxwFQCbc+AYj0QVasgHKDAWR?=
 =?iso-8859-1?Q?q6qWMBwEZEcbAM213+YaTSY/S3iY3B6bqvnllN1zQOI1S+yG2QrL4/mRvu?=
 =?iso-8859-1?Q?q1GJebqQeZ67i8ZKu3KISP1hc2/8NTHLaf1vUA0SL7s2DIB5Yi2bi3iT1L?=
 =?iso-8859-1?Q?pWfsa2s6s8EV/icANj2XcneiKmxr2JJdXcJLGHm9W6oERrkFkcP6uzoCrg?=
 =?iso-8859-1?Q?CCbAvVjxM0ihz5rLdztwYfGMcujkOF1o60n687/oEJ+qewSArz1Dm34ViR?=
 =?iso-8859-1?Q?Zxx//vX9/J7dEpWIGBTvOT/I6fVXlKs9Jp77EE7YoroOD6CvVOJSf8Izqv?=
 =?iso-8859-1?Q?BoQFk0qd0jl2iecoMYOGFdzw9zWiF8SxlBmJPA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc16cd5-55ea-4fe9-97e6-08d8c96d1d88
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2021 00:29:35.5730
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XRbfEMsY9KMNzh87j4l7Xth4c4ASST4jduSoQNBSFl3xvyeYpLqC2+DdQyXBS+j9UaPLelXJpmL3PLHKqh279g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6894
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/04 9:47, Damien Le Moal wrote:=0A=
> On Wed, 2021-02-03 at 14:41 -0600, Rob Herring wrote:=0A=
>> On Wed, Feb 3, 2021 at 6:52 AM Damien Le Moal <Damien.LeMoal@wdc.com> wr=
ote:=0A=
>>>=0A=
>>> On Tue, 2021-02-02 at 13:02 -0600, Rob Herring wrote:=0A=
>>>> On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> =
wrote:=0A=
>>>>>=0A=
>>>>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the=
=0A=
>>>>> interrupts property description and maxItems. Also add the standard=
=0A=
>>>>> ngpios property to describe the number of GPIOs available on the=0A=
>>>>> implementation.=0A=
>>>>>=0A=
>>>>> Also add the "canaan,k210-gpiohs" compatible string to indicate the u=
se=0A=
>>>>> of this gpio controller in the Canaan Kendryte K210 SoC. If this=0A=
>>>>> compatible string is used, do not define the clocks property as=0A=
>>>>> required as the K210 SoC does not have a software controllable clock=
=0A=
>>>>> for the Sifive gpio IP block.=0A=
>>>>>=0A=
>>>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>=0A=
>>>>> Cc: Rob Herring <robh@kernel.org>=0A=
>>>>> Cc: devicetree@vger.kernel.org=0A=
>>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>>> ---=0A=
>>>>> =A0.../devicetree/bindings/gpio/sifive,gpio.yaml | 21 +++++++++++++++=
+---=0A=
>>>>> =A01 file changed, 18 insertions(+), 3 deletions(-)=0A=
>>>>>=0A=
>>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml =
b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>> index ab22056f8b44..2cef18ca737c 100644=0A=
>>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>> @@ -16,6 +16,7 @@ properties:=0A=
>>>>> =A0=A0=A0=A0=A0=A0=A0- enum:=0A=
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- sifive,fu540-c000-gpio=0A=
>>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0- sifive,fu740-c000-gpio=0A=
>>>>> +          - canaan,k210-gpiohs=0A=
>>>>> =A0=A0=A0=A0=A0=A0=A0- const: sifive,gpio0=0A=
>>>>>=0A=
>>>>> =A0=A0=A0reg:=0A=
>>>>> @@ -23,9 +24,9 @@ properties:=0A=
>>>>>=0A=
>>>>> =A0=A0=A0interrupts:=0A=
>>>>> =A0=A0=A0=A0=A0description:=0A=
>>>>> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.=0A=
>>>>> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.=0A=
>>>>> =A0=A0=A0=A0=A0minItems: 1=0A=
>>>>> -    maxItems: 16=0A=
>>>>> +    maxItems: 32=0A=
>>>>>=0A=
>>>>> =A0=A0=A0interrupt-controller: true=0A=
>>>>>=0A=
>>>>> @@ -38,6 +39,10 @@ properties:=0A=
>>>>> =A0=A0=A0"#gpio-cells":=0A=
>>>>> =A0=A0=A0=A0=A0const: 2=0A=
>>>>>=0A=
>>>>> +  ngpios:=0A=
>>>>> +    minimum: 1=0A=
>>>>> +    maximum: 32=0A=
>>>>=0A=
>>>> What's the default as obviously drivers already assume something.=0A=
>>>>=0A=
>>>> Does a driver actually need to know this? For example, does the=0A=
>>>> register stride change or something?=0A=
>>>>=0A=
>>>> Please don't add it if the only purpose is error check your DT (IOW,=
=0A=
>>>> if it just checks the max cell value in gpios phandles).=0A=
>>>=0A=
>>> If I remove that, make dtbs_check complains. Looking at othe gpio contr=
oller=0A=
>>> bindings, they all have it. So isn't it better to be consistent, and av=
oid make=0A=
>>> dtbs_check errors ?=0A=
>>=0A=
>> That would mean you are already using 'ngpios' and it is undocumented=0A=
>> (for this binding). If already in use and possibly having users then=0A=
>> that changes things, but that's not what the commit msg says.=0A=
>>=0A=
>> Not *all* gpio controllers have ngpios. It's a good number, but=0A=
>> probably more than need it though. If we wanted it everywhere, there=0A=
>> would be a schema enforcing that.=0A=
> =0A=
> If I remove the minimum and maximum lines, I get this error:=0A=
> =0A=
> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml:42:10: [error] =
empty=0A=
> value in block mapping (empty-values)=0A=
>   CHKDT   Documentation/devicetree/bindings/processed-schema-examples.jso=
n=0A=
> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/=
sifive=0A=
> ,gpio.yaml: properties:ngpios: None is not of type 'object', 'boolean'=0A=
>   SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.jso=
n=0A=
> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/=
sifive=0A=
> ,gpio.yaml: ignoring, error in schema: properties: ngpios=0A=
> warning: no schema found in file:=0A=
> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
> =0A=
> If I remove the ngpios property entirely, then I get a hit on the device =
tree:=0A=
> =0A=
>   CHECK   arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml=0A=
> /linux/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml:=0A=
> gpio-controller@38001000: 'ngpios' does not match any of the regexes: 'pi=
nctrl-=0A=
> [0-9]+'=0A=
> 	From schema:=0A=
> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/gpio/=
sifive=0A=
> ,gpio.yaml=0A=
> =0A=
> Now, If I change the property definition to this:=0A=
> =0A=
> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
> b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
> index 2cef18ca737c..5c7865180383 100644=0A=
> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
> @@ -40,8 +40,11 @@ properties:=0A=
>      const: 2=0A=
>  =0A=
>    ngpios:=0A=
> -    minimum: 1=0A=
> -    maximum: 32=0A=
> +    $ref: /schemas/types.yaml#/definitions/uint32=0A=
> +    description:=0A=
> +      The number of GPIO pins implemented by the controller.=0A=
> +      It is 16 for the SiFive SoCs and 32 for the Canaan K210 SoC.=0A=
> +=0A=
>  =0A=
>    gpio-controller: true=0A=
> =0A=
> Then all is OK.=0A=
> =0A=
> Which option should I go for here ? If we want to avoid a dtbs_check erro=
r, as=0A=
> far as I can see, we can:=0A=
> 1) Remove the ngpios property and remove its use from the DTS, which is n=
ot=0A=
> nice in my opinion=0A=
> 2) Use the modification proposed above=0A=
> =0A=
> Please advise. Thanks !=0A=
> =0A=
=0A=
Rob,=0A=
=0A=
Thanks for the reviews and acks on the other patches. I would like to send =
v16=0A=
with your suggested fixes. But what should I do about ngpios ? Option (1) o=
r (2)=0A=
above ? Any other option ?=0A=
=0A=
Thanks !=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
