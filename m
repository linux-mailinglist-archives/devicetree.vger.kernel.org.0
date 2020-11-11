Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0E42AF466
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 16:06:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726993AbgKKPGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 10:06:39 -0500
Received: from esa4.hgst.iphmx.com ([216.71.154.42]:2701 "EHLO
        esa4.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725959AbgKKPGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 10:06:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1605107196; x=1636643196;
  h=from:to:cc:subject:date:message-id:references:
   content-transfer-encoding:mime-version;
  bh=CAvm+yTE4WxSjN0EuX89VwkHgR/3w4/ank1p8E3iM60=;
  b=nJX/jyhU80q8MHKYAE7nKtGASeVViAU4AvgdpwZ9YB6qSXlggATXMlSC
   t6qeEHJxiptCl1FNySL3YFGz5NSzOaooJZJcCLf6xOcB7JjhrHQY5cdUj
   l8UnPM77//n2GWhLf3ZTCTnOiLepaCqtwnW/OeQDSYfM1PaoU7q+dkTp9
   v8VHubBO1GArUe/0dvpRXyj+aSLaX1Xl25WU8IZonuCAB7L2fypMnpu4F
   rcX77bTyevrRdtDna8t82ey6HMjEK4Cs6gmZwCeuWD9ytUXCKnqEJj5tO
   hoPnDsXk58Nyx5vfBndk41LG0F2zPaFXff7Sjd8wNNIVEnOKijrzBKW/g
   Q==;
IronPort-SDR: bzCxUk9X43SHsjM7aCf7TD+wSl+P7/lGAHhmJ2EbaxoNetuRxJyvEQoaCIaIJtBYYYU0jXYIfO
 6sCyjCiuS8mRXYx+TfZqoAdX0wfirqiRqkWMFpNUsucpI1IewvVznDWZzl19nQVoAiUni18lmX
 vx8KRNG70chw4KzgyQO7BCjaajAtqLoYw1Fu9uCBBTw2URvNelDBBvoiEc6tA9LeDu4cF2wiru
 BwpfSjyZws2TlvolViPqfMuBRUMDUjHQXQA5O1W6wJGTijSPaMQ84ir5uRJREH5Ub18LpMiG6B
 njQ=
X-IronPort-AV: E=Sophos;i="5.77,469,1596470400"; 
   d="scan'208";a="152291070"
Received: from mail-dm6nam12lp2172.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.172])
  by ob1.hgst.iphmx.com with ESMTP; 11 Nov 2020 23:06:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqEIRb3xnMpIVaO16Ip5aa9x5cv96vNTlnQ/MWsIaSQbtcXMhjesLnJDfyKolU9ayHPiB5qgEQLL1r6HT1QErc7ex7lGmgVddWlm9M36N9APrabvAAe8/lWbxpRMdreeuCjHClrRE/JfKmsv9eG5idYUPr3v9k6RNrEw2DGzu7BOjSGb1+ne8D1WVi+Eik02ZRnPIHjvZh7QgoZUTO5aL7bncU8iImjf4PP8jylna8Htxgk+paMbm4v8soQbIkxPfCpHRaz7UCu8LEil9z3wmKtuGpykdeRXnVgjwMvGF7CNdCk4mO+lVsd2aAXvgpHBOCfrZ4Jh6DrUpoggSLcSPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsnQDxfWp5AFjp8o6hRYNxdcXIIOSLFkFWVvTg+pvqA=;
 b=dsD+A873YMVGElPcscnRUybPoYlipt5IJG9qT8eZoAE3JiYVDMbiy7i6dFJsL3UH0ScGhGSZRurBSSxbu8SWtkD/wiB/Q5O203R1EsbJjSKBQyRr3OT5/9eNgm6QLJ5pfFIqOIX4cbDKDIn9y9gTjK2oAeZCElAphoZ+t5lZU9MmIKH2zHz2N7Z5YxPX0Tqn8BQAulWcHuURmPiqwT78NecjBuQmVMlK/365ITK2Fbqwgbm8rPukjXXiiRxEFa+KbF3FaIzjTMe16rTK+y5ewCFbr1Xf4etiRo2iZ33uiqH/c/KbbVRhr7t8rVs5glnjKHriWrwFbCZASdkRuv6Xuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CsnQDxfWp5AFjp8o6hRYNxdcXIIOSLFkFWVvTg+pvqA=;
 b=KwaN4FYImN60Di3fzZEtQzCfiwvN/4ag0ymn/5BdLHDl5NbclZhol7y45X7nDVq37lsk/dZJn91AW+OYLq+4Ggh2COEvN3ktykNhsXgqy/u0UwpB6crcsKlh86pyfhd3jSXnRTTIXfs+X918Ds0O96ncyPgoCmR3E5IyjVMiNcY=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by BL0PR04MB5060.namprd04.prod.outlook.com (2603:10b6:208:5a::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Wed, 11 Nov
 2020 15:06:33 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::4c3e:2b29:1dc5:1a85%7]) with mapi id 15.20.3499.032; Wed, 11 Nov 2020
 15:06:33 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     Rob Herring <robh@kernel.org>, Sean Anderson <seanga2@gmail.com>
CC:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 24/32] dt-bindings: Document kendryte,k210-fpioa bindings
Thread-Topic: [PATCH 24/32] dt-bindings: Document kendryte,k210-fpioa bindings
Thread-Index: AQHWtN4pogxbCuVPg0qTFpKg863FNg==
Date:   Wed, 11 Nov 2020 15:06:33 +0000
Message-ID: <BL0PR04MB651485C2B2EC9DDEA4E823B8E7E80@BL0PR04MB6514.namprd04.prod.outlook.com>
References: <20201107081420.60325-1-damien.lemoal@wdc.com>
 <20201107081420.60325-25-damien.lemoal@wdc.com>
 <20201109153625.GB1330401@bogus>
 <04b266c7-bba9-d847-a526-f64f76c11a50@gmail.com>
 <CAL_JsqJy_6ALEKdk7ZOEaM58Xi6NLBYd_aYNeVr2CpyjSBVpmA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:c005:87c5:ced7:ce31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 85a656d2-cc49-4878-172a-08d8865360a0
x-ms-traffictypediagnostic: BL0PR04MB5060:
x-microsoft-antispam-prvs: <BL0PR04MB5060065FA17D44ACD0A18741E7E80@BL0PR04MB5060.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kKgS24yw3Cteljg6LYD+AnOWXrZjd+zOOnBZ1BZH17lLQiQZKJp24AJrAAaPrqWfYSeTE/u19z9EVAzofmdVx0IowBTFhIbEVZ1jJa1C/0OOptJvMbUnQjg1ub68ao0GlNxf9bM1x5zv85J+Nfs7+J00Xzu4GxhjGTXY4U5otuGuo/n8cCr3ewQimHwJr2OmcJfc7ZLXAY1CvZjfteAfY81BJDC2ORUfvJOs35N8D36gCvbtURIh00JQI9gmW1MUv155t+snEXItDdysU41fX1+2JWcmQJjAszNMxXiQVWJSMarUmGKqiVe41/xxFkfCaA1ZoU+E1iBk3W+5hvPZ1nzYihVZclqNCVsoxZICRBgCCq+GZYjX1aQfLdDPn05MhMcl0Kl/RL2lwyUfGPudnA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(366004)(346002)(376002)(39860400002)(2906002)(110136005)(8676002)(86362001)(33656002)(66476007)(64756008)(8936002)(71200400001)(83380400001)(66946007)(76116006)(91956017)(186003)(316002)(6506007)(478600001)(54906003)(53546011)(5660300002)(52536014)(66446008)(7696005)(55016002)(966005)(4326008)(9686003)(66556008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 7xJ3gjfBbnbD4nJC+Q8GmCqYIXXoEhKTFRkdfwJZEf9B8gUlwgpZzAl7Ayh2tBLD24+DqD+340YWyuPis2KWERqmG0pQ481ETHe4pohY5qCJ2FKso9RxR82w3i1ePZX7g035zF+GQLZr02UjNgb09Wl7T72TO+Ch5ZHI32ZEkzt4lGTOWCx/GslfMOFkf5CGibBGGFDocpXt2Z0qRhLxHQZrNtfipg81kgotDYzHWR0pOzLPh6hDYss3KswooTwJGWu6TMlKSVWThppfrH3dM3rfIFyCZa9q68/nDfVqVUODUrTHVQnctHVBYLLIeRD3qvrxMmJFS1dJJeUlDEsFZiIGfqqCQ7/rKd/Jfls0DVKrwoUwxQBoAiwuvoG7khY6o4E+n0Qpio0Q2AQDs6gsaKgsC9kMJsKlFKB+at2HGB+T2hvdw6i/6p/YSVHqcT2dkcsxudZlhjHnJ983kMJLHyZ0wHaKDHuKRSwxuBmkE2x1McgiWoaf0o8v0fTSroSGaM+u4g2wkQGUgSAktIov+ZSJ93GhysS6m144Zks5NPzUGUfpCany8sbqIvnAZ1cg/34VjeQQoDS5o85qHh1VupYtKpId6LFQc2dZ/8YN0qnP1utBUg1c8DmRClRsU0RRNgtyDsatQmpUek61lxiWUX0zGBknnI2GVUTZTcrEAKKUiIZKZHfQIjTS1l0X1laFwq6vrJ95Vmch2y3bVg7jPw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a656d2-cc49-4878-172a-08d8865360a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2020 15:06:33.3904
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceXCfPGLOY5rHzeoH2hsr8en1eqBozGaq9CcMpjHW2FfzoE8bTynPFLzoPb0cd+Ir7CfT25BEkIbT0BQN9Qeag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR04MB5060
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020/11/11 23:32, Rob Herring wrote:=0A=
> On Mon, Nov 9, 2020 at 9:45 AM Sean Anderson <seanga2@gmail.com> wrote:=
=0A=
>>=0A=
>> On 11/9/20 10:36 AM, Rob Herring wrote:=0A=
>>> On Sat, Nov 07, 2020 at 05:14:12PM +0900, Damien Le Moal wrote:=0A=
>>>> Document the device tree bindings for the Kendryte K210 SoC Fully=0A=
>>>> Programmable IO Array (FPIOA) pinctrl driver in=0A=
>>>> Documentation/devicetree/bindings/pinctrl/kendryte,k210-fpioa.yaml=0A=
>>>>=0A=
>>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>> ---=0A=
>>>>  .../bindings/pinctrl/kendryte,k210-fpioa.yaml | 106 +++++++++++++++++=
+=0A=
>>>>  1 file changed, 106 insertions(+)=0A=
>>>>  create mode 100644 Documentation/devicetree/bindings/pinctrl/kendryte=
,k210-fpioa.yaml=0A=
>>>>=0A=
>>>> diff --git a/Documentation/devicetree/bindings/pinctrl/kendryte,k210-f=
pioa.yaml b/Documentation/devicetree/bindings/pinctrl/kendryte,k210-fpioa.y=
aml=0A=
>>>> new file mode 100644=0A=
>>>> index 000000000000..8730add88ee0=0A=
>>>> --- /dev/null=0A=
>>>> +++ b/Documentation/devicetree/bindings/pinctrl/kendryte,k210-fpioa.ya=
ml=0A=
>>>> @@ -0,0 +1,106 @@=0A=
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)=0A=
>>>> +%YAML 1.2=0A=
>>>> +---=0A=
>>>> +$id: http://devicetree.org/schemas/pinctrl/kendryte,k210-fpioa.yaml#=
=0A=
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#=0A=
>>>> +=0A=
>>>> +title: Kendryte K210 FPIOA (Fully Programmable IO Array) Device Tree =
Bindings=0A=
>>>> +=0A=
>>>> +maintainers:=0A=
>>>> +  - Damien Le Moal <damien.lemoal@wdc.com>=0A=
>>>> +=0A=
>>>> +description:=0A=
>>>> +  The Kendryte K210 SoC Fully Programmable IO Array controller allows=
 assiging=0A=
>>>> +  any of 256 possible functions to any of 48 IO pins. Pin function co=
nfiguration=0A=
>>>> +  is performed on a per-pin basis.=0A=
>>>> +=0A=
>>>> +properties:=0A=
>>>> +  compatible:=0A=
>>>> +    const: kendryte,k210-fpioa=0A=
>>>> +=0A=
>>>> +  reg:=0A=
>>>> +    description: FPIOA controller register space base address and siz=
e=0A=
>>>> +=0A=
>>>> +  clocks:=0A=
>>>> +    minItems: 2=0A=
>>>> +    maxItems: 2=0A=
>>>=0A=
>>> Can drop these. Implied by 'items' length.=0A=
>>>=0A=
>>>> +    items:=0A=
>>>> +      - description: Controller reference clock source=0A=
>>>> +      - description: APB interface clock source=0A=
>>>> +=0A=
>>>> +  clock-names:=0A=
>>>> +    minItems: 2=0A=
>>>> +    maxItems: 2=0A=
>>>> +    items:=0A=
>>>> +      - const: ref=0A=
>>>> +      - const: pclk=0A=
>>>> +=0A=
>>>> +  resets:=0A=
>>>> +    maxItems: 1=0A=
>>>> +=0A=
>>>> +  kendryte,sysctl:=0A=
>>>> +    minItems: 1=0A=
>>>> +    maxItems: 1=0A=
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array=0A=
>>>> +    description: |=0A=
>>>> +      phandle to the system controller node=0A=
>>>> +=0A=
>>>> +  kendryte,power-offset:=0A=
>>>> +    minItems: 1=0A=
>>>> +    maxItems: 1=0A=
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32=0A=
>>>> +    description: |=0A=
>>>> +      Offset of the power domain control register of the system contr=
oller.=0A=
>>>=0A=
>>> Sounds like you should be using power-domains binding.=0A=
>>=0A=
>> This is for pin power domains. E.g. pins 0-5 can be set to 1V8 or 3V3 lo=
gic levels.=0A=
> =0A=
> Okay, please make that clear in the description. You can combine the=0A=
> above 2 properties into one which is a phandle+offset.=0A=
=0A=
Could you point me to an example of such property ? I am not sure how to do=
 that=0A=
so an example would help. Thanks.=0A=
=0A=
> =0A=
> Rob=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=
