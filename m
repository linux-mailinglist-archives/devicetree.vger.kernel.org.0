Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AA41755968
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 04:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbjGQCJ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 22:09:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjGQCJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 22:09:56 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2066.outbound.protection.outlook.com [40.107.6.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F699B
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 19:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0/YAUkWQnD5WiA4Wd5yotwsuloHaSR1bHaP/VoLP45ooatm9xQUp3W24He0InwFTzkGaRhsB6dUHSk5GdjproYeRbgV1Qh6QZ1zhVsy6sZ+Jbqmm4tHtpsXJHtMmeNjr132p8f5hTyH9wMKZu+/MH4Jf2rPDqr2E5eaRYs7//QNJ+sGflIi2OY8by5fPKPbOAmh4f1CZ83d0BR0rcSzXAMhiTkUssFJLilpXXyE7iYOHpKogVmMwyZTPstbbJKrdNt1wjuOH+JfAB+HLIJSlRGE0z0H1fLsjYLS0yaqbxY2vMNCXrseMOnN44SOdrNncb+N7eYMn3lzLYf0T9/ssw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u5b/jVUirMHuzwkRkQr4g53b07q6aM+VgF9Vu0ZjhEE=;
 b=kT+cDN98dyW3RHV46O6Mmowwvo6cgoyfapN6no9HxYrGkc+5G5CumWAKRGLy8bR2Q1hcLeW5e1FlEoKEGyXB1le1BOC3Myxz2jCCLkxjy3Ep/W8nAUXX+xIu0Tb7zV1HctelEKOeEZHWgtZpQbQwgKiq+3jkAgUsbHBIy3ZuznWfcSyXYaiBBKc7E9VeAv8abYHK9IHcKWg7xavrvgNBm4zTCMgY5s/O2mZkpJRstud8c+Y9CxnIjNzlZyhCO7PhBlVm0AVuC036MtTkgBGP38YURIIJYSgCdJNK9t9xUHvxem3vclCr7qYpud0Jt65s/cTwOEE1ilpC8Asm7NqZHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u5b/jVUirMHuzwkRkQr4g53b07q6aM+VgF9Vu0ZjhEE=;
 b=IXrILF1r6ShOq2c9gXxQf4uEzYAIACAimxOL2qvQB6iUleiPRrzPhC6Pu/EVjXXxGjX8RdCtrhNgiJuL15apNDyTAlE3sQXbVMmOj7LcNjWxLHgxedEDPUvTBuucYeJI4HwBcpnABmBFODEZ60gALuQPUGg7XacJL6gXMRP+EIo=
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AS8PR04MB7655.eurprd04.prod.outlook.com (2603:10a6:20b:292::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 02:09:52 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::473a:28:1d98:10ab]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::473a:28:1d98:10ab%5]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 02:09:51 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, Jun Li <jun.li@nxp.com>
Subject: RE: [EXT] Re: [PATCH] ARM: dts: imx6sll: fix wrong property name in
 usbphy node
Thread-Topic: [EXT] Re: [PATCH] ARM: dts: imx6sll: fix wrong property name in
 usbphy node
Thread-Index: AQHZmDvct74eaRw2tE2NrTxNRbdaKK+9U9MAgAAi3OA=
Date:   Mon, 17 Jul 2023 02:09:51 +0000
Message-ID: <DB7PR04MB45056892E42537C403C9D4F88C3BA@DB7PR04MB4505.eurprd04.prod.outlook.com>
References: <20230606060106.2948626-1-xu.yang_2@nxp.com>
 <20230717000342.GA9559@dragon>
In-Reply-To: <20230717000342.GA9559@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB4505:EE_|AS8PR04MB7655:EE_
x-ms-office365-filtering-correlation-id: cc3793b8-f85e-4f8f-d464-08db866ae7b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZasaxXocqDFzlOImLrW2bwd6rLK1vLjZBU2kxR2D1f/Hcmr45/L503fgrM3Ehaj5F293TtRbVcZfMweEFYgrbpOk1GWNYdmgkI+gWZeHEXCLOK22tZKmBOi31n+imxA0Tv/SRAZR0MOXUUij2aGgR7vJmgNKXnfoM6gtZT9sdGmUyM0ms9Pt6IrbAhpT3SZBlh/klf/cb7qMkNRZ4AA7j4aIevttaHL/ZFPQ0Fv4X0xkCbPIIq20t9Z5Ir4KHh4xL243RjamG5ECUBsxzih1OqYZZ6AmabXAhGGXIbIsQhLlV1JS8lamBdqlluw7wpirq4nSsVSwY6rnBknVXWrfBP9y33/fcoZUA0omg4At+fSLjJkdeSzWlKVQTVD62UhhPG9kag5JueTK+iyQDt+XPVL6fLwkICcZ9jMi+ay1mHGtR093LVOVuh5E6DmmZz0zmUdc60PUYm5MZ814TgXoDubMs4IuRuD4VL1zjoXNFwOUFL+vbMqksW4ZyXF6LY/Nisrc00UIEe+EGSC59KpqHeSoct0rVDADdZ+vHoEI3bj2m3mvwWqSiqOSGXXftw5UNPWVVEMZmztG6RNtZrq8xDHPY24M2Ba0LgTaQyoeW4HbBZ/L9dMRnBQfWwj0gBoZRju0RLo4uN0SaRH0egwnjg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(366004)(396003)(136003)(346002)(451199021)(8676002)(316002)(8936002)(66556008)(5660300002)(52536014)(41300700001)(76116006)(66946007)(4326008)(4744005)(478600001)(71200400001)(2906002)(7696005)(54906003)(26005)(6506007)(9686003)(186003)(66476007)(64756008)(6916009)(66446008)(83380400001)(55016003)(122000001)(38100700002)(38070700005)(33656002)(86362001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fstbrm3YMLH+zVWo1folPyJXE8V5w74melE4aOo6pfMJCXRxh2jkGWqZ1WAG?=
 =?us-ascii?Q?m/YybhkgW1EUQSWanIaZKlZnf6joSI0v6v0GTWMpiWWhHCUpZinvbBCPXLqM?=
 =?us-ascii?Q?4cTdg7BeLC363T19tJUfbD2x05zzT/NvGqUzIjcLbgQTNZQjsLTym57MeFkJ?=
 =?us-ascii?Q?KzpSCDxDdv1YofUeErUpP2rOCqYu0mpiXtBfqWSstP2LWwvWHJEQiL9HuKMu?=
 =?us-ascii?Q?mSDgPbQNCpEKlbPLIXtlEmpuKWmj2C6X1zTNBu+bnbI66QfKCkmooOahNoyr?=
 =?us-ascii?Q?8YjRXAXj3r33R06XuIt/dza2Y+4hSjJa74mAoH+f0xipySNcel46tJA343Na?=
 =?us-ascii?Q?r7JyPiorahP8WF7iDZQpS8C/fZtC/Gu6PFTu8pU4Q8Qbzk1Bcvq+4QN5KLqz?=
 =?us-ascii?Q?I3+4fjNMq17Zi0iEaHMwD1HUPG/Ym1yELG3rrvX8+dUd40zNSdNf+D+6MWpr?=
 =?us-ascii?Q?2Z6AMUvDQ1kTTBpJi4vsCdXMAT0TTZsTw0G3lojugu+wswmwltzcJ61ZHIb1?=
 =?us-ascii?Q?E816kZJRzdNYsaB5eifSCFHttjPQ1SGkiWXFFcFjjqiNe+tJ4c35dG8VNsi3?=
 =?us-ascii?Q?PiCKJiOqphaM9bmAWPdeJx1HnHQeyIRFkwROm69o2Ladnb+1o5JY29eI6/Wp?=
 =?us-ascii?Q?dsvE8QeANkwJv5UEqgEpMQ4FU28BdaCUqisB6Pf6byex6Ya3he14Fhzp1SX3?=
 =?us-ascii?Q?1iyh8GYoWdxeD4dmj+DkSTr+r6Ag0N6Ha9b4ee8cW2v1MhwPLY258+m6qVCx?=
 =?us-ascii?Q?mErGdR5WjFT9xPQmCXreTtVmIPzmip8e7EQAes3X8sji23azKvADaPW/ZhnU?=
 =?us-ascii?Q?AsqcfP314xJn7Qhny1skcYuEQVrCGaunHAHfw+FkUwZNePf/VgwAe0Tzvu2S?=
 =?us-ascii?Q?EstTDxF1GWQ+xZWj7w2g+21KaoxEwCAH6Y0pgU6PbNrjQzvWsd2uY8ulIYFb?=
 =?us-ascii?Q?t7ubgbwAY5EPw2yVNf/XJC7c9ocfXfDbqHS4rc2lU3ung5uLU2d6556XXcAB?=
 =?us-ascii?Q?5V9TlFKYhC9ZPc4uT4UfuF4gBpJpX+8AGeYA7NgPtvJrt1Xh9LNv+jQ9+YU1?=
 =?us-ascii?Q?AqPLd7o2XMCFSv+sY1mnr6A+zjaX+rgeRNPkLRTotJg8EfT0lvjxU5u6hPsK?=
 =?us-ascii?Q?eLLzJddxfF7sDp8iqlPvvFz9gJRyllpExRUozmOYYh3t30weH/GacZ2fM30R?=
 =?us-ascii?Q?/XCOvZz9FZjbYFK3Oah2m0bziNXzFsPuE5l4oyJOOBZ1ydaiv66Fi8mXTk7G?=
 =?us-ascii?Q?KiVYUaSGm8BWcB09OY46HJF4TqR273L2oAlxJ2dR7FVzWvcXk+fAy2Szg7KP?=
 =?us-ascii?Q?n2QP8eiS1rFrhXr1E7bjU7Fry+MtByf1Cp5D24YtKH1zDzXZ7Hn/njN0NwRY?=
 =?us-ascii?Q?I4G8cMkkyzDdp0/VGrOZcHhk6H0vI+cGe1Q4tva03bkkoGFYURnnHOoni/uJ?=
 =?us-ascii?Q?cpiOy2QgQd0LhqCG9G2o44ZUzoN6OupD+3yiEPawdNfPO5xKcRPEuiE0V8ny?=
 =?us-ascii?Q?2Qxg2WEMB9HTbKYv4HfdwKWDFtZ1Q3JmQT12/OFI1ImxYjCFlySWkMEAZ440?=
 =?us-ascii?Q?CorX8qjlvDv0jJ+vPio=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3793b8-f85e-4f8f-d464-08db866ae7b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2023 02:09:51.4723
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YSvpO8wt+aj4ePauoHTdZ/jd5lWhvaosjQb5KDhI0nqQD81e4XUqrdTZVorgVLJvd9FMiRW1ydkEH7cis7Kjsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7655
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> -----Original Message-----
> On Tue, Jun 06, 2023 at 02:01:06PM +0800, Xu Yang wrote:
> > Property name "phy-3p0-supply" is used instead of "phy-reg_3p0-supply".
> >
> > Fixes: 9f30b6b1a957 ("ARM: dts: imx: Add basic dtsi file for imx6sll")
> > cc: <stable@vger.kernel.org>
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
>=20
> It doesn't apply to v6.5-rc1.  Could you rebase and resend?

Sure.

Best Regards,
Xu Yang

>=20
> Shawn
>=20
> > ---
> >  arch/arm/boot/dts/imx6sll.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll=
.dtsi
> > index 2873369a57c0..3659fd5ecfa6 100644
> > --- a/arch/arm/boot/dts/imx6sll.dtsi
> > +++ b/arch/arm/boot/dts/imx6sll.dtsi
> > @@ -552,7 +552,7 @@ usbphy2: usb-phy@20ca000 {
> >                               reg =3D <0x020ca000 0x1000>;
> >                               interrupts =3D <GIC_SPI 41 IRQ_TYPE_LEVEL=
_HIGH>;
> >                               clocks =3D <&clks IMX6SLL_CLK_USBPHY2>;
> > -                             phy-reg_3p0-supply =3D <&reg_3p0>;
> > +                             phy-3p0-supply =3D <&reg_3p0>;
> >                               fsl,anatop =3D <&anatop>;
> >                       };
> >
> > --
> > 2.34.1
> >
