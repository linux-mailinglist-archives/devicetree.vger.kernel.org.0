Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 515C357A900
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 23:31:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238645AbiGSVbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 17:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234436AbiGSVbN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 17:31:13 -0400
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (mail-eopbgr10047.outbound.protection.outlook.com [40.107.1.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67FCE30571
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 14:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdquLh/uHMAZDT/rDe610DmEF7Q8UgR3w8A8Intp7msNzoxUl+YcC0wWxTfKkzxdZ4tynLkoaKNczKuKjiHXs85CWpMWXLTDdMdc1+GFOWQ2p5+ZxJZDM5JbhGn6BQmZv50pCRInXdlLY3fDG6mvJ7h4t3wArvu8xMyfDJ46/neN6IbdcErpA9/PjEOgKWSbHkgNVskf716NT9wfj+hVox+xpc2aqLGnYBfrYDKYNbVntpqd/CzIg5kYiN7cFk1E6vlg/V3CuBMXlEVIiUHK73lEJCiWJwb9z426S+yHlb5ksdMwDMK5J9+4A1RofBs1kfjOSmIM6QCQJn6rPBnvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLqoMpPFHxnscA0IwJ1lijvks6bVVpAU1UFHYVzjlkA=;
 b=jWYodZLZ4Ug94pU1LA81Wjkrz8R12mI7rdtFLMAOSKzpeToxUjMJ8Hwvlz6mHtrraCbCseOe1slohOYi1LHg68CW3irNM33CSZWOU/cbGBeLrxIBtdphzUS7D09Am2PMXUEqqHjowzOZx5Z98TYNuNWjpXijUJxmwHuaErtDP3lU0fkQdKVQ3NFE5YpFCIFTEzWwuxgKBhGMupB3PsjiMPVXZhRSbmwrUb8p4qk6omfeuUlLgD6FqTlHCmZj7GoufEb6X3aymtTr6k29UmFOdrvr+KxjVXcrAnkIWvS4gugZ40gDOTGLyHYdHuTHIqsZBmNqkfAYi+C+IiNl6QrdNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PLqoMpPFHxnscA0IwJ1lijvks6bVVpAU1UFHYVzjlkA=;
 b=m3WvH+uNSibujVAAE8kSNE99oDpkSFwxXNXA6ZuKGG6QrQu//WO6Rq6A5ooxxLm/j8Yv+pLHrREUznfJjphNl7sQokAbfF1NapHTp3W6dTTcR4Od8SFR/gddcmKTCObpNONQVUr7EyjGl4tZogW8eIk7AqJ8slVzLIKHtO4jJ+Q=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM6PR04MB6213.eurprd04.prod.outlook.com (2603:10a6:20b:bd::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.24; Tue, 19 Jul
 2022 21:31:09 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.025; Tue, 19 Jul 2022
 21:31:09 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
Thread-Topic: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
Thread-Index: AQHYlvDbtc+ZRltIJ0aLh8309XRJHq19v/4AgAH6ysCABGBxgIAAXgJggADL6wCAANDg0IAAHh0AgAAFiTA=
Date:   Tue, 19 Jul 2022 21:31:09 +0000
Message-ID: <AM9PR04MB827406F77DC21142FF340667898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220713194331.95971-1-shenwei.wang@nxp.com>
 <20220713194331.95971-2-shenwei.wang@nxp.com>
 <2631b0be-76a4-98b1-04cb-c4b70f99ca93@linaro.org>
 <AM9PR04MB8274E1AE88FCD501F9DCA621898B9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <13bc292a-6043-b916-7d29-5c4784877c0b@linaro.org>
 <AM9PR04MB827453674A7D832E06CAA63F898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <3e4e1d8b-5081-3049-598f-56c146a5af95@linaro.org>
 <AM9PR04MB82740C5885999A549DC33F80898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <f5e2876d-f004-8fbf-d9af-15ece34afcb9@linaro.org>
In-Reply-To: <f5e2876d-f004-8fbf-d9af-15ece34afcb9@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a799d4f1-67b8-496b-c31d-08da69cdff2b
x-ms-traffictypediagnostic: AM6PR04MB6213:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c2KZ81FiijfoZ3rRIr8sSTPSqykTp3Oq2MJWwz3CCXCHBfIYi2qFTBNCA8mj15YRhuqAexhPLzxzObCA0kSTU90ixm39MRTT+UGPaj/awXPEdvTDjp19+6U/GcsiUO9GEHG2oatzsD8bmoNPGc3hmuK4dmKuYN4lKHgDKpCxwp7K5I2spPh7Xo/oqz8d0ayaKhGNLjO2IgekKWrQ/67YG6DIXmGEAGcjL/wRGHjdBjcKqe8HllPlUgib+n4wlGvfMzCtgMQqPt5EyvoWGxbM96OOH/Dnb9winoUai7aCt6FgXe6htRMH/73XP7B7vhymgOAzftWM2c6W5I83TKcwIWzn4XJMEmC44Jq0lBQW4HWCL30RfmfrW7PfsROmvuahqxVLpPfMhZyCSkBnDHJAxj4qgpqlkosUQnVWrn/4H4Pl+hFsDDvIWbmBWBN/co1KBrD7l2xg3nZrdTeOpq64+E5STMvX/yMHikHQmwkL0F36GV3waMdBrPQ/Hbk3yQatfqJ+sgPc2eqJOY+3m9LmbJ4AwQE5AdjVbjldtlkmng95MD52k4JEE/AmJBcR+2fQxnmeSo4OCZ8Oyz3g9CgmHSSwZlaVUFQo4pNFaJZLVZMkjUIQTyNMK2tYb2BOEW+aqO34k8MlhblB72cSMjrmAS0X9WNr6O8Z6J78carZcpkyS0bGaz7vJ4+5ZdNoA7/db9o+rQEeYAteeK6/uSAxyXO33ehWSxHKyjfjfqT99SoT5AorN0dcmrCy+g+P3F126fKcJU9Y9ar2k1iCj9QVgkMQAYBlqauSfGXZB+czZvwiT5CsIgfZx65ri6Tm3Q2hUEAfKoVv80cOXZLLSE+BmA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(5660300002)(9686003)(478600001)(71200400001)(8936002)(66476007)(86362001)(33656002)(53546011)(55236004)(7696005)(6506007)(44832011)(52536014)(41300700001)(2906002)(26005)(55016003)(122000001)(38100700002)(38070700005)(83380400001)(186003)(6636002)(110136005)(54906003)(316002)(4326008)(8676002)(64756008)(76116006)(66446008)(66946007)(66556008)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?elJa+K5qiSbxfxaP2DhQYvrGF5Kdt+2YEnjBfmBKEFmcH02qltCpGorGSx0z?=
 =?us-ascii?Q?3VK335xPRq0x4C71r1CrMbjHswo/tpuu68kHB2N5X1P2cjYOIC/fAKHegFfg?=
 =?us-ascii?Q?vIIBexXAC9f/obL7KQSP6+kG9OrmK0Jj4V2xvFXI3oHYiunjRL2+7yqz51LB?=
 =?us-ascii?Q?2ckXUPPK+oR+ME1c4ekqyvKZZRGoJpGxdSRhKX7PogV9r+tBTb6XABThLN9E?=
 =?us-ascii?Q?JGrSL0+rRAZNhr0GY+1ytaOyEwPgspdd/DahuxbjqFYtWOC9I9WIRdWMwG1s?=
 =?us-ascii?Q?I8g/w0dbtjl/zBqfsz+zCjNbWGC2I7BW1NwauCrmmdP7pPqktV46V+BjoAih?=
 =?us-ascii?Q?H1cP2231L2LBx0+hDouC74sh1HMG0tOv20KWIGyMS0sBc2rUsl2wCz/MlnbG?=
 =?us-ascii?Q?XQxlmQY15xSuAzBV0Nullhl9LrqLf9OJBYoURLCbVUX+rm4H/F5RrW9GKcUS?=
 =?us-ascii?Q?ytWgLGTDXzkvEen9Nauiw6jZc6P+ZCQhc+87kD94YAam7gcv1685ZKlM0j9J?=
 =?us-ascii?Q?KJNprg4fjrynAvt4MBdYv3ja4PQB4+tZplIpWuVzH3u1cok25V+IizDg/yO9?=
 =?us-ascii?Q?1Cuz6eXGbCkmYwJkmUbHAzNdBkqEGbqK3k32f6jwM+T7ijfeCdh1lymQ2Vaw?=
 =?us-ascii?Q?Jyer+QlcqfhPIOHo/xjONPOaYeBs+nMKB8usTYVZ1Ti4uZCJg8ySferSiAH7?=
 =?us-ascii?Q?tkmhf1bDNA9BiHeKuHx1sc0WuY8JGbd4eMhgbBRuA20+yszIacNXtRIl+K2Q?=
 =?us-ascii?Q?QvsDl3w2S0j24v73aqokVpBIi6cdELZrkm4pGs1an0LKxFNbVvZ8n++B0d+E?=
 =?us-ascii?Q?t5HPinr0nqUkC3Zbo6LuJtUy2N+R9DuA+EFVXsJl+ieM+CfRHIRAQj1mhvED?=
 =?us-ascii?Q?bI6Wq76L/piUeMZrPigcX1nQRdnl2tyKjYMI9enwQHIdTqnEmhTpHTV++LRO?=
 =?us-ascii?Q?qfzdSyZ6cRjK3HNz4Yss+Bdx+rTMpLegdy3/zArEvWkDKQPs9GhGgYRKAdw6?=
 =?us-ascii?Q?NxnKs71ynnYdY42zftfo/KPpkwF09HwRV0xJxSJK6Oq9AOsU+wFv7WVeaYPb?=
 =?us-ascii?Q?2iEk/5CdYyPjSDkp2nWrN9XFpe88pVsVGjiI1FH2bSIUGUOAcHOBYN+UrkFR?=
 =?us-ascii?Q?GcopemzPHhVuYsYgDIqyW07nyHVlB3VSzJ1282xR86i2D1AFFvLuFK7ZcClb?=
 =?us-ascii?Q?aq1CNfT0tWHPdylotdUXiE8o6jx7KQBkQwDAralzBt81ziEouB0xe85Dig77?=
 =?us-ascii?Q?pWzywUD1UYQ5Zyag62xRqHMiVApRY2Y13lMJY+9ZZeJC2oTtWEAw+Zb98Vcb?=
 =?us-ascii?Q?VfCQJllbbQJ8SIYUABF4ueDZr9iYBObx3ls7dWahYpJiQRHM8PvsE3oiq2vJ?=
 =?us-ascii?Q?WeBkdsBsuSlg+ra9pvMmcz4bVueha14BBheyuW5n3cXh+WwmwOj4AXzkZ8Re?=
 =?us-ascii?Q?Ak8OXsVU5widI8YuuknlSj18KY0n89o3Z+lVbKJHHNfByq3kYndPEBqWOhmA?=
 =?us-ascii?Q?f1KNCt+P01+iJCGg/ZqjlnM5DIAG29T/0mtMhy7SDaGQf4UYEpao0TOzQDmg?=
 =?us-ascii?Q?/4j5bXJm25bxyflRwzRfZpqx3Pa86zIvXK29XzHg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a799d4f1-67b8-496b-c31d-08da69cdff2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 21:31:09.5992
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nv4DDjpCMcQKFnuIHEBzmWsIRw4uWQbR/seN7uUcTgGljFsZj6XVVt7Zd+0TJ0elC6N4iIOQmStlPW+d3Wag6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6213
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Tuesday, July 19, 2022 3:49 PM
> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> >>>>>>> +<dt-bindings/firmware/imx/rsrc.h>
> >>>>>>> +#include <dt-bindings/gpio/gpio.h> #include
> >>>>>>> +<dt-bindings/interrupt-controller/arm-gic.h>
> >>>>>>> +#include <dt-bindings/input/input.h> #include
> >>>>>>> +<dt-bindings/pinctrl/pads-imx8dxl.h>
> >>>>>>> +#include <dt-bindings/thermal/thermal.h>
> >>>>>>> +
> >>>>>>> +/ {
> >>>>>>> +     interrupt-parent =3D <&gic>;
> >>>>>>> +     #address-cells =3D <2>;
> >>>>>>> +     #size-cells =3D <2>;
> >>>>>>> +
> >>>>>>> +     aliases {
> >>>>>>> +             ethernet0 =3D &fec1;
> >>>>>>> +             ethernet1 =3D &eqos;
> >>>>>>> +             gpio0 =3D &lsio_gpio0;
> >>>>>>> +             gpio1 =3D &lsio_gpio1;
> >>>>>>> +             gpio2 =3D &lsio_gpio2;
> >>>>>>> +             gpio3 =3D &lsio_gpio3;
> >>>>>>> +             gpio4 =3D &lsio_gpio4;
> >>>>>>> +             gpio5 =3D &lsio_gpio5;
> >>>>>>> +             gpio6 =3D &lsio_gpio6;
> >>>>>>> +             gpio7 =3D &lsio_gpio7;> +         i2c2 =3D &i2c2;
> >>>>>>> +             i2c3 =3D &i2c3;
> >>>>>>
> >>>>>> Board aliases, not SoC.
> >>>>>
> >>>>> We take these as  the SoC aliases because we want to have the same
> >>>>> alias for
> >>>> the specific IP instance independent of the board design. All the
> >>>> i.mx SoCs use the same rule.
> >>>>
> >>>> UART, most likely also I2C and SPI are board design dependent. Just
> >>>> because error was made in several other files, it is not a reason
> >>>> to make it again, so the last argument is irrelevant.
> >>>>
> >>>
> >>> The SoC alias here can give a specific IP module a uniform device
> >>> file name
> >> independent of board design.
> >>
> >> It can, yet the specific alias depends on the usage of interfaces on
> >> the board, thus is board dependent.
> >
> > No matter how you use the interface on the board, you can still use the=
 SoC
> alias by default. If a user doesn't like some of the default SoC alias, h=
e can re-
> define those in his board alias. As I know, so far most of our customers =
just use
> the SoC alias with no changes.
>=20
> This is the argument of - let's put all possible stuff and many not exist=
ing devices
> like 10 different LCD panels to DTSI because customers can always enable =
what
> they want. Nope.

You are giving an improper example here. We are talking about the IP module=
s inside the SoC, but you involved the LCD panels which are outside the SoC=
.  For LCD panels, you should define them in the board level for sure.
...
>=20
> >
> >>
> >>
> > There is nothing wrong to have a SoC alias by default if those default =
aliases
> are most commonly accepted in the real products.  And this choice doesn't
> prevent a user to have a customized board alias if he wants.  This is a m=
ore
> flexible solution so far if you couldn't point out a concrete disadvantag=
e.
>=20
> Same misleading argument - putting not existing stuff to DTSI is not adva=
ntage
> and does not give flexibility. DTSI should reflect what SoC provides and =
aliases
> should represent what is available to the user, e.g. via board connectors=
. Adding
> 10 aliases out of which 9 are for
> *disabled* elements contradicts it.

We give a default SoC alias because most of the users will take the alias a=
s is. This would make the future support more clearer and much easier. When=
 we talk about the "/dev/ttyLP1", it is always LPUART1, the "/dev/i2c-2" is=
 always i2c2 in SoC.

>=20
> Again, the same as clock-frequency, NXP is not special to receive some ty=
pe of
> exceptions. It seems you want your DTS to be treated differently, but thi=
s is not
> how upstream process looks like.

I don't want to be treated differently. What I did for the clock part is ju=
st following the upstreaming ones like i.mx8qxp, i.mx8mm, etc. I am actuall=
y looking for a consistent rule for this part.

Thanks,
Shenwei

>=20
> Best regards,
> Krzysztof
