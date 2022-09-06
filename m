Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D1E95AE0D5
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 09:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238886AbiIFHUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 03:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238859AbiIFHUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 03:20:06 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2069.outbound.protection.outlook.com [40.107.21.69])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5621CB22
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 00:20:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayav1KhuX8yL92idY4U+4xI0NNFnxsDeXE2qXHbNZ9C+yCABkh0KkUuBKD2MC25v+7D2p21n6IyHSxyuRZBjJ4rGHTsoehahfOP2Y2dW2ZUVvfH+3QIS+GBaP4MN5alKw7l8BljzQsYQ5CqlVbQW8G6klYiVYO7R5OG7ufkW3CR4rUVBzjgpIEyu/D2CM1JnYhgAfHwEOdxGNTqGgnvvTCD2IEsCVNWrAm9mTwK3rE8exvyRb2LdwVF0v2drp2t2qSu2jeykCJu/HsKBaBJGaWPQMfx6WG5S4d7HphqglbPc2lvBhxH+02eNodtt/GSvKKeQiZmgOn/9MPQQEJyChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x6B9BF1QlWWiRXgMtCJUYrbtL0ubJMOj0IANTjnMO3Q=;
 b=EGjz7prhsMBAgxheLse7JfXcY+YOUklbIyrYQhaOFhIHe+X9PZm7mo475zShCt381YJCwrrIsOSXhHCmaz4TNg9SoiI+ycnVqJqEO4jNroVd8lYBxaKVG8oRTCsRvBBynXu1agE7IL/xpNmSxFYIisPLwf45wCCT7zbBbCQnVUWljkfvvtALjA8KBwOGvGPVdCMc04uQD+yJHXs5UphF87UumqmvJWGCzKc9K+F7el+aNM0ioCGc9Ic2b8p7lX+d2Q8kYO8ma6NBO2tAkPBXFLy/W1ftICPicr6zTJPoguyJyRDUYm7IUsZr5faI7/3qlaBy/W/ah3JUmpxTAZdL2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x6B9BF1QlWWiRXgMtCJUYrbtL0ubJMOj0IANTjnMO3Q=;
 b=nyxnDHq1sqv1aJqjH4TYeB5gV12Az7MeCydwo+JiB4XkDWDLa6RO8wWpNkhEFYIc9HUKZerPe1xjdqsUPte7pfFcOJcSzMBfq0634X+hpo9wavckfUe6H1YIkgEsMffQteEscMLxDuiSQr9nlp1iRFRHFiCvTSuJvJPQdG2x7/A=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by DB7PR04MB6011.eurprd04.prod.outlook.com (2603:10a6:10:89::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 07:19:57 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2%9]) with mapi id 15.20.5588.012; Tue, 6 Sep 2022
 07:19:57 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Marco Felsch <m.felsch@pengutronix.de>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "marex@denx.de" <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        "Markus.Niebel@ew.tq-group.com" <Markus.Niebel@ew.tq-group.com>,
        "laurent.pinchart@ideasonboard.com" 
        <laurent.pinchart@ideasonboard.com>,
        "paul.elder@ideasonboard.com" <paul.elder@ideasonboard.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "aford173@gmail.com" <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: RE: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Topic: [PATCH] arm64: dts: imx8mp: correct usb clocks
Thread-Index: AQHYt5NgTN2Wv3g2Q0uWAIYIi/pTZK29w6AAgAAHn6CAFEVm4A==
Date:   Tue, 6 Sep 2022 07:19:57 +0000
Message-ID: <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
In-Reply-To: <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d1cb028-7e4e-467b-c556-08da8fd83410
x-ms-traffictypediagnostic: DB7PR04MB6011:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UfFc2F6zgGkJUMdOAbvBBy2H6HZ/ZIBK7c8CsOHP9eK1iCl6OzoMRG4xEID3iO05vzJ+hkHBJgEGhBYjUE6Lk4n2E23z6jxC6xZxE33gIPriXGlsB/KdDMtf6QNa6TVw0e0mSAY+CZsqJO7jnQNa+5q5jUFSXe5b50BnsNiOEgImBJvos6eIphOi5ocDnqjD9j3AhNVsQMsFqNWnPX2cmtBTv9UbeXPvNGurcvirFUeIJa+urI1ad7a7R8u4qOkyDQyN+1kqwYVB1yZFBfVD9yIj2mgOW3z3axfFsw/+YQNKBv6s+b9THSwNsuH8aT8UWleGlKF7QzEO+Si88VjwTl+p7urctDIoeifaBhbZYX2I8MtFfLjOJkXjHtqV0mayTXgBxmBjeKcStCdJ88KjeVIjePY5N/x1jjrH1X1Gf/dzgHyzccfx5Lsf7v9o82VXSFdz3w1DKb5yaNGswJ+uxSc2Mx8IJiNcHRk8pL1k6e76VwP/4iC/iImyqlyC+HtLsrpFzY0qk37WRf2SGKuZRODtAJs9GpQdGA24MFSRP85XevHCN8V60A6FDpxJ03P6Tn/rj8UMaU4/w0X3C7eOfVlFAmoz/6VhtYHlvAJaeZFTeHBJNNLOHInMtHzQmOpDVIIIHfz6YozD27iV9Ey5B8WNv+HDK6n3FjYBIVbOiSn7ujobZWjOzjwAyF5qTJ3csr+RRV+J3jfdtWUNuaNoZhrIskuNc6ufrOZtFh6qRzEDVvPrQ7byKaM+QKQfUVOQjN/NsljacxKm2cXcJLWiLDWorgh9MnELffjgfjv1H1ff9zn2MaRISta3puRoIF5U
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(396003)(346002)(39860400002)(376002)(136003)(5660300002)(33656002)(7416002)(38070700005)(9686003)(186003)(26005)(66446008)(2906002)(66946007)(64756008)(76116006)(66556008)(8676002)(66476007)(8936002)(44832011)(4326008)(52536014)(55016003)(316002)(6916009)(54906003)(41300700001)(966005)(71200400001)(478600001)(7696005)(6506007)(53546011)(38100700002)(122000001)(83380400001)(86362001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AjFvHocGrTZt2tXv3bSZat/h6ahn/jM+rRMBdh0jlMG3xkQ/425CrGI0GscB?=
 =?us-ascii?Q?dZ1DgpzoHe+xaA6M5kceGiebd98vcLHoSMC+FVyOzwqRvac/ifoHdpsPIvQV?=
 =?us-ascii?Q?kMs1bYFJX90oONhwWurirw2Vrl0YlEMP06vDK9/Rokz7zEG+X8bVV+YRnpCn?=
 =?us-ascii?Q?0oaqSxxYOk+m3g40ruhJhVE/6Rf8S9MX+C8nxIi2ZeRtU2vAzmzmMrCBM15R?=
 =?us-ascii?Q?CBd2gJhfY5LgLWaZ3Ougao4XP741Jj8ugk74rFGw+vi6jcekv+Lg8isWoC5+?=
 =?us-ascii?Q?wL028fW/0TmwPQv5xAOZi0qU+kVHe4brA1aCZ2GAFPc7kD+nCYFXEfUNJtRt?=
 =?us-ascii?Q?nKZnOwIOSZQLe2Eca+6gXs9JJLLXv7urbJ8I5OkmaHeFsDZPb2lhKl35rpeD?=
 =?us-ascii?Q?Uxq0Ti2NAigGiujHxoqcyPuZkabcWSJw0VUdFUe7ICbbfdYmJsqDPaA5n5Vq?=
 =?us-ascii?Q?Cld/DwNGrK/TKrvaQu2pCVDUj5B1lzk3j39/PS/EAd23Sa/yfCWKR5Yhpfe3?=
 =?us-ascii?Q?Lv+Cwtxy/jVeIdpDRrlaFB+EVdrCMDzA5mVkkqdjsb5mOeYaP35t/hwQe3az?=
 =?us-ascii?Q?TFSxC1nEeLSNC8JB7vmsyo5mxpejPQODs1daM78IVrZ/5QkT3kPvl8XU3lcK?=
 =?us-ascii?Q?95UZmGlvcSzRRM9d+BssnBl+VhQO+d8piajVsPFv83WLXarKeZ+3H0NbKQub?=
 =?us-ascii?Q?23V0ipIrNr7SmD2YNc1h0fraCy+IHnucWQSy2piGK0+8GhfJcFZGQDEip8OS?=
 =?us-ascii?Q?kJZU6Yj3lC5r2pKBG03CyfZxmAFiDfhooUtvYFrsjZ1KUeEr/DGJv9B5beRd?=
 =?us-ascii?Q?j0XlU/HLxQdtgnLDSiQwrz6jG/ghS6cJCR9HM/Fu4zvHHgYg0+HJ6RoNzOmw?=
 =?us-ascii?Q?FnHRCk36ZxvrFIRvNQR8PoK4S+OZgX/FCdvrkXx4Eu3ao9hinopq2JsPdMSq?=
 =?us-ascii?Q?C1INdJi5gU/P9ZtzFuOeeORIc54z674WIEkbV+QDDSy75BroyXrKUzzYLqEv?=
 =?us-ascii?Q?ZcGIDFqE20rVmECFwRiEFg1TPoD8N8SiI/QY+U3PyIzyaNm9W7mSLsxuiXzJ?=
 =?us-ascii?Q?VQLnePjJuhn3+p6Tohy81RRdpUQBaNWGOeIMv4dshwgdr8BD9zSDU5fruNhp?=
 =?us-ascii?Q?oRubjmNBYFHk8qI2hPoK8+P0oH7vWxzbbFRWgngXNVar9tp34V9eu7skBybv?=
 =?us-ascii?Q?FN+uaiK/bqv53K+3inGEMYEIrPPt4kMFTmhztHgeQN82AbNkqGpzS+uM0CK0?=
 =?us-ascii?Q?TCUD6cunBCcErubSLtt0IPFoZ8Y9SSjhgaPmFt2Fi4eFUjnYf0D9LyBKAWbX?=
 =?us-ascii?Q?zO25T9d/MlgRQKIANVACDYs32vj4YcZ9zGbnJ02x14925/Zzay3v90C+qZgI?=
 =?us-ascii?Q?0lCsrEACWwGGxpPA+TIR0AxVb5IbrtIlP5cw+pCIYFpiSx+nsAOKxAIFcOFJ?=
 =?us-ascii?Q?/zvqEeKChUsjczEAHOInmbYOEufShT0V+rKB8OKHFsJjFwzlpBvfHY/VYhAD?=
 =?us-ascii?Q?FOn6XM416uWh1M2tONjxL3KTkahtCrL3gg88ysdOfzPZsyFxmAAXXfcEiV3V?=
 =?us-ascii?Q?0QstqLS0HpceIZqLWKQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d1cb028-7e4e-467b-c556-08da8fd83410
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 07:19:57.5256
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BKqjQmY6mEs3PbSDHAAl2NwNKLxbRZGrlCQeeqq+BTSFwSKnlIy4W6ZHo0GMYh+V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB6011
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

> -----Original Message-----
> From: Jun Li <jun.li@nxp.com>
> Sent: Wednesday, August 24, 2022 6:24 PM
> To: Marco Felsch <m.felsch@pengutronix.de>
> Cc: shawnguo@kernel.org; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> l.stach@pengutronix.de
> Subject: RE: [PATCH] arm64: dts: imx8mp: correct usb clocks
>=20
>=20
>=20
> > -----Original Message-----
> > From: Marco Felsch <m.felsch@pengutronix.de>
> > Sent: Wednesday, August 24, 2022 5:11 PM
> > To: Jun Li <jun.li@nxp.com>
> > Cc: shawnguo@kernel.org; robh+dt@kernel.org;
> > krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> > devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> > Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> > paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> > aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> > l.stach@pengutronix.de
> > Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
> >
> > Hi Li,
> >
> > On 22-08-24, Li Jun wrote:
> > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> > > usb_root_clk is no longer for suspend clock so update dts
> > > accordingly to use right bus clock and suspend clock.
> >
> > Please don't send two seperate patchsets for this topic, since they
> > can be applied delayed. So your v2 should contain the patches from [1]
> as well.
>=20
> Understood, I will put all in one patch set in v2.

Since the clock part patches[1] already were accepted, I think this
corresponding dts fix patch should be okay as it is.

[1] https://lore.kernel.org/linux-arm-kernel/1661328262-3867-2-git-send-ema=
il-jun.li@nxp.com/

Thanks
Li Jun

>=20
> Thanks
> Li Jun
> >
> > [1] 1661328262-3867-1-git-send-email-jun.li@nxp.com
> >
> > Regards,
> >   Marco
