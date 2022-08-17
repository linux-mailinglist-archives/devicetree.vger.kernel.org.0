Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD5B5967BA
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 05:25:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbiHQDZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 23:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbiHQDZA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 23:25:00 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2066.outbound.protection.outlook.com [40.107.20.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DCCB7EFC7
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 20:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aIQHAhNsocauCQvmhlJcU33tnopemAtKUMLztEv9eq4vl6UdzOAKBaowQC/+SE44GMkcs7DKiTjBAqwHKbPVDhmJhYEY5Wkduu5pdg/uVDQ1x0EadVHsF21O0wg2hzlIR8Zglb7MzP5xWRUG7Fj7AWCBcppBn2y1AEWAKy8Fv30XjsvlzhNNJvgBuf5of47hD8os9Em/G/PE2ilyzpAyoRg42kj7hmnNb+9S1TTg9/UZ1wP8AoI0JaW+X0DKOkv5EgOdPqXV+MjzG9nAcsLFOgELo7WMmqg1plLiiFsLXvomWUqy7Ou3icskLFbEm14vanlY9LtH04j3XOiEaNWE7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+w1HzLj/T5pW/pWwnmbcnPmzkC40Gu6LzXWXfIS61xc=;
 b=Rt21Q9kx6vg3NH6PlCbKhxYNBSg0sGXILwI/9M/0KlqjZNcz1QAJToG8ll0aDmssRZfTeMAIplCmHn0poxN4vJZbsd9aUiaOrw8c0XLQJb6cEvnAg4Zbiq8vgikE5b1gl23ZqKxiI78xLtJBs7ss9snGWi3/IYeqiYdr+9obSJmWvDGFAys/3uUvjFHqjULmnQBM6yXNVVlDEyttB/a/szxL11UJXmjYkPgxVNsCo/Pyest/thPaGoPAzVH3hUySxJXnF6+VbguW9dRVS9qlnr+CZS5ijcPzit5uu6elTPCB7aWJV9skZ/LWx+UapjHjI7cylC1UueabKXyqS7wpGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+w1HzLj/T5pW/pWwnmbcnPmzkC40Gu6LzXWXfIS61xc=;
 b=FYa9BoRI2RKEBCejA/FTnmk2Ga13UhFomMPU9izIGAn3HV0nAbV5AeCr6nYUe9IDHiiAIN7wcLwqsi0qhJuWI6nc2oxz+9DVx95k8ID5iEcU6lRDNVE/0VyRSgXOpVghqzM73AzH2pbwVqm0GJk0c6FVbdppLUsD00ILEVb/PtA=
Received: from DB9PR04MB8412.eurprd04.prod.outlook.com (2603:10a6:10:24d::9)
 by AM0PR04MB4209.eurprd04.prod.outlook.com (2603:10a6:208:62::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 17 Aug
 2022 03:24:54 +0000
Received: from DB9PR04MB8412.eurprd04.prod.outlook.com
 ([fe80::38fa:c0c7:75b2:39fb]) by DB9PR04MB8412.eurprd04.prod.outlook.com
 ([fe80::38fa:c0c7:75b2:39fb%9]) with mapi id 15.20.5504.028; Wed, 17 Aug 2022
 03:24:54 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
CC:     Philippe Schenker <philippe.schenker@toradex.com>,
        Peter Tian <peter.tian@nxp.com>,
        "tharvey@gateworks.com" <tharvey@gateworks.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: RE: [PATCH] arm64: dts: imx8mp: Update pin function file according to
 Rev.D RM
Thread-Topic: [PATCH] arm64: dts: imx8mp: Update pin function file according
 to Rev.D RM
Thread-Index: AQHYsUIYOISGdbobZEeRT/1CIA+XG62xksKAgADZ9BA=
Date:   Wed, 17 Aug 2022 03:24:54 +0000
Message-ID: <DB9PR04MB841293B23BF0E89E0A5A5E97876A9@DB9PR04MB8412.eurprd04.prod.outlook.com>
References: <20220816073222.1269380-1-ping.bai@nxp.com>
 <d5b7317f2149fec31070349b45ca41587571f322.camel@toradex.com>
In-Reply-To: <d5b7317f2149fec31070349b45ca41587571f322.camel@toradex.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c12e075d-a146-41a2-3dae-08da80000dd6
x-ms-traffictypediagnostic: AM0PR04MB4209:EE_
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Re21D68aVrMz527W/0Tdmtp9Zryzw8f8mDE6gvk4YAHUeHPc1HqP9oHZfDsTStTyC7S3GrS+ugMmWdRdPlDlmEOlggTOCCYy6DQZEskeorZsWtA5Ov0Hk1ZKfhKRvh6xzhYHa5eG5wqB0n0R25X6ovFkff5B6o/XGTyDnNnr6ryPhAk8n8LDHjZQsWll+GLJvx16txp4j4oPLGwtqPuXbEOlgQhrg/OHycOTzQmu7FDNckV3eJbEp70uzwE2quIAAkrnlCfNmJyAiiawp1A58B/MnwxegjbijqTSk+D4DIUA1IUffKVn1EN8jnx+uCgl/ruymyE2VWkpmoqGYhvXMlSglnXvrqQf9Z0+XiDvVnwxB+PniFKUEjmp6Vz47mW0Fzx7B8n0M3p9D3W3SokkuHXLP6EYk8+AhExeLlU0CzXDV1uXU4T8BTVqRABX3+h6QboILM2teii3FGaSTBSk61ZdhHOf99DIDvciQo4ZUwbp3AqOvSXAZagcWfJsU13zDOB/h2Ametv2wDffwpE8aeb08wxNd26QAkKWevY0GHDUQgLlzEMB1CVIIEnJ0ZCiEHdRQo6OeEULsvRetMiLK0fTHPCFkNEA2i3N92A7by/fem3FjYusdHIvxDJjJYB9PX7EKszBVoo0cmZdOUEKvuC68IalNBH6Yq9IhCACyRvz6TT66VAc4VcJHwLgWHFcPjgP0J6cCHOXEeGhpHw/IR6BoRpvn0FJVaIaXfHPzPV1kZZNm26M4RqMRiNa+6gu03b6M4Nbi5oMVmc/P7aZmOnhOFX6vyFZmf8FFbWqzlO69hYZIFMumBicW5Cdbj4w7ynG0DPQRMt7eqRk7d/SrPQhib21zikSuiYQtzUYM1G0N242/gZ4plYRPghkBRzY
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8412.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(346002)(366004)(376002)(136003)(9686003)(122000001)(38100700002)(26005)(7696005)(5660300002)(6506007)(66476007)(52536014)(33656002)(478600001)(38070700005)(86362001)(8936002)(71200400001)(66446008)(41300700001)(64756008)(8676002)(83380400001)(76116006)(4326008)(2906002)(66946007)(66556008)(316002)(55016003)(54906003)(15650500001)(110136005)(186003)(32563001)(473944003)(414714003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MnkaItOSMQWYYjpy8AmpgZJm12yrACbhPM96m6S2mmYaYzw2bFkdoXWjtp?=
 =?iso-8859-1?Q?hZ4nsNU9CJ8fU3GKHLNAZ6s5DkECP0anS1vKOEHwmIQHrA653Iz40Y9CUC?=
 =?iso-8859-1?Q?zko8u5cuymZXLb+07dAKMlQN2odzzsCAHOwGE6KD6WF3rUCb7XAc62u7qc?=
 =?iso-8859-1?Q?6zVyMq2ikGB2qL+Vy2omwUQ/KdUNxWlsArNwI0MyKHnkzde/MhEE6biAtK?=
 =?iso-8859-1?Q?NbOxRV31jRchfGpLNLjObhhoQQ7EIvGjZqugjZYgCkUqSEX78i0jVwt8RC?=
 =?iso-8859-1?Q?tlEALjDdNkYc4g+8i6U71Di6R1ZJwQi1rHZJLOPGKzjVk9gU48wAbng6Z+?=
 =?iso-8859-1?Q?2xNBm+eJHP6ANpcrBABUG87RyAHGx7ckx8McCHGxsBFGLE+/0MXFU438aA?=
 =?iso-8859-1?Q?CVH+tcp8LoTPGIVWdRsFyrK7GILPEcIoonv6198agKDByjaF2fsjqZMw87?=
 =?iso-8859-1?Q?reNS6U/t7M2sdG7Et6oE4qvRScOlgQt4hd898arpbOYT3rJAvZ/begCA2X?=
 =?iso-8859-1?Q?LZsWvi4+uq45QXxifBei+/pN17FoNjXbuthLJ9CwKCHTyAdJTTH02BM7uW?=
 =?iso-8859-1?Q?KSITGM2txLaykI61z8hYgh9+LGDEFB6Ff4WSaLPjgnLt4ezkzazBbqn9q2?=
 =?iso-8859-1?Q?gARn0hiErlWfkNJcbvW59jESt6kF3FBzIq07zifCgMXQZgUmQCAG9YxwbT?=
 =?iso-8859-1?Q?TLgihHv1FbIM4moNMpLKcIy5YSBhEy2+tXf8SWI/ZfPLFFLwwqhVm2i4xl?=
 =?iso-8859-1?Q?ysnCI/RW8ka3K4DTDmAxth2sXTLCpKgWC5U8wqk0w8zj9mz3e+H5p8902d?=
 =?iso-8859-1?Q?lUg7tw+cMVJWnEE2Z+vjscmjySN3c4+5wVg7kF0C0lQIGxIl0BNVYHxCXj?=
 =?iso-8859-1?Q?9EWrCxZx/Oc5ejYbwNUJYJVenNndhvKQoJVljONXb9Nq0NQfZJF4Nu3me2?=
 =?iso-8859-1?Q?zwHF4U8jN7rNOdxxsAUdCuaRo7iGkL9VgmByhcX8Vq1Cc6wniob7UEWT4i?=
 =?iso-8859-1?Q?kbrvbEgMvXSXz1q2C7Qn667LPgE5mZaJVzZd5xBmwpQ0lvZXKfizIn7o/H?=
 =?iso-8859-1?Q?rqVX58OE2qt/2NwJcXcxua5S7PPN2rKhC1PcJ6bLSLPvtdBy7YlD+jI9bq?=
 =?iso-8859-1?Q?BIkDvJUE7KObbThdkfj7iNxvVB31O2+H53/p7YBTHR06ixqJA6pBw1ZjAr?=
 =?iso-8859-1?Q?Y/KXk4ncQfFHHQA0G9ZwmhgbWKwjDog1tjthYjzLd/bnXnnomivDIdUUnW?=
 =?iso-8859-1?Q?xTyGHGa01vYY2VvxBQYHnrBH9hPI65d+KmmRjJe5/FgC4rN/8lwfeluhR2?=
 =?iso-8859-1?Q?D+vLrfgcJTgY0ut0lAVbx1x2NwhhnpUaSJoPimFqqDDveWGbGEzkJLT6zu?=
 =?iso-8859-1?Q?Ebjnl9ZBj+AI0NONh6V9Rlw90VCk8bhDD+mtyzXY4ek2N6j+i3xZujUnKa?=
 =?iso-8859-1?Q?JsgtX1XnXLwDMK3iGbrmTkdO3yhiWW5Tlw+EkM8aiDgE0OppCErzONkwr4?=
 =?iso-8859-1?Q?xdTpYddfPeFy/TdPLld4mWRsnxhKHUyXRy0ttlTGgALh0acK7XoonCcaoc?=
 =?iso-8859-1?Q?LKW5UWQP68ME9eF2Yq6KlBZW2GG0TltnqEJec8sewGRmgp28elVns+WLQz?=
 =?iso-8859-1?Q?Xa0L+UKlnsOv4=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8412.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c12e075d-a146-41a2-3dae-08da80000dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2022 03:24:54.6376
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HqNJbAFVBBu+NVeGOTy5hM/rIKBY0MPJjV4fP41T/bJBo5qlQX2NHMRYXFWlpoMqftGDjuE1xZ4R8didO9garA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4209
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Subject: Re: [PATCH] arm64: dts: imx8mp: Update pin function file accordi=
ng
> to Rev.D RM
>=20
> Hi Jacky
>=20
> On Tue, 2022-08-16 at 15:32 +0800, Jacky Bai wrote:
> > Update i.MX8MP imx8mp-pinfunc.h file according latest reference manual
> > Rev.D. As some of the pins' name are changed, update the dts at the
> > same time.
>=20
> I am confused. We got told by NXP that there is no such USB1_OTG_ID resp.
> USB1_ID functionality at all on the i.MX 8M Plus and one has to rely on
> simulating such functionality using a regular GPIO. I mean, I understand =
that
> this commit just updates stuff according to the latest reference manual b=
ut
> why would that reference manual still claim such functionality exists whe=
n it
> supposedly really does not and we even had to re-design our PCB due to th=
at?
>=20

Just confirmed, the info you got from NXP is correct. The USB ID pin has fu=
nction limitation. IMO, the pinmux function
of USB ID should be marked as unavailable or reserved in the RM to eliminat=
e the confusion.

Just hold this patch before I get a clear answer how to update the RM doc i=
nfo.

BR
> Anyway, unfortunately, that claim was made in a super secret under NDA
> non-public forum [1] but I am sure them NXP folks should be able to acces=
s
> that as well.
>=20
> Any ideas?
>=20
> [1]
>=20
> > Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> > ---
> > =A0.../boot/dts/freescale/imx8mp-dhcom-som.dtsi=A0=A0=A0=A0 |=A0 6 +++-=
--
> > =A0arch/arm64/boot/dts/freescale/imx8mp-evk.dts=A0=A0=A0=A0 |=A0 2 +-
> > =A0arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h=A0=A0 | 16
> > ++++++++--------
> > =A0.../boot/dts/freescale/imx8mp-venice-gw74xx.dts=A0 |=A0 4 ++--
> > =A0arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi |=A0 4 ++--
> > =A05 files changed, 16 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp-
> > dhcom-som.dtsi
> > index a616eb378002..dd896b6ddfe5 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> > @@ -867,14 +867,14 @@
> MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX
> > 0x49
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb0_vbus: dhcom-usb0-grp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D <
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO10__USB1_
> OTG_ID
> > 0x0
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO10__USB1_I
> D
> > +0x0
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0>;
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb1_vbus: dhcom-usb1-grp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D <
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO14__USB2_
> OTG_PWR
> > 0x6
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO15__USB2_
> OTG_OC
> > 0x80
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO14__USB2_
> PWR
> > +0x6
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO15__USB2_
> OC
> > +0x80
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0>;
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > index f6b017ab5f53..bdeccda5ddae 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> > @@ -529,7 +529,7 @@
> MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX=A0=A0=A0=A0=A0=A0=A0=A00x140
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb1_vbus: usb1grp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D <
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO14__USB2_
> OTG_PWR=A0=A0=A00x10
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO14__USB2_
> PWR=A0=A0=A0=A0=A0=A0=A00x10
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0>;
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> > b/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> > index 0fef066471ba..7c266990aa3e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> > @@ -13,10 +13,12 @@
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00
>=20
> > 0x014 0x274 0x000 0x0 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO00__CCM_ENET_PHY_REF_CLK_ROOT
>=20
> > 0x014 0x274 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO00__ISP_FL_TRIG_0
>=20
> > 0x014 0x274 0x5D4 0x3 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO00__ANAMIX_REF_CLK_32K
>=20
> > +0x014 0x274 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO00__CCM_EXT_CLK1
>=20
> > 0x014 0x274 0x000 0x6 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01
>=20
> > 0x018 0x278 0x000 0x0 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO01__PWM1_OUT
>=20
> > 0x018 0x278 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO01__ISP_SHUTTER_TRIG_0
>=20
> > 0x018 0x278 0x5DC 0x3 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO01__ANAMIX_REF_CLK_24M
>=20
> > +0x018 0x278 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO01__CCM_EXT_CLK2
>=20
> > 0x018 0x278 0x000 0x6 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO02__GPIO1_IO02
>=20
> > 0x01C 0x27C 0x000 0x0 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B
>=20
> > 0x01C 0x27C 0x000 0x1 0x0 @@ -58,26 +60,26 @@
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO09__USDHC3_RESET_B
>=20
> > 0x038 0x298 0x000 0x4 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO09__SDMA2_EXT_EVENT00
>=20
> > 0x038 0x298 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10
>=20
> > 0x03C 0x29C 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO10__USB1_OTG_ID
> =A0=A0=A0=A0=A0 0x03C
> > 0x29C 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO10__USB1_ID
>=20
> > +0x03C 0x29C 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO10__PWM3_OUT
>=20
> > 0x03C 0x29C 0x000 0x2 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO11__GPIO1_IO11
>=20
> > 0x040 0x2A0 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO11__USB2_OTG_ID
> =A0=A0=A0=A0=A0 0x040
> > 0x2A0 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO11__USB2_ID
>=20
> > +0x040 0x2A0 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO11__PWM2_OUT
>=20
> > 0x040 0x2A0 0x000 0x2 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO11__USDHC3_VSELECT
>=20
> > 0x040 0x2A0 0x000 0x4 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO11__CCM_PMIC_READY
>=20
> > 0x040 0x2A0 0x554 0x5 0x1
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12
>=20
> > 0x044 0x2A4 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR
> =A0=A0=A0=A0=A0=A0 0x044
> > 0x2A4 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO12__USB1_PWR
>=20
> > +0x044 0x2A4 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO12__SDMA2_EXT_EVENT01
>=20
> > 0x044 0x2A4 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13
>=20
> > 0x048 0x2A8 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC
> =A0=A0=A0=A0=A0=A0 0x048
> > 0x2A8 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO13__USB1_OC
>=20
> > +0x048 0x2A8 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO13__PWM2_OUT
>=20
> > 0x048 0x2A8 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14
>=20
> > 0x04C 0x2AC 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR
> =A0=A0=A0=A0=A0=A0 0x04C
> > 0x2AC 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO14__USB2_PWR
>=20
> > +0x04C 0x2AC 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO14__USDHC3_CD_B
>=20
> > 0x04C 0x2AC 0x608 0x4 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO14__PWM3_OUT
>=20
> > 0x04C 0x2AC 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO14__CCM_CLKO1
>=20
> > 0x04C 0x2AC 0x000 0x6 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15
>=20
> > 0x050 0x2B0 0x000 0x0 0x0 -#define
> >
> MX8MP_IOMUXC_GPIO1_IO15__USB2_OTG_OC
> =A0=A0=A0=A0=A0=A0 0x050
> > 0x2B0 0x000 0x1 0x0
> > +#define
> MX8MP_IOMUXC_GPIO1_IO15__USB2_OC
>=20
> > +0x050 0x2B0 0x000 0x1 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO15__USDHC3_WP
>=20
> > 0x050 0x2B0 0x634 0x4 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO15__PWM4_OUT
>=20
> > 0x050 0x2B0 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_GPIO1_IO15__CCM_CLKO2
>=20
> > 0x050 0x2B0 0x000 0x6 0x0 @@ -258,10 +260,8 @@
> > =A0#define
> MX8MP_IOMUXC_SD2_DATA3__AUDIOMIX_SPDIF1_IN
>=20
> > 0x0D4 0x334 0x544 0x3 0x1
> > =A0#define
> MX8MP_IOMUXC_SD2_DATA3__AUDIOMIX_PDM_BIT_STREAM03
>=20
> > 0x0D4 0x334 0x4CC 0x4 0x2
> > =A0#define
> MX8MP_IOMUXC_SD2_DATA3__GPIO2_IO18
>=20
> > 0x0D4 0x334 0x000 0x5 0x0 -#define
> >
> MX8MP_IOMUXC_SD2_DATA3__SRC_EARLY_RESET
> =A0=A0=A0=A0 0x0D4
> > 0x334 0x000 0x6 0x0
> > =A0#define
> MX8MP_IOMUXC_SD2_RESET_B__USDHC2_RESET_B
>=20
> > 0x0D8 0x338 0x000 0x0 0x0
> > =A0#define
> MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19
>=20
> > 0x0D8 0x338 0x000 0x5 0x0 -#define
> >
> MX8MP_IOMUXC_SD2_RESET_B__SRC_SYSTEM_RESET
> =A0=A0=A0=A0 0x0D8
> > 0x338 0x000 0x6 0x0
> > =A0#define
> MX8MP_IOMUXC_SD2_WP__USDHC2_WP
>=20
> > 0x0DC 0x33C 0x000 0x0 0x0
> > =A0#define
> MX8MP_IOMUXC_SD2_WP__GPIO2_IO20
>=20
> > 0x0DC 0x33C 0x000 0x5 0x0
> > =A0#define
> MX8MP_IOMUXC_SD2_WP__CORESIGHT_EVENTI
>=20
> > 0x0DC 0x33C 0x000 0x6 0x0 diff --git
> > a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > b/arch/arm64/boot/dts/freescale/imx8mp-
> > venice-gw74xx.dts
> > index 521215520a0f..ac59f36b82fc 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> > @@ -824,8 +824,8 @@
> MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX=A0=A0=A0=A0=A0=A0=A0=A00x140
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb1: usb1grp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D <
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO13__USB1_
> OTG_OC=A0=A0=A0=A00x140
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO10__USB1_
> OTG_ID=A0=A0=A0=A00x140
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO13__USB1_
> OC=A0=A0=A0=A0=A0=A0=A0=A00x140
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0MX8=
MP_IOMUXC_GPIO1_IO10__USB1_I
> D=A0=A0=A0=A0=A0=A0=A0=A00x140
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0>;
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp-
> > verdin.dtsi
> > index c5987bdbb383..da66d8487651 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
> > @@ -1205,7 +1205,7 @@ pinctrl_uart4: uart4grp {
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb1_vbus: usb1vbusgrp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0<MX=
8MP_IOMUXC_GPIO1_IO12__USB1
> _OTG_PWR
> > 0x19>;=A0=A0/* SODIMM 155 */
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0<MX=
8MP_IOMUXC_GPIO1_IO12__USB1
> _PWR
> > +0x19>;=A0=A0/* SODIMM 155 */
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0/* USB_1_ID */
> > @@ -1216,7 +1216,7 @@ pinctrl_usb_1_id: usb1idgrp {
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0pinctrl_usb2_vbus: usb2vbusgrp {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fsl,pins =3D
> >
> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0<MX=
8MP_IOMUXC_GPIO1_IO14__USB2
> _OTG_PWR
> > 0x19>;=A0=A0/* SODIMM 185 */
> >
> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0<MX=
8MP_IOMUXC_GPIO1_IO14__USB2
> _PWR
> > +0x19>;=A0=A0/* SODIMM 185 */
> > =A0=A0=A0=A0=A0=A0=A0=A0};
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0/* On-module Wi-Fi */
>=20
> Cheers
>=20
> Marcel
