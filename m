Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4C415789C8
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 20:50:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235268AbiGRSuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 14:50:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbiGRSuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 14:50:12 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2058.outbound.protection.outlook.com [40.107.21.58])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACD5A2E687
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 11:50:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5ejKMR0ShVOmcKRxNDIcqeUTxHLaakE1GoZ2qoWUxwkZYjyk3nERHS96rQ4iUKQAbWEJQToq8mEyKCdvK9nZZrwNk2YNAj2NRImLDjwltM8iRp8g14OJoUlSsHPH/Z+1qrfUrz8YY0YCYo5Wz5ozNWWApVGgn+XCi74kB1QcdfyKnF1c87VvuLROohuk9msmjhH2DjEMnpkqVHdvPIgzaIxbVRfDKb68FMMUGxCugUILjutj9rPXoC0kM+LWsPjb85LU2krFw0ceEvBnhZKZ+Zr1ruMbptmXYuaSpP1nhzP4hQgrhQzYlzPTZspBWeY3u4v4mimR+8X/OHhyza1hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c07nNFDnYat9stICnd3yQfxcpzKM4FNMfhsdrosktzY=;
 b=HaqEJfAAx1Otj6oIzXwz5k5g3dyHVR+55V0btH6GVW9uHXXhe0FKuXyNmGOoSH5gqCKwsY8yg05Tinw3NcyFCyPWZpcMO8TbOwYpIQwe9mjQTgO4Psm1Hrwq9dX2Fb7tqjH+XJ0OZXk6em0okcddWFOVqDXztTbU6QrZ+DMr+OsLUPWwbGEfwLZoWKXKWr4TlRe2aRsE7Uu8iKOglTM74jaeLxynG4R5CAxvJLEgMT215w+BBZC4rJcpRlhW8hi6SzDEZGOGL6q+b3DnTHjp10p6lOAoJlIu0b67BKRODFtuq0W5AinFFUbh0jBNZgg4o/0VYDdx/sa8KV24ppPYxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c07nNFDnYat9stICnd3yQfxcpzKM4FNMfhsdrosktzY=;
 b=aazVGzJI5TQWlQF2damsHoApTWunMwirSXnTzpLG3+oFG0lgq1/YEs3TEfWXVW7qgV6JOGTH6BSHS9iWBljfmvJKJWuuc+2yCuI5Fg/gGW5llm57NeEY0angY3CP5aVqE8EyEUfRoEBrcD6O1Vqo1NQ+4gNSP6ukbzaY4RFt15w=
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM6PR04MB4455.eurprd04.prod.outlook.com (2603:10a6:20b:15::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Mon, 18 Jul
 2022 18:50:07 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%5]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 18:50:07 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Topic: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl
 support
Thread-Index: AQHYmKBxPZCj+ntgHkKeXvZY+rvraa2EG4WAgAA3ClA=
Date:   Mon, 18 Jul 2022 18:50:07 +0000
Message-ID: <AM9PR04MB8274425DC0C302488354F31C898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
 <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
In-Reply-To: <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1e771bf-c8c9-4e7e-bff7-08da68ee559e
x-ms-traffictypediagnostic: AM6PR04MB4455:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2bwchqCOJzJ+GTaRUyi0ohlINcj9uk+HUUn33pnyphsE1zOSg/mgxBueP5nu3o/TPFGl5ddQugv298CznjIaRWLdknRU3EADzbb4FojLe6mWiFYBUsThKbLbcQWwUMVdGu74pseSNKMbrqJF/QSPBAkloSMc9/mkGY+zv2OKNOcrHMxxOFH7OlLh4NV3K1jSHV/6fYGwFXyzckSD+MAKvcnA0Dzf0ob1ET4KR84svBRIqT3On80Q60DKjAqumsaLH4rrnKriIsXa/oW+pgXWSUNUcVts7E0krqR00ReIaNuSlJMBQQ7DzOOF4Qdk1yqP0JBfkRGRXFIYCznwjJDI9h4B+vJBf17Q59IQez15Zn1VgpMJKPO7S6e/BZtC6hUljdkCjIiXUXu8a18JROuaPKBP8xnuxBvO3kcJOF8zY8+o0zqAv2XQZ0wwYJGXb51v1FhUHTpw1PD+qfzgnvd5yKJEmwt78FwaiGfzq7Yria2Y23nFCmY5YJK+JCjaMNDJNFCuJsBIR/x9mQC8MyGxd/qxmQwBY8ylsY3iaXnY+wXbFvODmpR6dpHOa3D1HRilbFR5xQvW3qL5Mjt64nm91wPYI6YF8q9ZV1bpyhCa9BlUTPVnnBs5myOc0uol1D5YrSqtjDxZlBj05xTm6JDKBtlwWc1oMNmZ70OiA3IskznXRggPRHVYgPzZokEjFIwmoqp8IdA1YC1PVQ0fefhWthSzwzsNNqLaxSfW8gu0aktfwC1KHStdMtcUGSNOYki2UqDHJy3qbIhI/wb4Qo29UOc2+2S20tI3HgIU4cbzRlZiP7rmUeLBC8XKMqhXHW+9tBgsGfVMG9Y3+lSAOcV4+0ncEONEAN85J4QGEYisido=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(30864003)(9686003)(41300700001)(26005)(44832011)(186003)(83380400001)(33656002)(2906002)(7696005)(6506007)(86362001)(52536014)(478600001)(53546011)(55236004)(966005)(5660300002)(8936002)(38100700002)(316002)(45080400002)(6636002)(122000001)(110136005)(4326008)(71200400001)(66476007)(8676002)(54906003)(55016003)(64756008)(66946007)(66556008)(76116006)(66446008)(38070700005)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mhjJx6KDWgGc75Q2VAuEk63Yy+4bdduoV7dir7cvf+TQzBhqD+kkhrklpm8h?=
 =?us-ascii?Q?FH5A6qKVrn91nmCTk+E6uF2kIALklwWDHomLH5dqK0drKfATtZ1NDDn3ZFSt?=
 =?us-ascii?Q?AryqeLolpNiIKkovV80jHjW5McBiZbP02V7m8FT26q++OvBdd///HVTQOzo5?=
 =?us-ascii?Q?QETPaAJ2eE0gj7A0cbrmZKSPUT96yhG1yAC0ea4dvZWSfMv4PEeSWzLc1Fj1?=
 =?us-ascii?Q?KvhqxlLbpkSC2MvXUcOICOEB7cjrel5kSPVUibydJpWNAiv+9LO4xmMGTtXL?=
 =?us-ascii?Q?7G0UPAQmqz3BYnvbolr94EjM2ewVdu9kGFa8zDnGjxDKPSxhNCYxUhPI6Kux?=
 =?us-ascii?Q?ZXH8cauliVaG6DbowWHoRo7Y/siwxK30/CFt3M0+0yNrhf3W41XGjLUcH7Ck?=
 =?us-ascii?Q?hgUgsneQZuWJCh0NWoY47hIC3ohZzyK2ZQ7pOmKKEwF9gDOoYHKx5lMvYIPL?=
 =?us-ascii?Q?VmqGA1oI9+0e7cqT35c9VE3so27RZcLjUXFZVUbHLNJLMA7vAtCCiV+iJtN/?=
 =?us-ascii?Q?xV2mUgYptNymfmcGQmlxbEAaVQuRNDPmgM+B5CNHCpt5wXxjiJ+EHEioiEMs?=
 =?us-ascii?Q?q83UOIEBSE7qN65Xe+hZBIHh4CAFeD8BF9/bwPJtQkKft30mDics6xhThBZo?=
 =?us-ascii?Q?m8T8bgsNE0l5TdEi77hc5IRwVN5MjSL5w65jOXNRXv7PnStmLD71vNWswkW/?=
 =?us-ascii?Q?9/HS8IqgndhughcAgmif0xiqHsa7gAn/6BcrIV+oJ8S/jrfejUAkrUAHQTPs?=
 =?us-ascii?Q?Jbn9drtg3juFR2EnfJKvJdwIJn6hNJtpE9Pop/Svt7eu4TKAq6goVaXP1vfs?=
 =?us-ascii?Q?OW5x3qzUMKg6Ir2RjztetLG0EYxYXJoI1DFCThaE6wk5D2/y7i8C1+6Zhq3w?=
 =?us-ascii?Q?T3mGz0TXcFsUwiHgzcJPvU4xNqZUzONGA+D89GAPuk00eMVC5uyZyBkddgvh?=
 =?us-ascii?Q?+eUr8usTRWPKDaQf+4CzzGfCY4g+I8HgoB3oD96kW5XD/JVdb6g6qb5B5AHj?=
 =?us-ascii?Q?TqsVFxKm8KCyhNcz0dYTK2VLzucQUE8k9Q1MW76xc2NM20eTlOuxyg4o0kzs?=
 =?us-ascii?Q?ncJ3+1OTd+Dwzomhx02NGGhfIclVfSWfHRoyT8ViOmGE2ezitkEdSK4chm16?=
 =?us-ascii?Q?edBjWQlcB9sTqHx2SBsjzAw4h0gwvK23KPNsWB082TfA0vdSQvXvaP1gBb5c?=
 =?us-ascii?Q?cvgAbgnz9zCF0QEg3g+zxUb15ka7jqSCKW4IE82ExT1GF8aIT4ztrKNcympl?=
 =?us-ascii?Q?aaqadFYQ/ovwZ9Lx/Tg8zWZLr80ubuqMeMwTdm8AKKOSaHta07ksa1rAV5qe?=
 =?us-ascii?Q?Lz+LJSB9gFjbscz9Joh9n7bgJedDptR/UiZNc2BWS8m/OGmWi9JB1Te6xB+K?=
 =?us-ascii?Q?AcNIu7Iyioy9d6F2RD+/yYdlxPieMvxHUtjhanmw+9CwBjz5BGU2nDiaT8m7?=
 =?us-ascii?Q?z41qUf/XoAlBxGYjjWIJwznZeZvem4+8cqQO9JzTWrtB8qclTC82bLTAH5x8?=
 =?us-ascii?Q?+XegWkrrtbSJgEFM/Qktfjs++oZIO4WndCIAtgX2ijVXiImXqZHXHy+SabW0?=
 =?us-ascii?Q?IkUgVWWoyVSMj5BrtNqYjgeifnnH3t7N5Mn5I36R?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e771bf-c8c9-4e7e-bff7-08da68ee559e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 18:50:07.3693
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CwQOujN4n+k2yY7GsVLvQXmilK8GQ36K+H30Cg9r7W9wjHkhMtLI2YuRS5OHpWD62wePgwERP7tcYIlEeVW96w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4455
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Sent: Monday, July 18, 2022 8:01 AM
> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
> Cc: devicetree@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: [EXT] Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl sup=
port
>=20
> Caution: EXT Email
>=20
> On 16/07/2022 01:12, Shenwei Wang wrote:
> > i.MX8DXL is a device targeting the automotive and industrial market
> > segments. The chip is designed to achieve both high performance and
> > low power consumption. It has a dual (2x) Cortex-A35 processor.
> >
> > This patch adds the imx8dxl soc and EVK board support.
>=20
> I saw this patch and I was already commenting it:
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore.=
kern
> el.org%2Fall%2F20220404134609.2676793-2-
> abel.vesa%40nxp.com%2F&amp;data=3D05%7C01%7Cshenwei.wang%40nxp.com
> %7C235450e576d44c030c1e08da68bd88de%7C686ea1d3bc2b4c6fa92cd99c5c3
> 01635%7C0%7C0%7C637937460494602259%7CUnknown%7CTWFpbGZsb3d8ey
> JWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C
> 3000%7C%7C%7C&amp;sdata=3DZiDgTTZbcifNMBjDHTCdMKC1hgmf7BGzuvCJe%2
> FyagzQ%3D&amp;reserved=3D0
>=20
> Doing things twice, reviewing twice is waste of time. I actually spotted =
this
> duplication after I perform a review, but this patch should be abandoned =
and
> Abel's patches should rather go.

I am not sure if Abel is still working on this task. The goal is to get the=
 imx8dxl supported by upstreaming kernel. As both patches were picked up fr=
om the company internal repo and modified for upstreaming requirements, I d=
on't mind whose patches to get included.  Please let me know which one is e=
asy for you to go ahead, and I can continue with Abel's patch if needed.

>=20
> >
>=20
> (...)
>=20
> > +
> > +/ {
> > +     model =3D "Freescale i.MX8DXL EVK";
> > +     compatible =3D "fsl,imx8dxl-evk", "fsl,imx8dxl";
> > +
> > +     chosen {
> > +             stdout-path =3D &lpuart0;
> > +     };
> > +
> > +     memory@80000000 {
> > +             device_type =3D "memory";
> > +             reg =3D <0x00000000 0x80000000 0 0x40000000>;
> > +     };
> > +
> > +     reserved-memory {
> > +             #address-cells =3D <2>;
> > +             #size-cells =3D <2>;
> > +             ranges;
> > +
> > +             /*
> > +              *Memory reserved for optee usage. Please do not use.
> > +              *This will be automaticky added to dtb if OP-TEE is inst=
alled.
> > +              *optee@96000000 {
> > +              *      reg =3D <0 0x96000000 0 0x2000000>;
> > +              *     no-map;
> > +              *};
> > +              */
>=20
> Now it is not a proper Linux coding style comment. See Coding Style.

Let me fix it in next version.=20

>=20
> > +
> > +             /* global autoconfigured region for contiguous allocation=
s */
> > +             linux,cma {
> > +                     compatible =3D "shared-dma-pool";
> > +                     reusable;
> > +                     size =3D <0 0x14000000>;
> > +                     alloc-ranges =3D <0 0x98000000 0 0x14000000>;
> > +                     linux,cma-default;
> > +             };
> > +     };
> > +
> > +     mux3_en: regulator-0 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-name =3D "mux3_en";
> > +             gpio =3D <&pca6416_2 8 GPIO_ACTIVE_LOW>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     reg_fec1_sel: regulator-1 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "fec1_supply";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             gpio =3D <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
> > +             regulator-always-on;
> > +             status =3D "disabled";
> > +     };
> > +
> > +     reg_fec1_io: regulator-2 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "fec1_io_supply";
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <1800000>;
> > +             gpio =3D <&max7322 0 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +             regulator-always-on;
> > +             status =3D "disabled";
> > +     };
> > +
> > +     reg_usdhc2_vmmc: regulator-3 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "SD1_SPWR";
> > +             regulator-min-microvolt =3D <3000000>;
> > +             regulator-max-microvolt =3D <3000000>;
> > +             gpio =3D <&lsio_gpio4 30 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +             off-on-delay-us =3D <3480>;
> > +     };
> > +};
> > +
> > +&eqos {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_eqos>;
> > +     phy-mode =3D "rgmii-id";
> > +     phy-handle =3D <&ethphy0>;
> > +     nvmem-cells =3D <&fec_mac1>;
> > +     nvmem-cell-names =3D "mac-address";
> > +     snps,reset-gpios =3D <&pca6416_1 2 GPIO_ACTIVE_LOW>;
> > +     snps,reset-delays-us =3D <10 20 200000>;
> > +     status =3D "okay";
> > +
> > +     mdio {
> > +             compatible =3D "snps,dwmac-mdio";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             ethphy0: ethernet-phy@0 {
> > +                     compatible =3D "ethernet-phy-ieee802.3-c22";
> > +                     reg =3D <0>;
> > +                     eee-broken-1000t;
> > +                     qca,disable-smarteee;
> > +                     vddio-supply =3D <&vddio0>;
> > +
> > +                     vddio0: vddio-regulator {
> > +                             regulator-min-microvolt =3D <1800000>;
> > +                             regulator-max-microvolt =3D <1800000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&fec1 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_fec1>;
> > +     phy-mode =3D "rgmii-txid";
> > +     phy-handle =3D <&ethphy1>;
> > +     fsl,magic-packet;
> > +     rx-internal-delay-ps =3D <2000>;
> > +     nvmem-cells =3D <&fec_mac0>;
> > +     nvmem-cell-names =3D "mac-address";
> > +     phy-reset-gpios =3D <&pca6416_1 0 GPIO_ACTIVE_LOW>;
> > +     phy-reset-duration =3D <10>;
> > +     phy-reset-post-delay =3D <150>;
> > +     status =3D "disabled";
> > +
> > +     mdio {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             ethphy1: ethernet-phy@1 {
> > +                     compatible =3D "ethernet-phy-ieee802.3-c22";
> > +                     reg =3D <1>;
> > +                     qca,disable-smarteee;
> > +                     vddio-supply =3D <&vddio1>;
> > +
> > +                     vddio1: vddio-regulator {
> > +                             regulator-min-microvolt =3D <1800000>;
> > +                             regulator-max-microvolt =3D <1800000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&flexspi0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_flexspi0>;
> > +     nxp,fspi-dll-slvdly =3D <4>;
> > +     status =3D "okay";
> > +
> > +     mt35xu512aba0: flash@0 {
> > +             compatible =3D "jedec,spi-nor";
> > +             reg =3D <0>;
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <1>;
> > +             spi-max-frequency =3D <133000000>;
> > +             spi-tx-bus-width =3D <8>;
> > +             spi-rx-bus-width =3D <8>;
> > +     };
> > +};
> > +
> > +&i2c2 {
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +     clock-frequency =3D <100000>;
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_i2c2>;
> > +     status =3D "okay";
> > +
> > +     pca6416_1: gpio@20 {
> > +             compatible =3D "ti,tca6416";
> > +             reg =3D <0x20>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     pca6416_2: gpio@21 {
> > +             compatible =3D "ti,tca6416";
> > +             reg =3D <0x21>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +     };
> > +
> > +     pca9548_1: gpio@70 {
> > +             compatible =3D "nxp,pca9548";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             reg =3D <0x70>;
> > +
> > +             i2c@0 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x0>;
> > +
> > +                     max7322: gpio@68 {
> > +                             compatible =3D "maxim,max7322";
> > +                             reg =3D <0x68>;
> > +                             gpio-controller;
> > +                             #gpio-cells =3D <2>;
> > +                             status =3D "disabled";
> > +                     };
> > +             };
> > +
> > +             i2c@4 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x4>;
> > +             };
> > +
> > +             i2c@5 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x5>;
> > +             };
> > +
> > +             i2c@6 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x6>;
> > +             };
> > +     };
> > +};
> > +
> > +&i2c3 {
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +     clock-frequency =3D <100000>;
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_i2c3>;
> > +     status =3D "okay";
> > +
> > +     pca6416_3: gpio@20 {
> > +             compatible =3D "ti,tca6416";
> > +             reg =3D <0x20>;
> > +             gpio-controller;
> > +             #gpio-cells =3D <2>;
> > +             interrupt-parent =3D <&lsio_gpio2>;
> > +             interrupts =3D <5 IRQ_TYPE_EDGE_RISING>;
> > +     };
> > +
> > +     pca9548_2: gpio@70 {
> > +             compatible =3D "nxp,pca9548";
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +             reg =3D <0x70>;
> > +
> > +             i2c@0 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x0>;
> > +             };
> > +
> > +             i2c@1 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x1>;
> > +             };
> > +
> > +             i2c@2 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x2>;
> > +             };
> > +
> > +             i2c@3 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x3>;
> > +             };
> > +
> > +             i2c@4 {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +                     reg =3D <0x4>;
> > +             };
> > +     };
> > +};
> > +
> > +&lpuart0 {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_lpuart0>;
> > +     status =3D "okay";
> > +};
> > +
> > +&lsio_gpio4 {
> > +     status =3D "okay";
> > +};
> > +
> > +&lsio_gpio5 {
> > +     status =3D "okay";
> > +};
> > +
> > +&thermal_zones {
> > +     pmic-thermal0 {
> > +             polling-delay-passive =3D <250>;
> > +             polling-delay =3D <2000>;
> > +             thermal-sensors =3D <&tsens IMX_SC_R_PMIC_0>;
> > +
> > +             trips {
> > +                     pmic_alert0: trip0 {
> > +                             temperature =3D <110000>;
> > +                             hysteresis =3D <2000>;
> > +                             type =3D "passive";
> > +                     };
> > +                     pmic_crit0: trip1 {
> > +                             temperature =3D <125000>;
> > +                             hysteresis =3D <2000>;
> > +                             type =3D "critical";
> > +                     };
> > +             };
> > +
> > +             cooling-maps {
> > +                     map0 {
> > +                             trip =3D <&pmic_alert0>;
> > +                             cooling-device =3D
> > +                                     <&A35_0 THERMAL_NO_LIMIT THERMAL_=
NO_LIMIT>,
> > +                                     <&A35_1 THERMAL_NO_LIMIT THERMAL_=
NO_LIMIT>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&usdhc1 {
> > +     pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> > +     pinctrl-0 =3D <&pinctrl_usdhc1>;
> > +     pinctrl-1 =3D <&pinctrl_usdhc1_100mhz>;
> > +     pinctrl-2 =3D <&pinctrl_usdhc1_200mhz>;
> > +     bus-width =3D <8>;
> > +     no-sd;
> > +     no-sdio;
> > +     non-removable;
> > +     status =3D "okay";
> > +};
> > +
> > +&usdhc2 {
> > +     pinctrl-names =3D "default", "state_100mhz", "state_200mhz";
> > +     pinctrl-0 =3D <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> > +     pinctrl-1 =3D <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> > +     pinctrl-2 =3D <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> > +     bus-width =3D <4>;
> > +     vmmc-supply =3D <&reg_usdhc2_vmmc>;
> > +     cd-gpios =3D <&lsio_gpio5 1 GPIO_ACTIVE_LOW>;
> > +     wp-gpios =3D <&lsio_gpio5 0 GPIO_ACTIVE_HIGH>;
> > +     max-frequency =3D <100000000>;
> > +     status =3D "okay";
> > +};
> > +
> > +&iomuxc {
> > +     pinctrl-names =3D "default";
> > +     pinctrl-0 =3D <&pinctrl_hog>;
> > +
> > +     pinctrl_hog: hoggrp {
> > +             fsl,pins =3D <
> > +                     IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHB_PAD
> 0x000514a0
> > +                     IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHK_PAD
> 0x000014a0
> > +                     IMX8DXL_SPI3_CS0_ADMA_ACM_MCLK_OUT1
> 0x0600004c
> > +                     IMX8DXL_SNVS_TAMPER_OUT1_LSIO_GPIO2_IO05_IN
> 0x0600004c
> > +             >;
> > +     };
> > +
> > +     pinctrl_usbotg1: otg1 {
>=20
> All pinctrl groups must end with "grp". Just open the bindings for severa=
l iMX pin
> controllers.
>=20
> I pointed it out and you still did not fix it.

Sorry, I misunderstood that. Will get it fixed in next version.
=20
>=20
>=20
> > +             fsl,pins =3D <
> > +                     IMX8DXL_USB_SS3_TC0_CONN_USB_OTG1_PWR
> 0x00000021
> > +             >;
> > +     };
> > +
> > +     pinctrl_usbotg2: otg2 {
> > +             fsl,pins =3D <
> > +                     IMX8DXL_USB_SS3_TC1_CONN_USB_OTG2_PWR
> 0x00000021
> > +             >;
> > +     };
>=20
> (...)
>=20
> > diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> > new file mode 100644
> > index 0000000000000..2de56dfa16d6b
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> > @@ -0,0 +1,245 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2019~2020 NXP
> > + */
> > +
> > +#include <dt-bindings/clock/imx8-clock.h> #include
> > +<dt-bindings/firmware/imx/rsrc.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/pinctrl/pads-imx8dxl.h>
> > +#include <dt-bindings/thermal/thermal.h>
> > +
> > +/ {
> > +     interrupt-parent =3D <&gic>;
> > +     #address-cells =3D <2>;
> > +     #size-cells =3D <2>;
> > +
> > +     aliases {
> > +             ethernet0 =3D &fec1;
> > +             ethernet1 =3D &eqos;
> > +             gpio0 =3D &lsio_gpio0;
> > +             gpio1 =3D &lsio_gpio1;
> > +             gpio2 =3D &lsio_gpio2;
> > +             gpio3 =3D &lsio_gpio3;
> > +             gpio4 =3D &lsio_gpio4;
> > +             gpio5 =3D &lsio_gpio5;
> > +             gpio6 =3D &lsio_gpio6;
> > +             gpio7 =3D &lsio_gpio7;
> > +             i2c2 =3D &i2c2;
> > +             i2c3 =3D &i2c3;
>=20
> Still not a SoC aliases but rather board.

See my comments in another thread.=20

>=20
> > +             mmc0 =3D &usdhc1;
> > +             mmc1 =3D &usdhc2;
> > +             mu1 =3D &lsio_mu1;
> > +             serial0 =3D &lpuart0;
> > +             serial1 =3D &lpuart1;
> > +             serial2 =3D &lpuart2;
> > +             serial3 =3D &lpuart3;
> > +     };
>=20
> (...)
>=20
> > +
> > +     xtal32k: clock-xtal32k {
> > +             compatible =3D "fixed-clock";
> > +             #clock-cells =3D <0>;
> > +             clock-frequency =3D <32768>;
> > +             clock-output-names =3D "xtal_32KHz";
> > +     };
> > +
> > +     xtal24m: clock-xtal24m {
> > +             compatible =3D "fixed-clock";
> > +             #clock-cells =3D <0>;
> > +             clock-frequency =3D <24000000>;
>=20
>=20
> Didn't you ignore (again) comments?

The SoC requires two Crystal clock inputs, one is 24MHz and the other is 32=
KHz. The board design doesn't have an option to change the values. That's w=
hy we keep the nodes here.

Thanks,
Shenwei

>=20
> So let me again clarify - either you implement the comment or you keep
> discussion going.
>=20
> You keep not implementing the comments and you decided not discussing the=
m,
> so it's still a NAK.
>=20
>=20
> Best regards,
> Krzysztof
