Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19DEA5AE69B
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 13:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231893AbiIFLaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 07:30:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232154AbiIFLaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 07:30:19 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70087.outbound.protection.outlook.com [40.107.7.87])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8522C1581F
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 04:30:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XgjcP9XlKeoO9AzbngrKFWaasKSIr2TTSr6WwkFVG7asVp7PrwTwLi1z3Rlg+VcEhiAMrPvVr23k+Ffvg4mz5jqL8g9VWVe1lRRGbZBClVjf5d3qP9pUSbHbbXae7TZ/jVwDAw1tshB0emEFGfiUJXUzj76pncQVWTh+toWot9tN4nTqc2ic/c5YUmyZZqs1SLQdOx7YrbUqdXtB7JTf8bEiLnsVC2tac4OOu/G82I/LNlCEMdO8cZVZKfzzO1d0hJmeuZYmA4SHFNpUnqlgfrJZntQ7/f+HazR4kQo1q6OyTaOHqwfEGWhrsW4BRYvxxut2UsySekMu2PN+iY836g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Ka8fIq6LVkSF8lUQ8O1MfbC2myCbVA8hlNQZ7dBzAA=;
 b=GM81ht7+cGHYS1hzYh2QJUslS7I63fy+JffsZgPF63WePAHO9xVOq30PfY0PZnBNPVQcMuqydjI+cfrtPIU5j3N17c5gPjCHBZoQpucN2TbjasdbbH/iIwOspsR0fUXnq1SQDbTwIoeblP63cATueniMfyGIdR6Lbyp6UTUqV7W8O1d86kR7QrexO0nkaUUXm5UbF2ri/WJpKIxHR09RCtXgKUK2Dx5vLbG+2kaKjqpYPRMzNKKy0VCcf+U53POabgZ/T+S6ISBIHdkV4Rh77YVv9Lrp6UerN39hRGuU0buu2FHrE9+QKt18YCnJoiO0DEpDXiZm/Kqaku+jsF1/Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Ka8fIq6LVkSF8lUQ8O1MfbC2myCbVA8hlNQZ7dBzAA=;
 b=jDYBpYaoAoAgoX/XxvGGQUT2BMvHaMdp+KW/4W4Z5ecd6J65jyxNzh+8rRC2l5YIJQLU8uHvzVL+beLbNow6L0b1jcygc/cfCjJ0J5giWubW62Xi8uYXkyM6EKBOWwonWqe9Y1jgE6V/YDmRpDA7piJkImya2zn4fqfnwTfcE3k=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8588.eurprd04.prod.outlook.com (2603:10a6:20b:43b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Tue, 6 Sep
 2022 11:30:14 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2%9]) with mapi id 15.20.5588.012; Tue, 6 Sep 2022
 11:30:14 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        "abel.vesa@linaro.org" <abel.vesa@linaro.org>
CC:     Marco Felsch <m.felsch@pengutronix.de>,
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
Thread-Index: AQHYt5NgTN2Wv3g2Q0uWAIYIi/pTZK29w6AAgAAHn6CAFEVm4IAAKoGAgAAA08CAAAjugIAACJMQ
Date:   Tue, 6 Sep 2022 11:30:14 +0000
Message-ID: <PA4PR04MB96403BEE445FC4A569FDF33C897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906094343.GO1728671@dragon>
 <PA4PR04MB9640FA621C9E03C167EFA607897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906101837.GP1728671@dragon>
In-Reply-To: <20220906101837.GP1728671@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7037968-a7c7-410e-b7da-08da8ffb2af9
x-ms-traffictypediagnostic: AM9PR04MB8588:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gwhqc2Ckg1P7uVqfXQ0/3WMYjyXsx78IKZbrci6ggaYSC0zuR3bGTETvudkXVVIy7APfmHvoqiXd8NAKiV/X89VB5dkzlNWC+0cs72bi8Op4FXIGONMqpiSC4MT9x5oH40Z/zIONoHstLqhTPRSEIIDlsRT9yngUpwgqKaVMB1O+ncQIUXnnDan4ITxv4KEC/+JNBaWrkwQljexnxo3EdrMMW3is0XwZoBoOX3wYmq0vDJF4SUq/dfxj7klillBHtUUPa5anPc/6kaRE1HNo8HOgp/PUcPWYRlgOHDLdBJ4T2XAVYhOYV5LnnCa8DtzsQTeClB9AhLqhnfvm7Uo1iXx4LI7gbTvNQ0MaoSML6DF1cXFw5CmuQDCrUlagRny9yq1xVh+c26G6y4RQWWj3Rr/9tWeEhSsn8ClvUAne1Jtq/sElCrcFeat4CXFWcq+R/JvmcUNePvXA5HO2nCjTel9CMi5jFQSUn49Dpw+8iF75zSFq0w/mcwYm5KQTb+s3hGcCqXKgPeMJMTEQ3hwNogcI4hHGyIFGb7T116c0AtSRS8uj9+Jo978DrjYvxvVYIjNwgGCYcEMyfbpIahF0b7r+GDjxyW9J603VsjLYdRDhc1BQMptyCnnndj3b55+XSnVl1ORiD+02F93Js8U1UxsmJsKBgQ+Grm8jHXgtS3Ry7Yqr/J3tq6SVF78vZDM2fACpbXp2bqszGox84WVnu8AJkXY6r9m5HJ1Tb5z0yJq5LnyXQk8LuaC4HF4BiO1/Cb/f8ZcD0Mqc1Id1kLdJEem/zz+pOu0bFKDTG20uXuURoKuLyt5KHtUOKtf0u8H1fXwkLzlTWLO8fZTXMq3N/TsKmz3XTXFKLvR6hU3A2Lw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(39860400002)(136003)(366004)(346002)(186003)(55016003)(76116006)(6506007)(66446008)(4326008)(8676002)(64756008)(66476007)(66556008)(38070700005)(7696005)(53546011)(66946007)(41300700001)(966005)(478600001)(9686003)(71200400001)(54906003)(26005)(110136005)(86362001)(316002)(122000001)(2906002)(38100700002)(83380400001)(5660300002)(33656002)(7416002)(52536014)(8936002)(44832011)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vRL8B2/CcI+7KSzZ2U0Tf1myCBd1XKTb4rovrixPDjTfTkGGnQFQAb0b0Sd0?=
 =?us-ascii?Q?n6nS9lB+CM0Yw8pMtDyej5dlqEXeAK+a+XHMBZEbP55fqveRGTRPAgY2w5FC?=
 =?us-ascii?Q?UtYR7bhkVDywrukvV/qkZnLf8lgYOMVNfRqG4XimASDCfeQV6qGZUpYKKOUY?=
 =?us-ascii?Q?+lHarfz9Qcv3FIY/6BJF1nSTXgJkZ882BRUkG2l7ix+HsA8kehFQiz5QmXmI?=
 =?us-ascii?Q?5XzYK5B3wHuVAsWvbyxsr56lfVSgkcZ/wInTPEMDxx91Od/kAsD+C0l1OzRo?=
 =?us-ascii?Q?1I86dKe61lN+5mEZn2ZmiexVHFptuWft3Iqcg99FYYhKofP0Uk5poR+2yLgE?=
 =?us-ascii?Q?5nF4PilV+PYuS4jIcBm3uzf7KuKhYq243Iq7ETRQVpmY49rFjgrtYpGoKAd+?=
 =?us-ascii?Q?imwW+7qM7A6iQEuSA7fs2TY4sClmQdJhvqpik2kALLBrfB+gBbXfv+p+7EXF?=
 =?us-ascii?Q?fYKk8bQk9FnAPYTPGMiRgwmc+spRnJLvjuEeOMqQE+/czEjlZNVbhpRNm6nN?=
 =?us-ascii?Q?zP8REnEOYxVoU7umLSww/OILC/eRfpWrvwof61q/74tjK79X/wd+syr+3jRj?=
 =?us-ascii?Q?JeXMXHLQJv6DXW6F4vFR6aOhpIZUOvBbo0mapE8Lm7RofV7Dl3NBpJv4R+DG?=
 =?us-ascii?Q?6Ssju71v5RSXx0i2Owh4J/BwbxfZS9Dfcd6sybgKKTthRGPWEEopr/JfVk3I?=
 =?us-ascii?Q?M17AMs4ZhrQffy+u8rqF5wsCpBIN2lPI+6tJVLswrlEijRBw0woVH1vbkfjX?=
 =?us-ascii?Q?FSPf9ru4UZ4kDi+3YR9XRZSm7ipybTNprHmRYB6EykRX+MqgerFcbJiWJv4Q?=
 =?us-ascii?Q?CLk15uxD1DMihH+VJ2j6CSDjQ5muZXeZS/jRpNpH/YA225ELS4WgYfN0mzyo?=
 =?us-ascii?Q?DEVVxkIxvARRrSTzVSWVkBG+bWB1sYGyMo+iBhgXSFX9v1V5Ou0/ajs9P+W8?=
 =?us-ascii?Q?bQavcx+G7+j4IOdK08OzmjYilE5ZhmUw0lMudV8cQmDvmXW/nbIx1HWrYLiz?=
 =?us-ascii?Q?VolpAbxWOUZ942RECM3kvp0p0iqCfiEsstvSFY/zogUpelv/woWEumqKkHeA?=
 =?us-ascii?Q?S6O+6eazcBsaP7fCHaglSqs4MbuO3J2KjLFKfcI45oTQVbXyibDnUfkylKaH?=
 =?us-ascii?Q?XckBm/TGmDHW1360tqpFQEq+Cc3psDg4JZfM4zjvP36NrzKWXl74O0sTF7nr?=
 =?us-ascii?Q?gDbjby6FOryM3t2pScyFO4WpDq6cz2ge05sOuiZGyWoJxbsOkGvwTF0eQyPt?=
 =?us-ascii?Q?nfr2Ej59QxNY8C7a4kB05BBeRFq/gSRCebkL/dNBBiS5a9wvcej9nBM5jDh+?=
 =?us-ascii?Q?BgL5+rH7B4K/KlhkSLzqlbnTMeEl1Q/tnAWlqSKQjjaxuJrsiZEG78Q07DTp?=
 =?us-ascii?Q?gMp60HYPlTkEFvuxDl4zw3C5/VCa7u7ObwK2VOZ2Ae5PNjUppD16OYTBsWhx?=
 =?us-ascii?Q?HrIggNSZ6o7bHUiOOGPzYFZXIv1KSvHJCa1bI0PMhlvCNr236PzY3X1sCPJU?=
 =?us-ascii?Q?wne8aPvtroYvKrp2kWbT3IAohOlShMxi3em443WMN/X05uBjT+h1CtSwmFNe?=
 =?us-ascii?Q?DsMWB4cNvzpcnFxknEg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7037968-a7c7-410e-b7da-08da8ffb2af9
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 11:30:14.6293
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xs75MsvcxtBXzMM2bluy8ovwhtohVaOrYZ5uLtiwXnUrXJLIFejs+yHZ3sjizh8f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8588
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Abel

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Tuesday, September 6, 2022 6:19 PM
> To: Jun Li <jun.li@nxp.com>
> Cc: Marco Felsch <m.felsch@pengutronix.de>; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; marex@denx.de;
> devicetree@vger.kernel.org; Peng Fan <peng.fan@nxp.com>;
> Markus.Niebel@ew.tq-group.com; laurent.pinchart@ideasonboard.com;
> paul.elder@ideasonboard.com; dl-linux-imx <linux-imx@nxp.com>;
> aford173@gmail.com; linux-arm-kernel@lists.infradead.org;
> l.stach@pengutronix.de
> Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
>=20
> On Tue, Sep 06, 2022 at 09:49:28AM +0000, Jun Li wrote:
> > Hi Shawn,
> >
> > > > > > Hi Li,
> > > > > >
> > > > > > On 22-08-24, Li Jun wrote:
> > > > > > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk
> > > > > > > parent"), usb_root_clk is no longer for suspend clock so
> > > > > > > update dts accordingly to use right bus clock and suspend clo=
ck.
> > > > > >
> > > > > > Please don't send two seperate patchsets for this topic, since
> > > > > > they can be applied delayed. So your v2 should contain the
> > > > > > patches from [1]
> > > > > as well.
> > > > >
> > > > > Understood, I will put all in one patch set in v2.
> > > >
> > > > Since the clock part patches[1] already were accepted, I think
> > > > this corresponding dts fix patch should be okay as it is.
> > >
> > > Should I apply the DTS patch for v6.0-rc or v6.1?  My understanding
> > > is that it needs to appear in the same release as clock patch[1], rig=
ht?
> >
> > Yes, it needs to appear in the same release as clock patch[1].
>=20
> So could you find out which release the clock patch is targeting?

Seems the clock patches[1] are only at Abel's tree.=20

Actually this dts patch and clk patches[1] should apply for the
releases with below patch:

commit cf7f3f4fa9e57b8e9f594823e77e6cbb0ce2b254
Author: Peng Fan <peng.fan@nxp.com>
Date:   Sat May 7 20:54:30 2022 +0800

    clk: imx8mp: fix usb_root_clk parent
   =20
    According to reference mannual CCGR77(usb) sources from hsio_axi, fix
    it.
   =20
    Fixes: 9c140d9926761 ("clk: imx: Add support for i.MX8MP clock driver")
    Signed-off-by: Peng Fan <peng.fan@nxp.com>
    Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
    Link: https://lore.kernel.org/r/20220507125430.793287-1-peng.fan@oss.nx=
p.com
    Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
=20
So it should target v5.19, v6.0rc and v6.1

Do I need resend the patch with stable tag applied? like
Cc: stable@vger.kernel.org # v5.19+

[1] https://lore.kernel.org/linux-arm-kernel/1661328262-3867-2-git-send-ema=
il-jun.li@nxp.com/

Thanks
Li Jun

>=20
> Shawn
