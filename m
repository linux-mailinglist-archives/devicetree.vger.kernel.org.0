Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92BC47CBAA
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 04:19:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231251AbhLVDTC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 22:19:02 -0500
Received: from mail-db8eur05on2041.outbound.protection.outlook.com ([40.107.20.41]:33057
        "EHLO EUR05-DB8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S234395AbhLVDTB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 22:19:01 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M36ebBpCpu31FX0uS9WyQenX7wT+o9qGfsMiadEICreB+4y/UL7ZJB2OtuK6SQLEmRdyyunsifWpmhe7kIY7AbK42qC+vfoWWFbmYuiH3U1FklgkfKImd6SIMpd5QqlYYOxCNgd2UD8KFz88WYLAkb8JUFQ6GsyCgVdcYYjPJEXSIOPHMRrDCsCIHxPnrTzDJzCcmtYsXTgn37xZsm8RCPB32UtPg/N19DjB65MN5hmCfoO+yBOsO2GaaWXUy4ynDHDrmpHhEjgebqsxliZfaxOQWBXez2kRG/3/kbeFOa7KYjjRdgrRHqmWzVa3EiXCjdgxEWC+ZDFXLwH6nGgvmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=go41Vcq1BdEL4UokIrWcqxmEq/crHz8IekDuec2junA=;
 b=IIyLtgEAFl9x98eoMpJWwXao9CW9ZTYzVcYITz8d+7YN0Yh5xpEjh/V75S8G+THwBCgMMJy/5m+sVSnUzWz4xqPZoMyDetLsT+vN8kJs17vQYToqJcncQoi4+q+rsCEMMIsakGOpKWDaQHAYLxcDS/qpOlfAiGj8DseNSF2BYp/JP6a6++fId+fa7jlA6akM3EELtieKjNRohRvhr0+PiuqX/W+OVMFZUj3j+GC5bgVS/hC8gZf/a7yahmvHPykSdPH7BUhw+3Uq7jMaQjOC6D5X13CDcvgL8m++D8jcA12A0DIZa96ufGP2wBehLutZXevGkEa3eCZeZ35d6UOHJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=go41Vcq1BdEL4UokIrWcqxmEq/crHz8IekDuec2junA=;
 b=dHeExUnkQgX4wOkbJclnFHxmrDJVxqH4ArSM753jQhzXQDAacz9eCu273UQWidpjgyCnqFPuTa2iKmgZqxD/VloHzhpNhq1Y0O+Rm4rwNdaaJhTAVwlk32pEuwiQ1HdlzSIAIAqv2bDB1F8Xxg/Xca8uifm/tp1JRDlAPOpkmKw=
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com (2603:10a6:803:49::27)
 by VI1PR0401MB2350.eurprd04.prod.outlook.com (2603:10a6:800:2a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 03:18:58 +0000
Received: from VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::9068:a928:d622:cabf]) by VI1PR04MB4333.eurprd04.prod.outlook.com
 ([fe80::9068:a928:d622:cabf%4]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 03:18:58 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
CC:     dl-linux-imx <linux-imx@nxp.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
Thread-Topic: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
Thread-Index: AQHX8pbNUigJ1pprPUWwew6CdJ5YKKw93gjQ
Date:   Wed, 22 Dec 2021 03:18:57 +0000
Message-ID: <VI1PR04MB43337694F243F8D1B1F6DBCE897D9@VI1PR04MB4333.eurprd04.prod.outlook.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebc39dbc-0f05-4412-0734-08d9c4f9cafa
x-ms-traffictypediagnostic: VI1PR0401MB2350:EE_
x-microsoft-antispam-prvs: <VI1PR0401MB23509FD3A218109A0EFE3F9A897D9@VI1PR0401MB2350.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /o0ZkHob0JptZRVZQRwNgfSu5NqoBwG4wrWTMC8dBqum1onT5FpxLnbZbj3edUu23SBtIB1cRnVaXITxn0uqNfASF1ZO0OI5iRuXaGP9LenrdvHqjmCKgO1hC3/pWn2BuBzCvubw7W4wTkw3n/qQ0GuxmAHnTz8ENDrCOSFlfWkOS3SDGJ+Gfz6+AD6dHe23S0PuMd+gIXZi2Wl4N00g1EVbHixb97GYQKt77Lz4z7XmPJjIHJrU5RuDxJ9ckNLNKbAaKNT+fexX8pWzOMWd2v3xSSeEC3VQapKqDtaWHCC7QDRcy/nONBvAydybz47C0+Yr6GT18Rq7gW2DE4p2k8p1NimddUBX11kt77RONMucc6c2NcmjQKM+tcoQPfRxquki4UYS55lQuQwpKHnMUpbKOw9NMQe2rgNGZehz6MQ4l9C4ZiIpm0RTfbAQl71xePyCg+R8ktAtFnfGpk4Pc02rZUq4p22s4EJd08AVa8W1Uwb0IkcoMbRk5c1zYQeqcy0IB375n5mG9XIpF9fqKnK0Bf4g7N+/v5V8DjRv7kCpwYgIRv2KeEkjlE6jJSNTXtCRxJpgnE/OylXv1tOmlfn+al3kUor7E94d6YyKkr8aL0YhvXTY4ysRXY72q9oVNMXlVP+HO3B4WKRUSIbnxiTCMjCHmabOLFjEDqHyQqgiMf6jl15MY5rDz1bI6+zjahx5BoQ5MghL1SLymNeLmg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4333.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7696005)(55016003)(7416002)(4326008)(38070700005)(122000001)(9686003)(8936002)(38100700002)(508600001)(44832011)(8676002)(71200400001)(64756008)(66556008)(66476007)(66446008)(66946007)(76116006)(52536014)(86362001)(2906002)(33656002)(5660300002)(54906003)(26005)(316002)(186003)(6506007)(110136005)(53546011)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?URj0b3zQS7CckGHqY1PZZvoVRkbffmNKXCFtfN+quGGV2aqEIZMz5Vaw2IER?=
 =?us-ascii?Q?1sBMgfImq8Z6gQgHZ2fzkN7KrbGKDVZlYUkHnTF+c1Jz4P8a9rt6MSe0cJ2O?=
 =?us-ascii?Q?lYZ20N5VYjAOA3D49Wjo+i5WmA+714nq74E5yZeCRyYaIjgEItz21dJQDS3+?=
 =?us-ascii?Q?/74iX899XEtloaN77cIvPgUstUr6o0R6Lb8Jq4ej68EPDOs39CYMhwxxBPJX?=
 =?us-ascii?Q?8A1H3UZy+hfghGR8OGOb7JbywBkSLBT4wf8UozZjU47qNCkpcD+pijs4l0jQ?=
 =?us-ascii?Q?aQj6mVSFcDUWEM6/k8DVDnc0hR3IcAZFtNUcJBIgXGXMFmzkbpEzVTN9vWWS?=
 =?us-ascii?Q?81RLQ000r1PHtdXzlfPBzy2M0xSUcy87O+LVHPdROeUZbZL2hLLez9SaOyv+?=
 =?us-ascii?Q?wEqJqq99rBgj7sNdVkhGm0EqLeBmhLo0ZTa5FrYyoG9hTzfRvFsYRGIaXSiP?=
 =?us-ascii?Q?/Snb+QET+mPt/EOHDvYx5y1YbXqQL/7NegaSNpbM93HxaUz3IWWveSjbm1/h?=
 =?us-ascii?Q?33YMF93tGAzVuNwpffAYmH1Wc5Etl5v1RjNiYNV51gqjiV0KmS2vX2/Dcb0m?=
 =?us-ascii?Q?UJd9jZmVvLbu1VBvH2nmCmHbsQi/fJJf6P44GFGSN4dWJ3eGMQHoDlBANWXL?=
 =?us-ascii?Q?uUL1+49mhuWDdlcfSlWhEHD+p+Es2fdm+HCCofRGFkRxAL3Mb6tRdmeOXFQY?=
 =?us-ascii?Q?duguDJdSBRp6UG0zqx6KE4pMuofVKZbxh8pumoN72wYXSNY9A5UVQ4wbNxe1?=
 =?us-ascii?Q?bz2WRHpnIbsgFX3EEusQTrxI5GEj1I9GESN9D/WhVQ7neBEs/jZLR+7NSve0?=
 =?us-ascii?Q?aGorii651L2x2sv00bV2BagTcFXluhQ+w+lEhftCHjro22uBfIDLz5r4ogoH?=
 =?us-ascii?Q?FtBusV/FlfpZpfF8qmmcLVe80X11SPtu/wV7ftL8F8GG03ObeZdCFSJwqF/z?=
 =?us-ascii?Q?VK8+nMhaUClW1iLCzw7vxeXs1wC8rfk41eYYEnuEVvWVg2dVefguXYYqMfOo?=
 =?us-ascii?Q?5wu+Tc0xB63RQyRLzII+LXfL8RhQyCaOpXpH0hujTKk0nTIIhT0/65QoIhws?=
 =?us-ascii?Q?vtGlB+69gQCz4JIBFZcKOencWEnAmsUJNGnINTMGgaQBWBAQLtwMY8iE9Lnl?=
 =?us-ascii?Q?JProGDpbbrR1CTmpJVikScYq4uqIYwUsjQLrwrztYO1DX+6Ityqn/bQiMJ+/?=
 =?us-ascii?Q?z+iNp2jka6QUlh5T3J3/ASR8WAP2GEFlybllYNV/OFolyRvbhVTHvzvhzNNk?=
 =?us-ascii?Q?wTORTp+aG0M8D6r0eoF60xkwx4lnB7/okSDMSWvV+rujDZFlAQqlMYCkkczm?=
 =?us-ascii?Q?wpuM8b8y+Qhyu23NYUKtYRb4rcuA1/UvGx/sfqr/Ma58AHwofUzePhFn5A9x?=
 =?us-ascii?Q?Xv3Is32kyqrGZAX78hOVHegs8xXFGNZnLrAXtTEw0YoHRVx/KYYm/h6eGLcM?=
 =?us-ascii?Q?mJadYZ7axZg5Nct2C/vnQTEammYPRvUGp21AQbgrYwCLOvk0aBBrxRLwf7ME?=
 =?us-ascii?Q?Arvo08X6SJ7lzkGdLO0Ql1soig4FHUhv+CTE8rHl0h1VtBo7uRfGVvmW9r4J?=
 =?us-ascii?Q?D+9arGA0usKjfF06CCc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4333.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc39dbc-0f05-4412-0734-08d9c4f9cafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 03:18:57.9540
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ayxoVxuBAPzyOmnUzBrf8Cr1usNFmg2S0cmfcOTGDyAYia4JcP9SamgTs9gf2a5r
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2350
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Alexander Stein <alexander.stein@ew.tq-group.com>
> Sent: Friday, December 17, 2021 12:06 AM
> To: Kishon Vijay Abraham I <kishon@ti.com>; Vinod Koul <vkoul@kernel.org>=
;
> Rob Herring <robh+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Fabio Estevam <festevam@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>; dl-linux-imx
> <linux-imx@nxp.com>; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: [PATCH v2 0/3] i.MX8MP: more USB3 glue layer feature support
>=20
> This patchset aims to support flags for e.g. over-current active low or p=
ort
> permanantly attached which are provided in the USB3 glue layer.
>=20
> There is already a glue layer driver dwc3-imx8mp, but unfortunately this
> driver does not use the glue area at all, it only handles wakeup-support
> which is done in the HSIO BLK_CTRL area (0x32f10100), accordingly the dri=
ver
> only uses the hsio clock.
>=20
> The driver which actually uses the USB3 glue area is phy-fsl-imx8mq-usb.
> As the name indicates PHY is configured in the corresponding registers, w=
hich
> are part of the USB3 glue layer.
>=20
> This make is it unclear for me which driver should handle the required fe=
atures
> above.
> dwc3-imx8mp, the glue layer driver, does not touch the glue area at all,
> but the HSIO BLK_CTRL area.
> phy-fsl-imx8mq-usb only touches the PHY registers in the glue layer.
> Neither does map the USB3 control register from the glue layer.
>=20
> Thanks for any feedback and best regards, Alexander

Which driver handle what function is decided by the driver *function*,
not where the actual HW logic is located, iMX8MP do have a "glue" layer
in SoC HW, some part is for phy config, and some part is for controller,
so we need put the part of phy config into the phy driver, the changes
you are adding is for controller so should be put in dwc3-imx8mp.c from
my point view.

Li Jun=20
=20
>=20
> Alexander Stein (3):
>   dt-bindings: phy: imx8mq-usb-phy: Add imx8mp specific flags
>   phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
>   arm64: dts: imx8mp: Add memory for USB3 glue layer to usb3_phy nodes
>=20
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 52 +++++++++++++++-
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  6 +-
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c    | 61 +++++++++++++++++++
>  3 files changed, 116 insertions(+), 3 deletions(-)
>=20
> --
> 2.25.1

