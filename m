Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 345D757A6FB
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 21:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235514AbiGSTNZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 15:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234410AbiGSTNY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 15:13:24 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2042.outbound.protection.outlook.com [40.107.21.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A55445F48
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 12:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjsvEjkSThM1Oo2p9ZezHlQwSsLVXs9eciMwAgCIJQhscBZgEW6f3PTgxB6geitnk6NRRmjICSCbAD71p4V0+oke74eP2cEpTEVEUoAetUPXJkxJQVUNvEcO7rHl7mTztPOI3jIriCqmd5xJhJMpJBAIb2m1kAXFcdabugo5qbclC/n9H4g0wd3NEmQQ8769H0AXfB7tNB8pTqKHO1vWzeLF/JXRnqqypFDFZ7IPME1qQEdDFuugbav7jGLwfREL8JgoKNJ2/5TEZUyzxEykRb03BNjx6dgbvZm8iciK9ajUek4wOiJ1q/P+svC8XzXYd+GxHfGTEHjuuuwwDs3EMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f3vzgXo7wRB3jdmTRRRX1vv1XLl84hBFsm0EF4TRWmg=;
 b=gjWeRqq0wAwEbzRn9c6QWEebM1CbSjJtF9ijdlp+qilZi8TxE/BYkF5TNaKx2N5ZgPTE/t22JZB9cO4NuW+oEPl/Ff+0qm+1IsVl3zQO2Z/roRAOc3LuLJ1raZxqOoWRSTak9crHMvQWD9noKOJX13aaZWKHKDAjD5TEHfamPVK5WxfMldJ1IlBOn8jHLrDcFKfjBXHl6sCk3PjGYCjv0j3SKmgwpwv/8Epf6b00sKizW3fUNHkp9z8aRT8ZQKi+/NQr1RVVcDCf4WmpIby2HMVSrE6RofqrI5GotmQiS0Pop9AAncrNPAcpFdsXuKXm1F0uT2QiLpXs1ZBBmJ47UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f3vzgXo7wRB3jdmTRRRX1vv1XLl84hBFsm0EF4TRWmg=;
 b=VDF4NA9frDwbB2L/3YxfNZGNVrTC28B9/AqkOUp/+48xV7A3go7MbI141GT7t4rrIjZI5Rhz1A3gPfJauKPIs9U6yP/9o92U40Ng/mF/+jzniSClQyGVm67GdGad7Q8VNHZtfIdDEFpFo3oIhyLS7hqLUm9xPUDrqKfs53z0mdQ=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DU0PR04MB9348.eurprd04.prod.outlook.com (2603:10a6:10:358::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 19:13:18 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.025; Tue, 19 Jul 2022
 19:13:18 +0000
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
Thread-Index: AQHYlvDbtc+ZRltIJ0aLh8309XRJHq19v/4AgAH6ysCABGBxgIAAXgJggADL6wCAANDg0A==
Date:   Tue, 19 Jul 2022 19:13:18 +0000
Message-ID: <AM9PR04MB82740C5885999A549DC33F80898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220713194331.95971-1-shenwei.wang@nxp.com>
 <20220713194331.95971-2-shenwei.wang@nxp.com>
 <2631b0be-76a4-98b1-04cb-c4b70f99ca93@linaro.org>
 <AM9PR04MB8274E1AE88FCD501F9DCA621898B9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <13bc292a-6043-b916-7d29-5c4784877c0b@linaro.org>
 <AM9PR04MB827453674A7D832E06CAA63F898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <3e4e1d8b-5081-3049-598f-56c146a5af95@linaro.org>
In-Reply-To: <3e4e1d8b-5081-3049-598f-56c146a5af95@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e0df3d4-f1ea-4926-1973-08da69babd05
x-ms-traffictypediagnostic: DU0PR04MB9348:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kj5Ry1Ex6yDVW4Tnd0MyIVP/ai57i+Ylyc8o1MU2sbC8jufus3TB68OBYGsH8BJKzM4Ea7/kXq6NZnBsFRa4n0UUCFQBbVdCm/GlZ1+6zbQN/N1hPZT84mapgX9XJncsGW5SmnmnYuZaAKdZ7k5pHZRZPIUbShzMbd1vyBgb4NtWTB2GJSAUIPdFnEeEJTFhEspCCoVCxdaNUfsl5sT3jDgWfr8CqBJmDLfoII9H4LRtUXBojFkA9OtZPUY/SxboSrz4ZCjeK7Uf9xtqQ+jU+2ceSF1SuHrPEinEs4NkFHeE1P79L7qeycGdA2rnblilfi10A9PndBETmPIzLwg8K6C58C596khIAjdsNkmORWPesELAgjokxBNiUE59yzzoEoOFwHtv/nqg9XY/UB8LwEC+k3/VdGRhH+AoSejasX8YU8stbY0X3fHaZHGuaH0BmWJr7/LSGqRtS84Q+3O6OqgOnNQu1PiB5SvTRqYkEzYBF4VkoT8mZoqbikuKErpffgYUT+A1anq3CAf5tUXlx9XEYvzJKOQLPLHnppLY5rfLT0w50Mf20pziq3nwSEv0TsqQ5iHDkWF+kd+oLXBYIpLOjiDronhU0TbS6mujjc0mjRHk4IMoWgWy76pTSI+sndLPRYNgSxSevgpnv9YmW/CLU7Y7SgIAu8xGLiQ/si1li2ylE5FZmoAU+Y4BFsXlU0jzFNovJH0y6szZkN7LCiW5yMRhlNX/x3fBbWK+xtIwlNKEBs2a4mF8HLA0pxm7lMTL5+YXHY0SH0WYS7HAqNvGYfuRTPTa9BeW5t985CobI1tJg6peshjqFFfZ9Ic2MJT4MfroYhWfd4INXl9Ng4m6ZxfLd0RJaTqBHEyFoUI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(122000001)(316002)(45080400002)(6636002)(38100700002)(71200400001)(76116006)(38070700005)(54906003)(66556008)(66946007)(64756008)(4326008)(110136005)(55016003)(66446008)(8676002)(66476007)(478600001)(83380400001)(44832011)(9686003)(33656002)(41300700001)(2906002)(55236004)(966005)(8936002)(5660300002)(26005)(186003)(52536014)(7696005)(86362001)(53546011)(6506007)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mxKkt6ORgCrIeNXjDTynajvo9/iJcM0DoO0eliCi6JIEqkuQkZl3B4F/hG6+?=
 =?us-ascii?Q?rKBPuik/J8vsWtp756SG2Hu2Q5tSy79EuVCrRm+24J+ezqPFLmzjFsB78v7n?=
 =?us-ascii?Q?Xqpd5qGiIxk32Bkmj3chsTbd35HGofn+rw6giT6S08BDCDAJZvel0YdAd9gu?=
 =?us-ascii?Q?/rd7iZGWs+uq4pseoqtyX4cHWydV/hIgnlhnC3am9jRVpPp3Ez/x4k+IGSeL?=
 =?us-ascii?Q?anExNr6BIvDHSGrL4d/MM7MN3TuBHKmdMetvoBFyY2gTa/OFA6j/VyWQpOSS?=
 =?us-ascii?Q?5bKFFatJoeFREYKhiIzsecJCvFNIu4YCG/R2OAoLv4RLdWdFI1hCPLSHb5Go?=
 =?us-ascii?Q?PEd+HcAu0vY2UOp5nN3M1+i4L8RNTnyxlXTq0JoWe/lk/dtX/IA8Qd0PAgCa?=
 =?us-ascii?Q?iqvDJl7kBOfx7E8hZa3cVFd6i/zVTjTqU88NUw0/phVSLFxWIwLYcNjic+kH?=
 =?us-ascii?Q?FqdB/S2f4i42jWbVXMKqy2ILCIoo+z9S7sMteQlh50xHelGXgmgPOIVQ6jgP?=
 =?us-ascii?Q?TZ8Bgcj1+rNmYU4e3nrfoQAN9GIw+xZTo1qQuf7jK9M+ygCi3Hu71qoGkLeM?=
 =?us-ascii?Q?SFXGKwf/1cns99NV94pu9CO1eZPQFfxASjiQxJyEn7B2HxkaeQzxIomqfMlI?=
 =?us-ascii?Q?AdebwEQg6A4eSGE2S2QIFBhYVoiEOdNmPYhYnQrfYEdIEik7lce/G89WaAu8?=
 =?us-ascii?Q?jMdsu01A3kSezl4/xfZYWNkecRoKeVf6URKRLROjkPJi3nzaHWc5zmK2LJAc?=
 =?us-ascii?Q?0dcq/mNDNYK2yCsX0sDg3nc9Zxx5YGiwnyH5a+CNy+j93V1omOwZ0Q1OmkMH?=
 =?us-ascii?Q?H/gUFeHrZxgHTEQaHc8PgqRc4LEHcxSrzCg/P6BcAf7+wumQZMNQCiKYjMfF?=
 =?us-ascii?Q?Y6nMyWib83efPdMDlMi5ikul1rDIq+8wem4TBWZDah8RT+S8nkOs5r9WKrBx?=
 =?us-ascii?Q?10HZGiBkkgqOfDGYh4Z4ME3zt+Uc8Jg9OSBHzj4Xg43iYqGMR+Tp4Z8XqGLX?=
 =?us-ascii?Q?m/KcKAzRKqyMn9oKd74AVBOBk5oyHkO5uyLEf01IHvQOo1mMDpqdOBER57Fk?=
 =?us-ascii?Q?s7P3a6H4fO8gx8mMIGKNekOPOrXBeGJCTrLaWa7Js5Az2CJzxDjCH4hjkZY9?=
 =?us-ascii?Q?+kBIWfNKVo5VgMsPj6eHlcCQPb3APeeAKs/QrfGq9N0yDjxBRYzDTUv4hBzR?=
 =?us-ascii?Q?TErf8Ph1SJUK/O+LIJk4jI3KwhUZhokBJFU/9BosQUKrQruxD2uIgAN/IDEK?=
 =?us-ascii?Q?pM6rio6k1hrQfudghSL766jjLDFKIDyIgLp5np3vSSDQ1wZluF8VqKofmINE?=
 =?us-ascii?Q?eO0A9EsRHK8u+Xe1u8lbu9WU5JNWFaYYXhDPe4D5P5TyOUiEwWf0pcG6q/fF?=
 =?us-ascii?Q?MN+6AQ3Bj7em3gq/9NPOK1SAAMznupVDUI8xlutpzVGRXypLI5+0W+eZHk0B?=
 =?us-ascii?Q?6NeC+ZneBkoY52yBg2qWV9yXNIvmqen6x2/9TrsLV2hAYKDi79Zv79zEBWMs?=
 =?us-ascii?Q?IhadJm1m7QuJxdQP2ZSK7ADNp60SvIUAsuMlV49lFlQ90sxkAkquOcv9saD0?=
 =?us-ascii?Q?sludxnaLRyK5y9sIhgZPpx1EGODRc9l5vktVkhVb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e0df3d4-f1ea-4926-1973-08da69babd05
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 19:13:18.2251
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /BSJQ/KMLa3UySyV8bxGEYCtDo6K2OKi7j2q7ULE/GwgTW55y0JqAKa/J6n+ETox0WG6e29IqzoFaj+Emk9G9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR04MB9348
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
> Sent: Tuesday, July 19, 2022 1:34 AM
> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
> Cc: dl-linux-imx <linux-imx@nxp.com>; devicetree@vger.kernel.org
> Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
>=20
> Caution: EXT Email
>=20
> On 18/07/2022 21:08, Shenwei Wang wrote:
> >
> >
> >> -----Original Message-----
> >> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Sent: Monday, July 18, 2022 7:48 AM
> >> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> >> <robh+dt@kernel.org>; Krzysztof Kozlowski
> >> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> >> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> >> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
> >> Cc: dl-linux-imx <linux-imx@nxp.com>
> >> Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl
> >> support
> >>
> >> Caution: EXT Email
> >>
> >> On 15/07/2022 20:04, Shenwei Wang wrote:
> >>> Hi Krzysztorf
> >>>
> >>>> -----Original Message-----
> >>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>>> Sent: Thursday, July 14, 2022 6:44 AM
> >>>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> >>>> <robh+dt@kernel.org>; Krzysztof Kozlowski
> >>>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo
> >>>> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> >>>> Pengutronix Kernel Team <kernel@pengutronix.de>; Peng Fan
> >>>> <peng.fan@nxp.com>
> >>>> Cc: dl-linux-imx <linux-imx@nxp.com>
> >>>> Subject: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
> >>>>
> >>>> Caution: EXT Email
> >>>>
> >>>>> +<dt-bindings/firmware/imx/rsrc.h>
> >>>>> +#include <dt-bindings/gpio/gpio.h> #include
> >>>>> +<dt-bindings/interrupt-controller/arm-gic.h>
> >>>>> +#include <dt-bindings/input/input.h> #include
> >>>>> +<dt-bindings/pinctrl/pads-imx8dxl.h>
> >>>>> +#include <dt-bindings/thermal/thermal.h>
> >>>>> +
> >>>>> +/ {
> >>>>> +     interrupt-parent =3D <&gic>;
> >>>>> +     #address-cells =3D <2>;
> >>>>> +     #size-cells =3D <2>;
> >>>>> +
> >>>>> +     aliases {
> >>>>> +             ethernet0 =3D &fec1;
> >>>>> +             ethernet1 =3D &eqos;
> >>>>> +             gpio0 =3D &lsio_gpio0;
> >>>>> +             gpio1 =3D &lsio_gpio1;
> >>>>> +             gpio2 =3D &lsio_gpio2;
> >>>>> +             gpio3 =3D &lsio_gpio3;
> >>>>> +             gpio4 =3D &lsio_gpio4;
> >>>>> +             gpio5 =3D &lsio_gpio5;
> >>>>> +             gpio6 =3D &lsio_gpio6;
> >>>>> +             gpio7 =3D &lsio_gpio7;> +         i2c2 =3D &i2c2;
> >>>>> +             i2c3 =3D &i2c3;
> >>>>
> >>>> Board aliases, not SoC.
> >>>
> >>> We take these as  the SoC aliases because we want to have the same
> >>> alias for
> >> the specific IP instance independent of the board design. All the
> >> i.mx SoCs use the same rule.
> >>
> >> UART, most likely also I2C and SPI are board design dependent. Just
> >> because error was made in several other files, it is not a reason to
> >> make it again, so the last argument is irrelevant.
> >>
> >
> > The SoC alias here can give a specific IP module a uniform device file =
name
> independent of board design.
>=20
> It can, yet the specific alias depends on the usage of interfaces on the =
board,
> thus is board dependent.

No matter how you use the interface on the board, you can still use the SoC=
 alias by default. If a user doesn't like some of the default SoC alias, he=
 can re-define those in his board alias. As I know, so far most of our cust=
omers just use the SoC alias with no changes.

>=20
>=20
> >  Can you please let me know what problems are discovered with the SoC a=
lias
> taking the UART as an example?
>=20
> Arnd explained it nicely:
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore.=
kern
> el.org%2Flinux-rockchip%2FCAK8P3a25iYksubCnQb1-
> e5yj%3DcrEsK37RB9Hn4ZGZMwcVVrG7g%40mail.gmail.com%2F&amp;data=3D05
> %7C01%7Cshenwei.wang%40nxp.com%7C2b0eb5df69464b445b5d08da6950a8
> 83%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6379380923851874
> 99%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL
> CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3Dv45G22t
> TdVszPMb3ok4EAyLgFnzz%2Fj0U4QZMTFjpZ%2FI%3D&amp;reserved=3D0
>

There is nothing wrong to have a SoC alias by default if those default alia=
ses are most commonly accepted in the real products.  And this choice doesn=
't prevent a user to have a customized board alias if he wants.  This is a =
more flexible solution so far if you couldn't point out a concrete disadvan=
tage.
=20
>=20
> Best regards,
> Krzysztof
