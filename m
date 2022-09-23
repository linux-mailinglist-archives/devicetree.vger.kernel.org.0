Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50A475E7914
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 13:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231213AbiIWLHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 07:07:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231879AbiIWLHB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 07:07:01 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60052.outbound.protection.outlook.com [40.107.6.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC00F11A698
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 04:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7WYjHc5et8fdXFZvtlOOLeiV+v7YHb/fu0EUAPK6p7wFMhqeG0a5bVPiyVj8BOTmmTUn5SyXyZU7Sf8r9Z6DZXIG2sehupT8ZvN+Vfrp74t7b3nmznq29cHtZT/8f1j8dDvCh5IeJ3MfdE6+6JDEJXcX8+9p4Ost0V+7OpuRUQOTOLHk02//q6FVSBHaTJALx0NwOqCRUtN/rVPilBXnGSKjD+MxP8ISwHwfPrBpvN1YljHKhEw7ZsiKJohGLKYFHaKK5qfIi56MMzuXuDNunY6PTPlv0uH7eAAG7PS/XoUKChOsUJZsda4UHbZTC1XdA8sJf73ynkPPZZ2pAts2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uU4JLTmwu2wAWeWzfdHIIdKjeuV0NSmDWfAtKi7Ct0g=;
 b=IwOqvbBDPz7SQizsbp/kVN7+mG7wQnkLFCW7ttHuOwQSKfRcgUMKu3k6omCTqcU+aTKfxe6DjTlnPnGCpE3/gN3gBCfOgqNOYwXvEi/b27TBzUhWH0U0fr+6hzZ54lhQvkRPJKMmhMn7qeVO7ie+shhpbTWXBl8SlZkeJhVwu3WXJ+mizM67/dKI97vIZLtA7ns3kInEx5Lm0Ych9aSxLVegdqPG5O8UxwJygZxR49BXQR6BIq7Al27Q6+ItK9X3Y5PUbdJeGlS0/tTDlbUleHo7TePSx/Cyxkc0invaXzKDHbQLyUuVcOGD/8qXzq2A5k2jySoy++SjKclVrWFM/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uU4JLTmwu2wAWeWzfdHIIdKjeuV0NSmDWfAtKi7Ct0g=;
 b=bH3rzCMuYX6KjL11BQ0BCcDw9kgwx5/zn1vhH8iNEeuqtEY0oYt1JSQpQs0N4iaQWWJ/cUK4bSMz6FzYuevNII4XDGYKTZMiQTXfmVWLtRqp75s5YqJszeNMxk/KcOIOhmVcvrc2oD6u1HwHUBWjX21lDkAVwbMkDr1tm9Z3Veo=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by VI1PR04MB6784.eurprd04.prod.outlook.com (2603:10a6:803:13e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 11:06:54 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%6]) with mapi id 15.20.5654.016; Fri, 23 Sep 2022
 11:06:54 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>, Abel Vesa <abelvesa@kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "marex@denx.de" <marex@denx.de>, Peng Fan <peng.fan@nxp.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v3] arm64: dts: imx8mp: correct usb clocks
Thread-Topic: [PATCH v3] arm64: dts: imx8mp: correct usb clocks
Thread-Index: AQHYy+sD6N32mj1zo0K9uVJCDkD/e63p8wSAgALtw4A=
Date:   Fri, 23 Sep 2022 11:06:54 +0000
Message-ID: <PA4PR04MB96407EED620563EAA3C70B1389519@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1663565197-3961-1-git-send-email-jun.li@nxp.com>
 <20220921142123.GT1728671@dragon>
In-Reply-To: <20220921142123.GT1728671@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9640:EE_|VI1PR04MB6784:EE_
x-ms-office365-filtering-correlation-id: a566a7b6-d472-4200-0afe-08da9d53b948
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h6KsQsvUY7hoDU3vslU8bWBztDuD9zjdZjALVo1KSkBAHvNmPAq3NfpOId5VmSlkaDF8aNxCLbIh+Tpu0Cz4ngM8MdUwj0jQHl4IZ7XQY08DyaEFAFC7dILagEzW4eN+DeiZHx2bEO8p1btp3/OMkE7SSOZvi88QYlq4UyGHRWU7BuIyPkwJWsms1tc4AbYSAGJZnQ0IaKzru9YutiodRy0QPJx60y+uomDjqIzaN9554/R06MLlv4L331odZuLW68aIopyg0rGQzrCL0mJiYmiNYc8NJJmMhX6AqW21oNUxOLms88l47AvwhAZDJXjJej4l4RQKZg9EDWsgyTgelE4/Yuxa2sgZAYeEc+Y6fmXL4z1xj4ba4k3ND/34+8ti546k1c3wrJt5+VCje6yyAsCbr1dOW0NJO0WMWsdjCm4/nuT4lNGV6DXoVP7nsyIXkPW/7dabtpw5i9erwbbIurvDMQDjK2yXY2Wmy4RrASzu15uhJzuBgNq8AdKdNz7BezFXb3n4q8S7BZoJDvddPdeDqTMrgtD5hcTi2RE181Kz5zdJJibmLQBeRn/cIh8zugzPfCD5ODQ/5Bza8QWOTS+UNhqOZwwXRHkQbiVlrz9Pp8sBktYyzt5NXUAGMWz3SwL4lLeWBuSTMiguORzD6YNCNbJAeeoDoxhR45wkUTK0+ODzLXaxQ+g2ivaMN+idxHSJtTo9//egH+xs+wYA2cr1I+0cWCJHY4/fnIw3gW0zc52p5ImJ2jelfxjYobs4v5SMw7wFG9j9kuJq2AKydaiPKrokxBfaM1gPvWrtRnA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(396003)(376002)(366004)(39860400002)(451199015)(122000001)(2906002)(9686003)(4326008)(8676002)(83380400001)(26005)(38070700005)(54906003)(6506007)(110136005)(44832011)(71200400001)(186003)(478600001)(52536014)(33656002)(41300700001)(7416002)(8936002)(5660300002)(316002)(38100700002)(86362001)(55016003)(64756008)(76116006)(66946007)(53546011)(66556008)(66476007)(66446008)(7696005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UINzq1t+ZbAF2xM+uhtzRP36vJr3CmbRHFj5zG2DCA5nTo9L86sLro9JCJxo?=
 =?us-ascii?Q?kN2G1jivQWJyKR0uOaleAbeC2Ogk6jYcFy3w2750S6Lrc6Mkz0nWW1ogJ08D?=
 =?us-ascii?Q?vYP6eIarKN5lOPmzQumrOu8892A06Y+C/8owRqDSLfNSanIrgJhJcAoqysTQ?=
 =?us-ascii?Q?KJDk3kEAI1+PKjFbsU8+gSoOUFNbwHZkWIe86783ZsQCK60iXNSagPQ0atrm?=
 =?us-ascii?Q?t9hb/OdtpFNgxeNjOq8UqrmxwbJlCYkYAOw4T1hi+dFAPQRUuqABro71Sfia?=
 =?us-ascii?Q?ONYdn6eOvxVSMOYFe6lV2lZROWI6LbCbll5KorQxrFYQ1zAMVtDMWX4uRs9e?=
 =?us-ascii?Q?Dd4UfaRCo/Ua7ZKaNJzCNSwdq5MskwH27BY2n4taHz4c9WhMptXgMmAYDtBv?=
 =?us-ascii?Q?MFw+6tVxcQDsGZA6r9qQ7tZLvgRLDyjvDrkph6eTmWlzE6o+fwvRZXIn3JQ9?=
 =?us-ascii?Q?3QARX3RnL8jVTQ9Z9PObmAO04Kw/vPHMu0L8rqfBB+/5SYLrFQufCiXodSCY?=
 =?us-ascii?Q?n/o/Im01WiXbcbMNLLREsL+QCCAcbaX1aOpK38tk77SRlbbjpx1TD0wO2BKa?=
 =?us-ascii?Q?wd023u3QMdoUpXunlzL+pN+YLkOSoR6cSvFkk8WjVG2+peZ18qXqfxkbynCV?=
 =?us-ascii?Q?6JuDAt0toIiB3X8UvLZOCurpvv9Su4ouT8SztzB28qi4JPH7g4wAifPlKYLg?=
 =?us-ascii?Q?04eTzVqx+pyRSoWsGUmWvCXjIbFdS4xCAhR64GvSsDKGWxUUBjNXDWtJg41h?=
 =?us-ascii?Q?UQkQd1V+LMtHiA1oB60hhZ5+ys0B77SEvIyVv4NOkT0C0bZIvb7t1xow+jDD?=
 =?us-ascii?Q?dH6VP2eV7Ubkq8bge2ELCkrLY80B/N7Or3IW20C18R0eWpRjBBbYoJAmIitM?=
 =?us-ascii?Q?1ucouFCyOh6494K/7jPj0MsebvDUB+uqU7x+W9Y4tLrMVK4/mASIstH3LAf9?=
 =?us-ascii?Q?Bu3ccyu4+31U7IwPQT4XcEThDbdrIWOYWUi0Zrg6xVwKlWmjhfAMTMT5pXH/?=
 =?us-ascii?Q?+e/JygX0xrIHp+8gBgs69Uj3DanG3ii7fnxVP+20/jM4drSqmsEAwLJp4scT?=
 =?us-ascii?Q?9YKb9qC0hb9DPWEEAs5Ajd37uP5S+sT/xiTL/Ur+sl7cDMGn+4ysbSYIoIEM?=
 =?us-ascii?Q?SKvs6ofurgC7ObtGfgmPsJC0dJ33gQJYDWaq3v/VSmZnIOMpAhAvCSMdLafB?=
 =?us-ascii?Q?mHW/WwY4LlNwmTD9K7d/cWngJ87dvczwsf8+9ZTxStrdWvZwW3jiiuW8MS32?=
 =?us-ascii?Q?DqEzM0k5DpiU8g1fjuh4ssf8fwWGuQk2MjYgucLI6qPKT44sSr9emRRmCYkW?=
 =?us-ascii?Q?rGMKVDuaTnoBFbYmowTy7LDRpiRR0usWz6vxvejWzILDm0hhNeOAePyuxLfz?=
 =?us-ascii?Q?KfWAzKgVyC+k1PoT6vglplg/X6Pp9cOVRothygCiNbTD7WWGT+f702zRAp4P?=
 =?us-ascii?Q?ZRIHeBvRUiZu8LTTu7AiguT96ZKtZPmAYhdbpBIdtueYkAetq6580JLIecHX?=
 =?us-ascii?Q?xG3jucWSXz2xJI5HgG6To3tFIIW/sQ4gvcS7brnh1itUS3NDIwWDlgp2JXl6?=
 =?us-ascii?Q?WZXpF9hpd8ImlAh+Qjw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a566a7b6-d472-4200-0afe-08da9d53b948
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 11:06:54.2543
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQ6o9FBPYP0HRTiodW78y7pkdLMI6r4n1XgK7vWdWYfbkqMco6Vl214TY8dw3ixh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6784
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
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Wednesday, September 21, 2022 10:21 PM
> To: Jun Li <jun.li@nxp.com>; Abel Vesa <abelvesa@kernel.org>
> Cc: robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> dl-linux-imx <linux-imx@nxp.com>; laurent.pinchart@ideasonboard.com;
> l.stach@pengutronix.de; marex@denx.de; Peng Fan <peng.fan@nxp.com>;
> paul.elder@ideasonboard.com; Markus.Niebel@ew.tq-group.com;
> aford173@gmail.com; devicetree@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH v3] arm64: dts: imx8mp: correct usb clocks
>=20
> Added Abel.
>=20
> On Mon, Sep 19, 2022 at 01:26:37PM +0800, Li Jun wrote:
> > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> > usb_root_clk is no longer for suspend clock so update dts accordingly
> > to use right bus clock and suspend clock.
> >
> > Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
> > Cc: stable@vger.kernel.org # v5.19+
> > Reviewed-by: Peng Fan <peng.fan@nxp.com>
> > Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Signed-off-by: Li Jun <jun.li@nxp.com>
>=20
> I just realized this patch has a hard/build dependency on define
> IMX8MP_CLK_USB_SUSP.  So the patch needs to go upstream via the same tree
> that the define is applied.  I guess that's Abel's i.MX clk tree?
> In that case:
>=20
> Acked-by: Shawn Guo <shawnguo@kernel.org>

Thanks,

Hi Abel,

I just resend the whole patch set(clk+dts).
Will you or Stephen will take them?

Li Jun
>=20
> Shawn
>=20
> > ---
> > change for v3:
> > -  Add fixes tag, Alexander's T-b and Peng's R-b tages.
> >
> > change for v2:
> > - Add stable tag to apply v5.19+
> >
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > index fe178b7d063c..2f18778a057f 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
> >  			reg =3D <0x32f10100 0x8>,
> >  			      <0x381f0000 0x20>;
> >  			clocks =3D <&clk IMX8MP_CLK_HSIO_ROOT>,
> > -				 <&clk IMX8MP_CLK_USB_ROOT>;
> > +				 <&clk IMX8MP_CLK_USB_SUSP>;
> >  			clock-names =3D "hsio", "suspend";
> >  			interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> >  			power-domains =3D <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>; @@
> -1182,9
> > +1182,9 @@ usb3_0: usb@32f10100 {
> >  			usb_dwc3_0: usb@38100000 {
> >  				compatible =3D "snps,dwc3";
> >  				reg =3D <0x38100000 0x10000>;
> > -				clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>,
> > +				clocks =3D <&clk IMX8MP_CLK_USB_ROOT>,
> >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> > -					 <&clk IMX8MP_CLK_USB_ROOT>;
> > +					 <&clk IMX8MP_CLK_USB_SUSP>;
> >  				clock-names =3D "bus_early", "ref", "suspend";
> >  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> >  				phys =3D <&usb3_phy0>, <&usb3_phy0>; @@ -1211,7 +1211,7 @@
> usb3_1:
> > usb@32f10108 {
> >  			reg =3D <0x32f10108 0x8>,
> >  			      <0x382f0000 0x20>;
> >  			clocks =3D <&clk IMX8MP_CLK_HSIO_ROOT>,
> > -				 <&clk IMX8MP_CLK_USB_ROOT>;
> > +				 <&clk IMX8MP_CLK_USB_SUSP>;
> >  			clock-names =3D "hsio", "suspend";
> >  			interrupts =3D <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
> >  			power-domains =3D <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>; @@
> -1224,9
> > +1224,9 @@ usb3_1: usb@32f10108 {
> >  			usb_dwc3_1: usb@38200000 {
> >  				compatible =3D "snps,dwc3";
> >  				reg =3D <0x38200000 0x10000>;
> > -				clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>,
> > +				clocks =3D <&clk IMX8MP_CLK_USB_ROOT>,
> >  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> > -					 <&clk IMX8MP_CLK_USB_ROOT>;
> > +					 <&clk IMX8MP_CLK_USB_SUSP>;
> >  				clock-names =3D "bus_early", "ref", "suspend";
> >  				interrupts =3D <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> >  				phys =3D <&usb3_phy1>, <&usb3_phy1>;
> > --
> > 2.34.1
> >
