Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAE4B311985
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231831AbhBFDI6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:08:58 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:12788 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232114AbhBFDEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 22:04:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612580666; x=1644116666;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=7wD0yh08VXXJODt4TFZHVOnX1+dejfzwegHecSxQNmo=;
  b=Y1aup1FL0bewFhkwLUJgt22XY+dED7vaMZivkFtXK7T9fWDtnAiZKctn
   iZ4N5mAvgcoASc+zIcox+6Glv9cgQ81qX/pkmA4HUygqZdSZPGlC099yW
   AlwmiHJI3CLX2yudWWsiXbZl5bEniWo5UCTLxKvRbofd7km8x8Uk2gcTL
   AakFm0QxaJHFrggGmnJHtHf0BOuPGsBILYF0cj20N5ZqjdMD7XbLVe4g2
   LSLsmF+elvlg+7psrMABOTzSVId2VyZeFBQlF+/sMY1lKZjMX6bx9HDOT
   ClkTcSluJKMA2Tm0+29eESLHesIEsQPsVkTLVzW74CF9Ew6cF19u4P1XL
   g==;
IronPort-SDR: UaYf/gZw5b7GTu6SUQEh1z9DVrS2wyPpUUjmZ2LoSavI/srlgn4kjxf21mzm6livJFk8ks+KiK
 eWk223MKZLF7TqitT3ar/pxW+ZGgHeh6uZ03XPgApgSGM7XpKPpv3rmAcSGXTG4cT10A5mPCqH
 mEiGQDJYXXbjHQN/U5caRq2590G14F2IpPxQ/r4clBpkrRtc2E8EjgEk55WYI7SScObKu/izU1
 02dtjQTPeuEVvvsgtKqmuLao9IoWcQ56oI1ALLJ8FIzagcLmVolWpF7TZyAcc5cLo7Eg+2etpU
 VJM=
X-IronPort-AV: E=Sophos;i="5.81,156,1610380800"; 
   d="scan'208";a="163714612"
Received: from mail-mw2nam12lp2042.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.42])
  by ob1.hgst.iphmx.com with ESMTP; 06 Feb 2021 08:52:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQUnsME38iI4mnIcONMU/hSTwh2j7vp97lS8RtEU/CVq4LUjT9M10qxlFtk41KOcl+Nj4bw4DOC1DrImoyhUZeRf/43EWf/bP3eDkQnWpFRnl9h3FVfA2naev0/N0Ihe6lroaq0lZY59I3yS4tx9FxYu1RFW02hHkfL7rOnVxZ0bFx26p7CcSiF6eoOnAopBvOQrzjdTfWaEC75Fbo98taDL+drQCjcyvmSfvBeOytN75lqJE7657wpCgXN0VpR9PTIfcEVMKujQltwP1lgzkahohe156uMar0thI+5wB0p3zJkknAB0AeiD+idzXhcOFhKgem2IB0UrLAqRT+6Eog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wbbw7BS2OiX3x+sFDTsuypcbZSAY804UJwsJzmwGqEk=;
 b=aGJ0QH0wCwiJ7g6+iPlTma7AEcYQIZNIXyRsbAzT+TwJAOFzXDUk7XeH+KqfY8OwyDKbr/k5zj70r45WGxDno64JntYENtwRUkVXaNs3L5GVkk3yxs1JXiU1GJT4EbgjQOUKZdCveIj0Yvdl/Y+TmZ/BxJgStCGcyc7pnAKLiU5uW3uY0Q7sydsaFLlB5yjj5UgKaBvjPtYOxiKmEwXfmbzv2dFg0Ic8WPyH3WXEuQ0fzUpia62IewbiCs+ixhrBLhuoTawW9+/RNqMQaVxyEnSBgCNWQOyzzHVb0LWchedi+IbVQAtS03KbKTtkd30zh3CoI099n9ktehpWMG4lgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wbbw7BS2OiX3x+sFDTsuypcbZSAY804UJwsJzmwGqEk=;
 b=jUuguoe7hxpCUxUQA1txz4y519KJl1ZagZBQIlg+a23RxA67YJDdAK7YY1wUNrNJ3QctuVN823VH8sXWK3t7aON8E6qsgF+axx1SBICCVREmdbzxedJuxkDK15Ney4WgQrKp+NNqa297KYRLvnDECkMCsjeoykLMzCoAPGF6SZU=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6846.namprd04.prod.outlook.com (2603:10b6:208:1e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Sat, 6 Feb
 2021 00:52:12 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.025; Sat, 6 Feb 2021
 00:52:12 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Sean Anderson <seanga2@gmail.com>,
        "robh@kernel.org" <robh@kernel.org>
CC:     "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
Thread-Topic: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
Thread-Index: AQHW+U9T59FA/s8Z20mcfAvTuPFEfg==
Date:   Sat, 6 Feb 2021 00:52:12 +0000
Message-ID: <BL0PR04MB651496C3B638E46E178CAC2FE7B19@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com>
 <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <89cccbae5add85c7bd811f3819ea3db7061e928d.camel@wdc.com>
 <CAL_JsqJeF364bPSNQLGujNHDkA7x8H_H7YXQFNZQ7vDzdAevcA@mail.gmail.com>
 <c9d273c87815a89be314e4e824a365313be0d677.camel@wdc.com>
 <CAL_JsqKnAQ+ngNkaKkDAO5Bqd=ZwNm5A4VhxvuVZxgLdxxxpSg@mail.gmail.com>
 <6351faa35c175d38e033ce433780c03c141c0ddf.camel@wdc.com>
 <c170e192-9e3f-5682-5a7f-ac9fc573fd9d@gmail.com>
 <f0b7df37e67151dab5699923549de6b3fbe30367.camel@wdc.com>
 <1726dceb-868e-68a1-38df-2f80ee233ed1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:50f7:ee01:712b:bf92]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5cd97d2a-ab96-4233-753d-08d8ca397088
x-ms-traffictypediagnostic: MN2PR04MB6846:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB684614D07B42AB3D8714E43EE7B19@MN2PR04MB6846.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KI3Dup+93CB4GUUr/Y1vSbpc1OAPNfUE59fcBVIq5HcchMwBC+bAZS8GwqYfhDUKrW/nlnsyo4M98Hp4lQ7OEr0sj61OJBj0YnKlKzY+7Q4Bntg0oPjIoyuP+VFFwd7Xa2F8i0e/+d/lkNUF3nKglZH8kDJfSVzxccErVSQIW+FOSURYl6X7nv4ehZUtxrl8JeHAy/oKxK7qze2mifkPETkT9jjHZU8/FC0H7uzdSHmDmfGcVQ45NgOotKSGZ4crW3FSAvc7/sLzAg+faBwPA20XIj6cFgDWwZ0NHMLujmLgY02nObK7Xdf+9lBzttfnE4lPBjXx72bvJb0FQbWyeJrH5RN5MbVsVyFTAI+zS4WagMMNTABhBziJCM9KRM8ks0KYjCcsSGgfjZrMGoe5qHjFbIrvqjJpWGkSPEjW/Xh0UsS5Wg2TBWk/oRdY3nStv/dWAKrT1yXlVbNN5jdQGDgAeb3RqUTMNdm6ryeYXaMqQtySZfMydeCKQ+g0x2EcAv7gbl9ELmw5YePQ9cHVLA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(366004)(346002)(396003)(136003)(376002)(316002)(71200400001)(5660300002)(8936002)(66946007)(83380400001)(66476007)(7696005)(52536014)(33656002)(54906003)(86362001)(2906002)(110136005)(66556008)(6506007)(76116006)(8676002)(53546011)(91956017)(9686003)(64756008)(478600001)(66446008)(186003)(4326008)(55016002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?uSeDqXRAMBYuxA5Y/vqx89bOK92R9YhYAiyigZT+9w/hjgwwtuiZtPSRsLuK?=
 =?us-ascii?Q?HA+NqFA1Kggax5a/PPt/G4yNDFgsVl/UeYJ6toDZHAxsGGlE+689cd8yafJJ?=
 =?us-ascii?Q?Wq98WAWfRT6uUUmPJam1BR1sjdxRLt0VAcdiqecKXo/j9LkRDlb2C8TANuHw?=
 =?us-ascii?Q?GBSJ/EHb7uID+/98zV0wUWoucA0fitzHe7m1J7Eans/O1jazgVux0HAfzl4+?=
 =?us-ascii?Q?QJj/uLyyBzDehP/TpLe2hpxjPsFVrpfF2YqLWDn8cnoDvE1YQlrlKzO/preb?=
 =?us-ascii?Q?/C/9HmTh7SAZjzPU+oCBcvXHwfC3ZPc33Nklk2J8X3+5HMGau4OXH4uTxR5T?=
 =?us-ascii?Q?uOh18IoguWMYT3cgr6jvDAmSUOqmE/N2xQMwWshg+O4HcjCT3bVosTkPkj0y?=
 =?us-ascii?Q?UMku+lNX5PQL9O/Yavqg3JswqcVkV+LIrJCIVl/9ltDKjHjw20ddZOJ4aiA/?=
 =?us-ascii?Q?YllbxcxKBBMhY/I9YaOJMRQCto5yzVSwZZjiM+Bk5y/L9uKH6XIqBqvTk80G?=
 =?us-ascii?Q?NUsjHoa5XvpAPg4+JrjjhHEY0k8hIuJw1pVM0Ny3UR4MlHhPCDAiinNUGDNh?=
 =?us-ascii?Q?tAzSmpMnqE0u2pAyGiUqumWhMWNfOmDrpVsZtJ3W5NfaSdejUKXVJ39ik9qc?=
 =?us-ascii?Q?lCAu/YcC+tat+E0GzikpmeDcZl5aMdEEXrAFKq1rJtoCIXgHsu/KqKsy0Pgk?=
 =?us-ascii?Q?EXksaoQeNGRZMRCCTtd2bCLhgSFRwovF/BUEWTRN49Tq5k/9fHShLpghJGTv?=
 =?us-ascii?Q?XC4Lzo3jKDXOKs9fkarpxr5gqNOP5oh3/njZVLHainZ/YVAH5HDikrAmZIDE?=
 =?us-ascii?Q?m9ZCB9mR9z2012YKf2n0jMomHFszsbE5/oVmotNJ5xnvb7L8xARLBs7GLS7e?=
 =?us-ascii?Q?2HdTHWIJ98kmld49Nmeyli0cvuVUrBfT9jPDSkeDHD1FDnjOukkWR+vrRk3H?=
 =?us-ascii?Q?6kJ+yr9je1T/yVatQx8d7DryweHTdzqS3SusjqdtZwKV7zfOOHSUoczhqTgM?=
 =?us-ascii?Q?bnan95eQUkDdargX3UI+JKW1XgzOskKLDLlTe2l89Cwkrj+hd7duUJ+da2pH?=
 =?us-ascii?Q?HSkNv46TScRw+9uVBdwxDvdNZ5fSXHh0bpMM1DYmwpAf1TrmdLXDuOe6HK24?=
 =?us-ascii?Q?F36MGldBG5BSD89n4YD5MxsWuwD/merBzjYNWidznNmoEz9G0yXmpOjMN2Vn?=
 =?us-ascii?Q?2G2kI/MMtsf6oEiOBb9Mp1Vx2RsSm53SUyK3fuxd338ZgAQznVDEREzqhBns?=
 =?us-ascii?Q?sEfsNkYEvmmOIWzql9dfMFfZnAm5k/VJzQBAmvYebzbQwfopiDZ19w/13EhR?=
 =?us-ascii?Q?kShs7PaGw9puWu3tpSr9EmLdN1MUcRYrZ8zcvaoJcylxZXScwRvAi+aJ22XT?=
 =?us-ascii?Q?oZ8kcBUECDJ1q2qfxZD9JofX7e+oME2qLY22L5MhRGtm2oLOPA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd97d2a-ab96-4233-753d-08d8ca397088
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2021 00:52:12.2086
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KXW9sLa/LBQNQdc2yFBFd1sODvb92JrAkhm0rLDcq8VXMUGVOR+qbqBHWNX+a/56aKEz3Pepy2eirbhaeS8PKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6846
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/02/06 9:31, Sean Anderson wrote:=0A=
> On 2/5/21 6:32 PM, Damien Le Moal wrote:=0A=
>> On Fri, 2021-02-05 at 17:55 -0500, Sean Anderson wrote:=0A=
>>> On 2/5/21 5:53 PM, Damien Le Moal wrote:=0A=
>>>> On Fri, 2021-02-05 at 14:02 -0600, Rob Herring wrote:=0A=
>>>>> On Wed, Feb 3, 2021 at 6:47 PM Damien Le Moal <Damien.LeMoal@wdc.com>=
 wrote:=0A=
>>>>>>=0A=
>>>>>> On Wed, 2021-02-03 at 14:41 -0600, Rob Herring wrote:=0A=
>>>>>>> On Wed, Feb 3, 2021 at 6:52 AM Damien Le Moal <Damien.LeMoal@wdc.co=
m> wrote:=0A=
>>>>>>>>=0A=
>>>>>>>> On Tue, 2021-02-02 at 13:02 -0600, Rob Herring wrote:=0A=
>>>>>>>>> On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.=
com> wrote:=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> The sifive gpio IP block supports up to 32 GPIOs. Reflect that i=
n the=0A=
>>>>>>>>>> interrupts property description and maxItems. Also add the stand=
ard=0A=
>>>>>>>>>> ngpios property to describe the number of GPIOs available on the=
=0A=
>>>>>>>>>> implementation.=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> Also add the "canaan,k210-gpiohs" compatible string to indicate =
the use=0A=
>>>>>>>>>> of this gpio controller in the Canaan Kendryte K210 SoC. If this=
=0A=
>>>>>>>>>> compatible string is used, do not define the clocks property as=
=0A=
>>>>>>>>>> required as the K210 SoC does not have a software controllable c=
lock=0A=
>>>>>>>>>> for the Sifive gpio IP block.=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>=0A=
>>>>>>>>>> Cc: Rob Herring <robh@kernel.org>=0A=
>>>>>>>>>> Cc: devicetree@vger.kernel.org=0A=
>>>>>>>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>>>>>>>> ---=0A=
>>>>>>>>>>    .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++=
++++++---=0A=
>>>>>>>>>>    1 file changed, 18 insertions(+), 3 deletions(-)=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.=
yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>>>>>> index ab22056f8b44..2cef18ca737c 100644=0A=
>>>>>>>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>>>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>>>>>> @@ -16,6 +16,7 @@ properties:=0A=
>>>>>>>>>>          - enum:=0A=
>>>>>>>>>>              - sifive,fu540-c000-gpio=0A=
>>>>>>>>>>              - sifive,fu740-c000-gpio=0A=
>>>>>>>>>> +          - canaan,k210-gpiohs=0A=
>>>>>>>>>>          - const: sifive,gpio0=0A=
>>>>>>>>>>=0A=
>>>>>>>>>>      reg:=0A=
>>>>>>>>>> @@ -23,9 +24,9 @@ properties:=0A=
>>>>>>>>>>=0A=
>>>>>>>>>>      interrupts:=0A=
>>>>>>>>>>        description:=0A=
>>>>>>>>>> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.=0A=
>>>>>>>>>> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.=0A=
>>>>>>>>>>        minItems: 1=0A=
>>>>>>>>>> -    maxItems: 16=0A=
>>>>>>>>>> +    maxItems: 32=0A=
>>>>>>>>>>=0A=
>>>>>>>>>>      interrupt-controller: true=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> @@ -38,6 +39,10 @@ properties:=0A=
>>>>>>>>>>      "#gpio-cells":=0A=
>>>>>>>>>>        const: 2=0A=
>>>>>>>>>>=0A=
>>>>>>>>>> +  ngpios:=0A=
>>>>>>>>>> +    minimum: 1=0A=
>>>>>>>>>> +    maximum: 32=0A=
>>>>>>>>>=0A=
>>>>>>>>> What's the default as obviously drivers already assume something.=
=0A=
>>>>>>>>>=0A=
>>>>>>>>> Does a driver actually need to know this? For example, does the=
=0A=
>>>>>>>>> register stride change or something?=0A=
>>>>>>>>>=0A=
>>>>>>>>> Please don't add it if the only purpose is error check your DT (I=
OW,=0A=
>>>>>>>>> if it just checks the max cell value in gpios phandles).=0A=
>>>>>>>>=0A=
>>>>>>>> If I remove that, make dtbs_check complains. Looking at othe gpio =
controller=0A=
>>>>>>>> bindings, they all have it. So isn't it better to be consistent, a=
nd avoid make=0A=
>>>>>>>> dtbs_check errors ?=0A=
>>>>>>>=0A=
>>>>>>> That would mean you are already using 'ngpios' and it is undocument=
ed=0A=
>>>>>>> (for this binding). If already in use and possibly having users the=
n=0A=
>>>>>>> that changes things, but that's not what the commit msg says.=0A=
>>>>>>>=0A=
>>>>>>> Not *all* gpio controllers have ngpios. It's a good number, but=0A=
>>>>>>> probably more than need it though. If we wanted it everywhere, ther=
e=0A=
>>>>>>> would be a schema enforcing that.=0A=
>>>>>>=0A=
>>>>>> If I remove the minimum and maximum lines, I get this error:=0A=
>>>>>=0A=
>>>>> I never said remove minimum/maximum. The suggestion is either add=0A=
>>>>> 'default: 16' or remove 'ngpios' entirely.=0A=
>>>>>=0A=
>>>>>> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml:42:10: [er=
ror] empty=0A=
>>>>>> value in block mapping (empty-values)=0A=
>>>>>>     CHKDT   Documentation/devicetree/bindings/processed-schema-examp=
les.json=0A=
>>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/=
gpio/sifive=0A=
>>>>>> ,gpio.yaml: properties:ngpios: None is not of type 'object', 'boolea=
n'=0A=
>>>>>>     SCHEMA  Documentation/devicetree/bindings/processed-schema-examp=
les.json=0A=
>>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/=
gpio/sifive=0A=
>>>>>> ,gpio.yaml: ignoring, error in schema: properties: ngpios=0A=
>>>>>> warning: no schema found in file:=0A=
>>>>>> ./Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>=0A=
>>>>> ngpios: true=0A=
>>>>>=0A=
>>>>> or=0A=
>>>>>=0A=
>>>>> ngpios: {}=0A=
>>>>>=0A=
>>>>> Are the minimum valid values for a key. (Though not what should be do=
ne here.)=0A=
>>>>>=0A=
>>>>>>=0A=
>>>>>> If I remove the ngpios property entirely, then I get a hit on the de=
vice tree:=0A=
>>>>>>=0A=
>>>>>>     CHECK   arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml=0A=
>>>>>> /linux/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml:=0A=
>>>>>> gpio-controller@38001000: 'ngpios' does not match any of the regexes=
: 'pinctrl-=0A=
>>>>>> [0-9]+'=0A=
>>>>>>           From schema:=0A=
>>>>>> /home/damien/Projects/RISCV/linux/Documentation/devicetree/bindings/=
gpio/sifive=0A=
>>>>>> ,gpio.yaml=0A=
>>>>>=0A=
>>>>> That's not upstream, right? Then fix it.=0A=
>>>>>=0A=
>>>>>> Now, If I change the property definition to this:=0A=
>>>>>>=0A=
>>>>>> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=
=0A=
>>>>>> b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>> index 2cef18ca737c..5c7865180383 100644=0A=
>>>>>> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml=0A=
>>>>>> @@ -40,8 +40,11 @@ properties:=0A=
>>>>>>        const: 2=0A=
>>>>>>=0A=
>>>>>>      ngpios:=0A=
>>>>>> -    minimum: 1=0A=
>>>>>> -    maximum: 32=0A=
>>>>>> +    $ref: /schemas/types.yaml#/definitions/uint32=0A=
>>>>>> +    description:=0A=
>>>>>> +      The number of GPIO pins implemented by the controller.=0A=
>>>>>> +      It is 16 for the SiFive SoCs and 32 for the Canaan K210 SoC.=
=0A=
>>>>>> +=0A=
>>>>>>=0A=
>>>>>>      gpio-controller: true=0A=
>>>>>>=0A=
>>>>>> Then all is OK.=0A=
>>>>>>=0A=
>>>>>> Which option should I go for here ? If we want to avoid a dtbs_check=
 error, as=0A=
>>>>>> far as I can see, we can:=0A=
>>>>>> 1) Remove the ngpios property and remove its use from the DTS, which=
 is not=0A=
>>>>>> nice in my opinion=0A=
>>>>>=0A=
>>>>> Again, it depends if there are users depending on it. A user being a=
=0A=
>>>>> GPIO driver somewhere, not a DTS file. The GPIO driver in the kernel=
=0A=
>>>>> doesn't need it. So u-boot? BSD?=0A=
>>>>=0A=
>>>> The Linux driver uses the number of interrupts for the number of gpios=
 but=0A=
>>>> upstream U-Boot uses the ngpios property. So I will change this to use=
=0A=
>>>> "default: 16" as you suggested.=0A=
>>>=0A=
>>> There is no reasonable default for this hardware. I would much rather=
=0A=
>>> you keep the schema as-is, or at least go with the second option.=0A=
>>=0A=
>> Since the SiFive official doc seems to say "16" as the number of gpio fo=
r this=0A=
>> controller, we could assume that to be the default. No ? But I agree tha=
t=0A=
>> clearly, the implementation can be hacked to have any number of GPIOs...=
=0A=
> =0A=
> Keep in mind that those docs are for SiFive's particular instantiation=0A=
> of that IP, not for the IP in general. Although some parameters (e.g.=0A=
> dsWidth) have defaults, width does not.=0A=
=0A=
OK. Then I think the simplest is to keep the minimum/maximum. Many binding =
docs=0A=
use that anyway.=0A=
=0A=
Rob, any objections ?=0A=
=0A=
=0A=
> =0A=
> --Sean=0A=
> =0A=
>>=0A=
>>=0A=
>>>=0A=
>>> --Sean=0A=
>>>=0A=
>>>>=0A=
>>>> Thanks !=0A=
>>>>=0A=
>>>>>=0A=
>>>>>> 2) Use the modification proposed above=0A=
>>>>=0A=
>>>=0A=
>>=0A=
> =0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
