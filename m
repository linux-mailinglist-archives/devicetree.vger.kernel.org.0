Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FB785B6D2F
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 14:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231984AbiIMM0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 08:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232158AbiIMMZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 08:25:44 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60048.outbound.protection.outlook.com [40.107.6.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E6915833
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 05:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g8LFDzILmB8hGiYcLpi1TnglUIY0aMSdBxQfYGG4onUw0T6vhEoJvqgOx0S8UOIHT9h3BXWho9/6grdTk0rvX74ebYuVjFmJKS45YYSY6PYMspU9c0OjVkY2eLDNnf+gIB9UkAyooLu3dLLssTPw2JhObJAiCLnoqscUawzXjxY515Q/Ug1sf72Geii8gHWzz/Cc8mQSOX+z4CcEwvkud/dVVrAgfkuVhkgDhrZwyZcJbQkyD6AW3IwHuIfAQQ2F7V8OqEgFGIuE6qKs0r7+CUKSlaE4mXq0cpVBMxwR81W6Ai9bpc1jZB8WR79MwMklTmdDOhhB6oWt8A0CAcozmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xyCch0UilSjOcJKm7KfBG+3RzF0KQFjcsZhnldxS6bg=;
 b=dzHX7lWglKXsyZMmZJKVVPBmPfx+ffmlQPHJ3HQE5BTR3qWszwatTvFu6qocTexS0QEHoEyiuN1GakXhEEKIe0dejU7t+fa6EpKoWRNAmVabzbSaQvk6RxVd5yxGbH3y7CFegtnJdJmkVDlAGKAm1PQPnDBPJobe7U3U1gWrMmTIOrtLN47Jl1J/pndKJaMotMo7KDAcRzBFbtTzSiKDPhjBa4Y/IQTZ3fFdeNfu5TPGALrgqVL8CR8Zs4BnHYU39V7WoHZsQIL/5pabywmlodx+zGe+yoebEl2r9VnpkfuXQTf/bF5z8q3LVDw8bSHFgfwblY/DKaBfuL4GVIdfqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xyCch0UilSjOcJKm7KfBG+3RzF0KQFjcsZhnldxS6bg=;
 b=pq9xbHiEKv7Bu9TeV6/uOFISAcTs8uoz03KqGn2U6ecJBisq/IDCyW+PwXnj1JTJV0ddBChGyXlivR7OeTvBd7Um5ApJGgckSLIerriC5R5ELhFD/cqqEyipgQh/Fr4dQW2PrOna2+IXFRaVVhUFtQpXXYCDfA0p+f/9+2znUW0=
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com (2603:10a6:10:358::11)
 by AS8PR04MB8360.eurprd04.prod.outlook.com (2603:10a6:20b:3f4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 13 Sep
 2022 12:25:35 +0000
Received: from DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::75b7:64ed:bc9e:5354]) by DU0PR04MB9417.eurprd04.prod.outlook.com
 ([fe80::75b7:64ed:bc9e:5354%5]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 12:25:34 +0000
From:   Peng Fan <peng.fan@nxp.com>
To:     Jun Li <jun.li@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "marex@denx.de" <marex@denx.de>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
Thread-Topic: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
Thread-Index: AQHYx2QEPR6zmH0jmUO2RfFRQrp0vq3dSOow
Date:   Tue, 13 Sep 2022 12:25:34 +0000
Message-ID: <DU0PR04MB9417D9A8B6A887A7E30D172088479@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
In-Reply-To: <1663067426-29534-1-git-send-email-jun.li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR04MB9417:EE_|AS8PR04MB8360:EE_
x-ms-office365-filtering-correlation-id: 1056770e-c5ae-4e16-2e14-08da95830ed4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cZDnvA21eip0LaifOjFev0juD8xzLg/B2LlJmeCVvo3/n6kxz61rpAHl4Vb+iRQ+X6FpkN9LEnOjvePSwpW3GgdVgJOVxDmJ4r38k17odQcpBBaLuj73JMgKDOPSxkqGV6lQqhxJ23RQqHNGvZvbPbTo+l4sK1KoidOy8BkNZiiRMJ36dI8mpGBEIozi/lKYBYJDLc/f3T6vO1TGsDr1O/wOgHf/GoUrNTb9aWCdMgHuatPrNcvNuoUZTuIhbxs+9DjVS8n5vWpNUC6C1IRV/bXAy2SQsI9VMVn1IxjspTvKUsLeiDTDlD71Z4BI0kLSHNFoR/5QMprHRdDf497MIloVRm/tA3161lFsMnmFNGvabIdaG2nQNFfWkdX4OgIM4kEM1Zfw/va61jBUhvIY4hUt+HQdZUOxMOBQCSo2Ea3EWl8LgYjinPi91YRv/uocuK2aawO9wcH/lE+MedLflTbmK5MwhOX/xYQNq2AuExLe5S6Wo2ByJCWMEZn29AK47Hnixu/8G+Vpmh/Nay2aGGymcAJciOV8EW0MxVwa/0QAgDCcMBpoOsziJ8SEk5zYLYuiCKZFnLiIkKrZDihQE7PJ4ESb4040Hv7TppMonkl1FGPadCHolVfOvHMTlhxF9OWpf56nENs4ezT4/fX3f5lTNDbKueBMgzqiWKznJnihLfJu19rJqSP63FKRwMb1URjhigvBmJORHKv4DbRww2eQ82jU3Dr+vG1VKapUVTekSQvZ6tD6ZuFkeKV0/QrAAdJFfpxvZJzCRM0RD43EeQtqNviFy87ODBvEBjI6X4I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9417.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(366004)(396003)(39860400002)(136003)(451199015)(38070700005)(66476007)(7696005)(478600001)(86362001)(44832011)(33656002)(2906002)(4326008)(76116006)(41300700001)(52536014)(66946007)(8936002)(26005)(110136005)(316002)(55016003)(71200400001)(54906003)(9686003)(5660300002)(186003)(6506007)(122000001)(38100700002)(66556008)(7416002)(83380400001)(66446008)(64756008)(8676002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pykqGrjtLAPJMqIOLupRrAKxJ1ogCrD64sHr9TRGOgjbwY0KuUW3sk1R3ZQ3?=
 =?us-ascii?Q?WocItvzGkrMKMgk8ePV8EHSLUJuhMyb+IvpuWPCHzPSOokvXWjW214OA4fbQ?=
 =?us-ascii?Q?wsLlMyqONcZ5i3lZ8IpilMevKSaDF7khi3fvP+2KB99fltGHKkwMV4igMTm2?=
 =?us-ascii?Q?YawcjZQu5t2mkwHkMJw4b1nTb0eZgN44JOcfFycB2+P2ERQcbN1F3qL13OlQ?=
 =?us-ascii?Q?ul1gBaQti2SAk0zg8UZiYvmNMpgkopm0x6uMJjcAAVq07jNb0WWq0nc7qQlK?=
 =?us-ascii?Q?vwS9IpQgodt142SHpSBIbrd93JidpoINPavDQ6hI0rkJEdAJ5C/WbyPWUloP?=
 =?us-ascii?Q?LDz5Y7TSIewSYSkiLZ0NecItcQSLpXqJ3wjV9sYQvVGUztTDp76xWF+cig9a?=
 =?us-ascii?Q?rtbG3xg70izF3DDgwrjt/WUWIrl6G3FH/MDIz826YCoSGvZsdfn4+xNyLXN3?=
 =?us-ascii?Q?h1wX97Whx7mUfIjT9emtnviU6w/TI8i56VzvtXYGBDTALkoxryn0kHR66iCc?=
 =?us-ascii?Q?QHihCC6xeyWIZ0LAsAtfbw9/Jc/FnDAa/eQ6b6jfn/xo6ZY2nO0cYnqDPrNU?=
 =?us-ascii?Q?c+FZ8ZgwTqn968l1C1xClwduzV87rrXTWrPXISZQFg90AelWBX2PLNkedBTc?=
 =?us-ascii?Q?OtVJq/ycYsW9l/ocwdmR6jueFH9v6yEzOTNO0IgQiCHKEccjer7gVlu0akha?=
 =?us-ascii?Q?6gO8UZhdsyhP6a5DkRI1LJLaiCdBf6Wa1fN3brbWIlogj79Iproqtk0NvS+G?=
 =?us-ascii?Q?PaFLq9vmiaKiIl74tjYIqCozwKKyCMbr9v46aM5QcNv8+xNmyDGWt+49DFPn?=
 =?us-ascii?Q?rZ2LX2Eo5VW6cXE2mhP/6ssyvG2HUOyNsJgzOReOyj4atFn6sywtMawzT36k?=
 =?us-ascii?Q?7MshzBSbVCWyaKO0T14R9Ew7fF9jbTNMl5TNnzdP28FT8FLjGGjH8sjLHfOq?=
 =?us-ascii?Q?FZTvUn6cVg+S/7OkNjE+BuQAcddazz/AdwZP3AmCue/G9kG3auu+D0z9bpKt?=
 =?us-ascii?Q?B639wH3ABVLAmbX6brLbOYyMrwgh95v62RdJab4no4/C2T8bboyBREesl4Zu?=
 =?us-ascii?Q?pLBuMuFZtHIDZD9tET4uX0QVhAgzr6Moa/vn/lzUzsAPN3GvF9TVMnOh/LKm?=
 =?us-ascii?Q?iDerAEAhGE5/Wtg3Tu6l83H6WC7jszTkpNa2hPiDG54QNIopJip5uoogzx49?=
 =?us-ascii?Q?t6LlOgIvtB9aQOLKyX/DIPIKoo/faTTEZbhVuTeK3To4YC1MdEZyJhGyzGxc?=
 =?us-ascii?Q?sVPUO6cAaWpMdD833znKUczTLL3bvsgBusTMveaA+SIO2yZkJpsMCMJqhhU9?=
 =?us-ascii?Q?18ph4QNKQUeFpHEEar2f1g4+VIyO/6yDymq+7pkC9/238ZrJSKC4SLe9QE91?=
 =?us-ascii?Q?H7oLL1D0GaPWuA6IrErZDWexjNky5lce3fxVlFbtB/bsFg4ZLALFF51Ru6kc?=
 =?us-ascii?Q?pv34DcBN8AL64gJD8EcHeEZrFrzT9I9dEcV8qLlVRBTaexrGNIuCjihXxf8G?=
 =?us-ascii?Q?SyPzVvW1ar93Z2JC2sy0eECMBWljbDAJ4iSuUfWD4aO21vzVbDqJjSvmWBrE?=
 =?us-ascii?Q?dtRUqtBw7Ti1OizR958=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9417.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1056770e-c5ae-4e16-2e14-08da95830ed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 12:25:34.7918
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOAWBlKbRQgSyEIkOFW3rlVMfXHdELje4ssMDUy8HKZVKe62Aev10/0Iix8g1pCExPIz4ynBwku5HSa9bpH+Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8360
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: [PATCH v2] arm64: dts: imx8mp: correct usb clocks
>=20
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly to =
use
> right bus clock and suspend clock.
>=20
> Cc: stable@vger.kernel.org # v5.19+
> Signed-off-by: Li Jun <jun.li@nxp.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
> change for v2:
> - Add stable tag to apply v5.19+
>=20
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index fe178b7d063c..2f18778a057f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
>  			reg =3D <0x32f10100 0x8>,
>  			      <0x381f0000 0x20>;
>  			clocks =3D <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names =3D "hsio", "suspend";
>  			interrupts =3D <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains =3D <&hsio_blk_ctrl
> IMX8MP_HSIOBLK_PD_USB>; @@ -1182,9 +1182,9 @@ usb3_0:
> usb@32f10100 {
>  			usb_dwc3_0: usb@38100000 {
>  				compatible =3D "snps,dwc3";
>  				reg =3D <0x38100000 0x10000>;
> -				clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>,
> +				clocks =3D <&clk IMX8MP_CLK_USB_ROOT>,
>  					 <&clk
> IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk IMX8MP_CLK_USB_ROOT>;
> +					 <&clk IMX8MP_CLK_USB_SUSP>;
>  				clock-names =3D "bus_early", "ref", "suspend";
>  				interrupts =3D <GIC_SPI 40
> IRQ_TYPE_LEVEL_HIGH>;
>  				phys =3D <&usb3_phy0>, <&usb3_phy0>;
> @@ -1211,7 +1211,7 @@ usb3_1: usb@32f10108 {
>  			reg =3D <0x32f10108 0x8>,
>  			      <0x382f0000 0x20>;
>  			clocks =3D <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names =3D "hsio", "suspend";
>  			interrupts =3D <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains =3D <&hsio_blk_ctrl
> IMX8MP_HSIOBLK_PD_USB>; @@ -1224,9 +1224,9 @@ usb3_1:
> usb@32f10108 {
>  			usb_dwc3_1: usb@38200000 {
>  				compatible =3D "snps,dwc3";
>  				reg =3D <0x38200000 0x10000>;
> -				clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>,
> +				clocks =3D <&clk IMX8MP_CLK_USB_ROOT>,
>  					 <&clk
> IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk IMX8MP_CLK_USB_ROOT>;
> +					 <&clk IMX8MP_CLK_USB_SUSP>;
>  				clock-names =3D "bus_early", "ref", "suspend";
>  				interrupts =3D <GIC_SPI 41
> IRQ_TYPE_LEVEL_HIGH>;
>  				phys =3D <&usb3_phy1>, <&usb3_phy1>;
> --
> 2.34.1

