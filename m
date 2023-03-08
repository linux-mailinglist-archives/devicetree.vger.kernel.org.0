Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA14E6AFE07
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 06:00:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjCHFAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 00:00:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjCHFAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 00:00:39 -0500
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2100.outbound.protection.outlook.com [40.107.21.100])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C46B79DE06
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 21:00:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJHYf5TVwYQHqNRgEcJbUjGmF368ccMQTMGuTRL/liopC7olZ/DiCVejTRKjcMVdkJI4KWvnRJBrj2iwcVcvzoC1psFhjGxa6tNieGLLa61/l8o0zQv02I34sGjiJPgSfSnzGtC6EFJMU3YD0NW4nwg4xjmpu3j25KQF1U9YCtbocV0TCmQMkjY6gtgK1N4Z2J3nacKZEWYM1QpBkb3kJohn98E1CzDtsBRg8dwX/l5vM3B1qgJjpBTM6ixMwa1TZAQLhP23PhPGjqsn1ApcpvIocAOeIYnWD4yN9WDUdZmtwgslI6Si06CTUSE7Q1pgPpiluihfvG6ySSvOB1W1zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c7HCQTgLHNvuD0VnJQlGGRQBsWjG2Om9ZdSQQog4MQw=;
 b=eDovA4F8ejeNS8E60qtrPI+xXBBjZolSnrPfOj21z0dZgPkINW/Y6j/+l87U2e1tv6t/skTeISjWpOTIH2egJk6pgMY+aA81VYXMu3HLZrE2apAU/xcKXcy5XLgI7kVUbUZQ0Y/nrCM9rte9a/fNU7bajtS8rgpk0Jts/Ki4kbO7rLx2v/DolHFqMnB9ZbWEiCPge9JUgMHEX9whSv85+6IVfnCT+Bljz39kFDRnAUQrWlJXbo80ORSJCy1MLCCcMMfcVn517zBe6sZJL0unVRqLPE41so8eMEc39lYHBX8hDABDfZqSfYfj+pnzpqWt4qJbJ0w4yJvOjQNEMrqTIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7HCQTgLHNvuD0VnJQlGGRQBsWjG2Om9ZdSQQog4MQw=;
 b=CTcV0V7lwDAD4FCCfkihooqCCo3U3FfPUCwrye7J/w5Hf4CULyfOec8qWbGeVsVLkEQ8otFMLWHbeAzks3vEgyYrmwXF2vB2k+c0+2p6wv5mQ4Ygt2ziprKreOvERLCzn+hPSHvwkedJI4rbcQkaHdzs2sH0+q9ZdhTTuk3z3eo=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 DB8PR06MB6572.eurprd06.prod.outlook.com (2603:10a6:10:fd::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.29; Wed, 8 Mar 2023 05:00:33 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3%5]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 05:00:33 +0000
From:   SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "haibo.chen@nxp.com" <haibo.chen@nxp.com>,
        "ping.bai@nxp.com" <ping.bai@nxp.com>,
        "peter.chen@nxp.com" <peter.chen@nxp.com>,
        "yibin.gong@nxp.com" <yibin.gong@nxp.com>,
        "Anson.Huang@nxp.com" <Anson.Huang@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Thread-Topic: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Thread-Index: AQHZNM/sOkW/hfw/KEeFX7O8iK5emq7u3DgAgABf7oCAAUwGXQ==
Date:   Wed, 8 Mar 2023 05:00:33 +0000
Message-ID: <DB6PR06MB400849C90A2C7868E4FF8796BCB49@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
 <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
 <20230307031426.GI143566@dragon>
 <20230307085747.mrqeoi4mkggby73o@pengutronix.de>
In-Reply-To: <20230307085747.mrqeoi4mkggby73o@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|DB8PR06MB6572:EE_
x-ms-office365-filtering-correlation-id: 30af08bc-123a-4888-1936-08db1f920c10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ioGyU7RGvrMRUAnSGkykK4G4DywdkRjLBzRFcr/Wtf6/zFOZB91V+4ohTE8r9uYzs8bnSmSn0U4eBcpEYheymMrjcIdQv7UCXbbhyVoPmdy5gDwMxgoAGNUgVTtOHIW3GuqKFsLHmEFtfQGxsMc5TXyz7ePUMiMkJGDvW8raOt3jWxlcfMpYhGq5veHlnBhnelnJCs3ZmoYJ14FaY6g0r2tyY/uHgRnSakM2ZRkJwYK37V6a0X5ilZppUylOve567MC8ThAvUNyhTZjIIs0ooQIjWDeHfLNggEFxIh1DqeYoUhos5eTvlp0bkJbm6x0yEhxYwoYxyrjhvqy0XN2Jqrr1e0h2m0D17Yzf6yTbFI5T2Rl6pTD9hPaEBmhL7Pwr1NaV3GGA1mbzMBj2XLFSP3idxT5N+PoHnruLKiJphCvTzUUSaAuOEGkCfA2hOA7gGOBYjgdSR3cEGD/bl63ImdKVrrJSGuVzwfO5JehdkdqxxSY7980VV7hAEMXRff3HKhK/SDa3ai/kx0tIVaholVSZTEVqz+TeQENMo7F5ZaSHrJjCGYXiDvmBuSqeFaHnXJngy0Fqo1GI1SAvUmKSH/Xqu1eW4fjDdNwmGsmLSN6flM5JKyZeVhpxdsZRQTaDPwg+0rtwl+2Zk/IzXzz/9KB8D7TFM1KqveMqPPvhwCmJXG/V5VZDUOkPZqAWKEO52dnldjUrIuoJAD7UtnDubg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199018)(83380400001)(55016003)(122000001)(7416002)(8936002)(38100700002)(33656002)(52536014)(86362001)(478600001)(5660300002)(71200400001)(38070700005)(2906002)(9686003)(186003)(6506007)(66556008)(91956017)(26005)(966005)(66476007)(66446008)(8676002)(66946007)(7696005)(4326008)(45080400002)(76116006)(64756008)(110136005)(316002)(54906003)(41300700001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HPQhBs0XsqyrDg+4wJxxJ8HpgIu/XpCieypMk48wLB8qN1q3ar2SyciOyq?=
 =?iso-8859-1?Q?th7BnBhHe71Wts6HjWV/99/9VSG8aBYd7BXXEI1OToPMhLA8HVDE3YgdGR?=
 =?iso-8859-1?Q?Bm0Z7hnZ31/zUu36WfqsjOOcCZKtLSuaGor2ZneiuomZ3m0H0YrmzG/v8F?=
 =?iso-8859-1?Q?2RKB8ur7Yy7qJy48xPCHHcLHMBG3gKnna/8YXBUoZTN1BPl/TMkS+l9pZB?=
 =?iso-8859-1?Q?y7aD9F2w18YupouhFdbEl7y6SXBN5ijsVgrcT4rfNsz6yhrbFu5uaqtqhW?=
 =?iso-8859-1?Q?ld5aeZMyKArrz4qH2wLQT+ZtOKiYyE8CFIy2zN8jNKbdWm2v/V4ctWy2qT?=
 =?iso-8859-1?Q?Bed6IJSTwtNqGsC0gck+jboWlCvf+CS6cYWA4sPp4y4K6adRhr26J/GTTJ?=
 =?iso-8859-1?Q?YqAlzqVR+vPuMS/kCumLSbUgB6+Un4gdICjZI54llqA/cgO4MyOaEqT/Gt?=
 =?iso-8859-1?Q?br8ZArcb+/fiqk+CQO1BJgWtsxs8tYj7UtGxAVto1a651VlobPFwwkCztc?=
 =?iso-8859-1?Q?8mZ88i1yUU1q5swps/sEFVnNuv9SvDW8laaaEbnAI1Sy16wyIR73diMnBc?=
 =?iso-8859-1?Q?sTmyn6vy6AgNprd121zIiIwaaiIv/nqM9g16RA/+gEwNfuLMSatKMqx8N4?=
 =?iso-8859-1?Q?MoepFROzwfu+HQxoMb7uytUoQc9Rh+I0Zk1YzoIGe+WghNf2uFXa9CZqwL?=
 =?iso-8859-1?Q?Qze/r+bEt8yHogsIPhubMnXbupgI3y3GCNF4/9sBjCQj8o9Y9V7AEXyXyW?=
 =?iso-8859-1?Q?BkDmuZyC2FWaoAVodN6WVdtwRhSpdpPDjpDyrK2rKSOi8CaDo86XaSG7zf?=
 =?iso-8859-1?Q?U29k15a3qKGC2m+ziU2OS1FL+8STaO9BE0kOHmCzRSusQTeGGCvFQ/zP1t?=
 =?iso-8859-1?Q?WMCGA92NNJ6oZ3Hk0T4xe/xivaG9UzrL9WFgBaK8Tv4QzUdxgZcWIe7bnc?=
 =?iso-8859-1?Q?d0fUuHBHXwEL+RWtYTVV4zkPeYwFDg0aaKeOU4+kfSDs3I7IAlvdsgaXKP?=
 =?iso-8859-1?Q?RPrHF4JjQiDFSIu531TUXW/WthGUq8REyfB4SLXjMFw7jF3BTHARYikdbu?=
 =?iso-8859-1?Q?kU+0qxXcqoM0e7G9eVzKRmvlwUeax7mOsyEANU0sr04oE2HAO40Ome2XIs?=
 =?iso-8859-1?Q?vF2Z2vERQzUY39xXNCY3ApxK5Fjyu9VBlwzbUAMFijvNKe2/RZvkpmok2k?=
 =?iso-8859-1?Q?0zyMdPc/tt6IUhbdvGohaHUMAcKQLYFuwugIrLGxe5HS+OiEOlLvY8wNyu?=
 =?iso-8859-1?Q?01FRfb1vDWEAH8H0+SHpoyh/VwK/0zBa9aXdnc6NTJbJV2Wv/NchrX5L/w?=
 =?iso-8859-1?Q?jwYN9FK1DeHzcxL9Cso+9cs4hiT2DhsEWuTHw2q6vVj5fWKugesVzA06qx?=
 =?iso-8859-1?Q?4TKjum/3NkleuHKz4mzoLI/r3XxR6tTsf8vfIxG/oPU3JnJYFrvLTVglje?=
 =?iso-8859-1?Q?3uLX9KHPx8B3G9fYIT1q0zIduS+CXvgvlhWDCKWN0zSS1/V8btWwRoGa6K?=
 =?iso-8859-1?Q?y8GRSKua5xlxYqsyZ53n4+AmUSXZMubJdaC78vL8fxZp/6f9mfsZYcdT6Q?=
 =?iso-8859-1?Q?xITSaeiTPa99v0Xfo8V0QmeiF1uOHBQQWqNnfk/BxN1uTh3xaz/JidqTHF?=
 =?iso-8859-1?Q?8ksKNBhgpcCLAdx3tr6R0IhIw1JpnsFEHfwjkc0++z6sRcfXtQizNlII96?=
 =?iso-8859-1?Q?w2KfOzTvgFpsSn1HavQ=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30af08bc-123a-4888-1936-08db1f920c10
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2023 05:00:33.0968
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CoWvmTbLNDnuVKe2SXFJxWTVUZ1TL/jhHyikq3CZR6RYw2IMFl7sOCvV7GSaWt35w5VNPxvkrMQUWDtcsYmC3r3jb6p6/KoY58gLR6P6NxIOYDNCxLD8liEq3d+kr4Tk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR06MB6572
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,PDS_BTC_ID,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi @nxp=0A=
=0A=
> On 23-03-07, Shawn Guo wrote:=0A=
> > On Mon, Jan 30, 2023 at 06:25:52PM +0100, Johannes Schneider wrote:=0A=
> > > Add devicetree for the EVKB, which comes with LPDDR4 and a different=
=0A=
> > > PMIC.=0A=
> > >=0A=
> > > The regulator min/max values are taken from the evk's schematic:=0A=
> > > 8MMINILPD4-CPU  SPF-31399_C2.pdf=0A=
> > >=0A=
> > > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystem=
s.com>=0A=
> >=0A=
> > The patch doesn't compile at all (see below), so I took a closer look=
=0A=
> > and decided to drop the series.=0A=
> >=0A=
> > > ---=0A=
> > >  arch/arm64/boot/dts/freescale/Makefile        |   1 +=0A=
> > >  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 134 ++++++++++++++++=
++=0A=
> > >  2 files changed, 135 insertions(+)=0A=
> > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts=0A=
> > >=0A=
> > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot=
/dts/freescale/Makefile=0A=
> > > index 3ea9edc87909..3bccc4d10928 100644=0A=
> > > --- a/arch/arm64/boot/dts/freescale/Makefile=0A=
> > > +++ b/arch/arm64/boot/dts/freescale/Makefile=0A=
> > > @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-data-modul-edm-s=
bc.dtb=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-ddr4-evk.dtb=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-emcon-avari.dtb=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-evk.dtb=0A=
> > > +dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-evkb.dtb=0A=
> >=0A=
> > I prefer to name it imx8mm-evk-revb.dtb or imx8mm-evk-b.dtb.=0A=
> =0A=
> Unfortunately it's not revision B, it is evkb. The 'first' evk has=0A=
> plenty revisions. I think the most recent for the imx8mm-evk is C5. For=
=0A=
> the imx8mm-evkb the most recent revision is A4. Even this is not 100=0A=
> percent correct since the EVK consist of a SoM and a baseboard. The=0A=
> baseboard isn't changed for the EVKB but the SoM. The new SoM schematics=
=0A=
> name the new SoM 8MMINILPD4-CPU2. But in the end you can't buy it=0A=
> separately:=0A=
> - https://eur02.safelinks.protection.outlook.com/?url=3Dhttps://www.nxp.c=
om/design/development-boards/i-mx-evaluation-and-development-boards/evaluat=
ion-kit-for-the-i-mx-8m-mini-applications-processor:8MMINILPD4-EVK&data=3D0=
5|01||6a71dc88704d425a3a5708db1ef34ef5|1b16ab3eb8f64fe39f3e2db7fe549f6a|0|0=
|638137802577253621|Unknown|TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzI=
iLCJBTiI6Ik1haWwiLCJXVCI6Mn0=3D|3000|||&sdata=3DSmuEFl4RTEshtHKz/ZMhPF8kfdj=
qobRuJB/X66OYgNQ=3D&reserved=3D0=0A=
=0A=
=0A=
looking at authors in the git-log of arch/arm64/boot/dts/freescale/imx8mm-e=
vk.dts -> +=3Demail.to=0A=
@NXP: how are you telling the different EVK versions apart internally?=0A=
=0A=
by a year/timestamp, revision, name, features, ...?=0A=
=0A=
maybe we could apply that "naming convention" for the devictree files and c=
ompatible strings here as well?=0A=
=0A=
since we only know of the obvious change: the different pmic compared to th=
e previous version=0A=
this difference is/was the sole motivation for this new devicetree, since b=
ootloaders (like barebox) depend on the correct one beeing used during boar=
d initialization=0A=
=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-icore-mx8mm-ctouch2.dtb=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-icore-mx8mm-edimm2.2.dtb=0A=
> > >  dtb-$(CONFIG_ARCH_MXC) +=3D imx8mm-kontron-bl.dtb=0A=
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm=
64/boot/dts/freescale/imx8mm-evkb.dts=0A=
> > > new file mode 100644=0A=
> > > index 000000000000..2c3947d68982=0A=
> > > --- /dev/null=0A=
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts=0A=
> > > @@ -0,0 +1,134 @@=0A=
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)=0A=
> > > +/*=0A=
> > > + * Copyright 2019-2022 NXP=0A=
> > > + */=0A=
> > > +=0A=
> > > +/dts-v1/;=0A=
> > > +=0A=
> > > +#include "imx8mm-evk.dtsi"=0A=
> > > +=0A=
> > > +/ {=0A=
> > > +   model =3D "FSL i.MX8MM EVKB"; // with LPDDR4 and PCA9450 PMIC=0A=
> >=0A=
> > "FSL i.MX8MM EVK Revision B"=0A=
> =0A=
> Please see my above explanation, it's not revision b.=0A=
> >=0A=
> > imx8mm-evk board has LPDDR4 too, so LPDDR4 is not a difference.  It=0A=
> > seems PMIC is the only difference between imx8mm-evk and imx8mm-evk-b.=
=0A=
> > In that case, we may want to include "imx8mm-evk.dts" rather than=0A=
> > "imx8mm-evk.dtsi".  Otherwise, things like flexspi and usdhc3 get lost.=
=0A=
> =0A=
> Your're right.=0A=
> =0A=
> Regards,=0A=
>   Marco=0A=
> =0A=
> > Also /* ... */ style of comment is recommended.=0A=
> >=0A=
> > > +   compatible =3D "fsl,imx8mm-evkb", "fsl,imx8mm";=0A=
> >=0A=
> > "fsl,imx8mm-evk-revb" or "fsl,imx8mm-evk-b"=0A=
> >=0A=
> > > +};=0A=
> > > +=0A=
> > > +&i2c1 {=0A=
> > > +   /*=0A=
> > > +    * replace "rohm,bd71847" pmic found on previous evks=0A=
> > > +    * with "nxp,pca9450a"=0A=
> > > +    */=0A=
> > > +   /delete-node/ pmic@4b=0A=
> >=0A=
> > Missing semicolon causes DTC error.=0A=
> >=0A=
> >       /delete-node/ pmic@4b;=0A=
> >=0A=
> > Shawn=0A=
> >=0A=
> > > +=0A=
> > > +   pmic: pmic@25 {=0A=
> > > +           compatible =3D "nxp,pca9450a";=0A=
> > > +           reg =3D <0x25>;=0A=
> > > +           pinctrl-0 =3D <&pinctrl_pmic>;=0A=
> > > +           pinctrl-names =3D "default";=0A=
> > > +           interrupt-parent =3D <&gpio1>;=0A=
> > > +           interrupts =3D <3 IRQ_TYPE_LEVEL_LOW>;=0A=
> > > +=0A=
> > > +           regulators {=0A=
> > > +                   // VDD_SOC_0V8=0A=
> > > +                   buck1_reg: BUCK1 {=0A=
> > > +                           regulator-name =3D "BUCK1";=0A=
> > > +                           regulator-min-microvolt =3D <780000>;=0A=
> > > +                           regulator-max-microvolt =3D <900000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                           regulator-ramp-delay =3D <1250>;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_ARM_0V9=0A=
> > > +                   buck2_reg: BUCK2 {=0A=
> > > +                           regulator-name =3D "BUCK2";=0A=
> > > +                           regulator-min-microvolt =3D <805000>;=0A=
> > > +                           regulator-max-microvolt =3D <1050000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                           regulator-ramp-delay =3D <1250>;=0A=
> > > +                           nxp,dvs-standby-voltage =3D <850000>;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_DRAM&PU_0V9 (BUCK5 in datasheet)=0A=
> > > +                   buck3_reg: BUCK3 {=0A=
> > > +                           regulator-name =3D "BUCK3";=0A=
> > > +                           regulator-min-microvolt =3D <805000>;=0A=
> > > +                           regulator-max-microvolt =3D <1000000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_3V3/NVCC_3V3 (BUCK6 in datasheet)=0A=
> > > +                   buck4_reg: BUCK4 {=0A=
> > > +                           regulator-name =3D "BUCK4";=0A=
> > > +                           regulator-min-microvolt =3D <3000000>;=0A=
> > > +                           regulator-max-microvolt =3D <3600000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_1V8/NVCC_1V8 (BUCK7 in datasheet)=0A=
> > > +                   buck5_reg: BUCK5 {=0A=
> > > +                           regulator-name =3D "BUCK5";=0A=
> > > +                           regulator-min-microvolt =3D <1650000>;=0A=
> > > +                           regulator-max-microvolt =3D <1950000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // NVCC_DRAM_1V1 (BUCK8 in datasheet)=0A=
> > > +                   buck6_reg: BUCK6 {=0A=
> > > +                           regulator-name =3D "BUCK6";=0A=
> > > +                           regulator-min-microvolt =3D <1060000>;=0A=
> > > +                           regulator-max-microvolt =3D <1140000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // NVCC_SNVS_1V8=0A=
> > > +                   ldo1_reg: LDO1 {=0A=
> > > +                           regulator-name =3D "LDO1";=0A=
> > > +                           regulator-min-microvolt =3D <1620000>;=0A=
> > > +                           regulator-max-microvolt =3D <19800000>;=
=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_SNVS_0V8=0A=
> > > +                   ldo2_reg: LDO2 {=0A=
> > > +                           regulator-name =3D "LDO2";=0A=
> > > +                           regulator-min-microvolt =3D <760000>;=0A=
> > > +                           regulator-max-microvolt =3D <900000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDDA_1V8=0A=
> > > +                   ldo3_reg: LDO3 {=0A=
> > > +                           regulator-name =3D "LDO3";=0A=
> > > +                           regulator-min-microvolt =3D <1710000>;=0A=
> > > +                           regulator-max-microvolt =3D <1890000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_PHY_0V9=0A=
> > > +                   ldo4_reg: LDO4 {=0A=
> > > +                           regulator-name =3D "LDO4";=0A=
> > > +                           regulator-min-microvolt =3D <855000>;=0A=
> > > +                           regulator-max-microvolt =3D <1000000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +=0A=
> > > +                   // VDD_PHY_1V2 (LDO6 in datasheet)=0A=
> > > +                   ldo5_reg: LDO5 {=0A=
> > > +                           regulator-name =3D "LDO5";=0A=
> > > +                           regulator-min-microvolt =3D <1140000>;=0A=
> > > +                           regulator-max-microvolt =3D <1260000>;=0A=
> > > +                           regulator-boot-on;=0A=
> > > +                           regulator-always-on;=0A=
> > > +                   };=0A=
> > > +           };=0A=
> > > +   };=0A=
> > > +};=0A=
> > > --=0A=
> > > 2.25.1=0A=
> > >=0A=
> >=0A=
> >=0A=
> =0A=
=0A=
gru=DF=0A=
Johannes=
