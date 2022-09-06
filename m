Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF675AE4C3
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 11:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239218AbiIFJud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 05:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234001AbiIFJuK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 05:50:10 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80054.outbound.protection.outlook.com [40.107.8.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9239E786CF
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 02:49:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjYTRqnt3FvoeuNcQ3O+X2u/4InW82yxPDVJl6i4SHxbW2ajBBkqKgJPwwsDBm/sO7mdgbipoJinZHgvyxCaKSHnBu4EgXP2l2g6oq0BOLwClfWgYJx2UO2NrgVBo5JQ2GZTIvUUFvX2u/FQkYDTlKfkctBMF9EmlTzV1UvaRazjq3LDSsTJgEi+elOHMyaS0BC/Fiq3Y8GGmhhfn/+3xHfqfvFSmUMhfhaXq4b9KqWAOz4QqcTDVx5yaXaP/hhHcujfplGGngIejKccRdG0Ooy4yoT9jbSCSarxB52gSI4POsWeLFJa70KjSWvsS573tBXjdsShsrV4+iQ1Hk/rcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z9k+szETvi+hBfe61ajU/TGqVh98S2LM40biHupc0Qk=;
 b=hdF4E4mxHwcKn/AxRJlzsHpwKGtc/hLA9EzBZZixq13jXqt+zJ7SkVFyUSWZEgJLDfmpGCHGRSYIdM4FqNQ5SYCuMOLho8MwUW0NNwChPTLopyM4Q7FFD2+hTqE7CU5aWqOlcN9nBVWk6vEz+w9RcKkpKzcvX+niFjnT34D7e+qmAn70XNmLVXQg/C2h6IYJEIkn+Q3oHUb/3oNcJwxk50twRDhf8m8X/AaEaCQ7nTmfM0z/NRPOhLl9aDLF3TrJ+idQz9uLRH7eTsUYI0aLVIjeA1sOZeDvCxzmx/LTs2DW9PbJwvjCCDmJ8LmXsQG9LAQ9d+Kd5k5KyIwf61V/Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z9k+szETvi+hBfe61ajU/TGqVh98S2LM40biHupc0Qk=;
 b=ZSMo3p091nHxtnZ6acP2rrwXQzoGzWOIa45eDmzUFxyFltOTMKmCESk8EkIYOvTV07Xz4FopLBP9zG7qfPbNtf4hxZ36sSuKXULBe1Vmh0qWYUGbtp3THy9HN5sTlzhxt0ctk5kRfgg/XkwjVr43lRrhFhNiaDcXLoUgdKch1MI=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by DB8PR04MB6683.eurprd04.prod.outlook.com (2603:10a6:10:3c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Tue, 6 Sep
 2022 09:49:28 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::25b6:d7f1:c25e:24d2%9]) with mapi id 15.20.5588.012; Tue, 6 Sep 2022
 09:49:28 +0000
From:   Jun Li <jun.li@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>
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
Thread-Index: AQHYt5NgTN2Wv3g2Q0uWAIYIi/pTZK29w6AAgAAHn6CAFEVm4IAAKoGAgAAA08A=
Date:   Tue, 6 Sep 2022 09:49:28 +0000
Message-ID: <PA4PR04MB9640FA621C9E03C167EFA607897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
 <20220824091044.msaa4lymgyrmektl@pengutronix.de>
 <PA4PR04MB964059A132A12DE73801C86189739@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <PA4PR04MB9640A5B008D6D97C5F5AB7F2897E9@PA4PR04MB9640.eurprd04.prod.outlook.com>
 <20220906094343.GO1728671@dragon>
In-Reply-To: <20220906094343.GO1728671@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebe0aebf-1d66-4069-3e01-08da8fed1758
x-ms-traffictypediagnostic: DB8PR04MB6683:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B0ekPICPuROkCmvrrNkFI9qv5J5RtmcKIulNiF1hs36yiHAmCfTqcMuugCg+GPZZtHuwpYNW7mrM6pJhRjK5KMfjA46qqshnVw/vona8UhaQxMUQJp/be7jviqvTycwZiVx/uvS1lBhXk6rOZwti7hDmJhN+TUzwUYLkJsFH2t3yE54goFKZ8zN2l2PCNcBfy6tYJOWkyPQBG5Ax5MPMr580ZGrlYBErsUT3wxw+2GAW+7qodJJCLL+jiG41uc/4qxCUDf87rwqNXx+AyquwqhWJNCzwuj6anrsGwNgKT/P+/PMWslfTqSQteyd4MhgQX12/7gDiftmdIWyGTwWjxdsOZ9tpFsXk5miL5i0Mu/EeqJI3wl6yI98138lf02SaINmfL2u9UewN8VNHvLvwrcXdUCaBHSdTJ9HmQR3VAz/Cgh3C2q+YYD6OYedEmFUbOiewSlKVZQDiLCKcSh7TqYYpfwFzCSMApKkZd/yJGs0WqdWJmeM8ItI57yczxVAbwIrF9kattnXlzS+PezPhLnDk/cP6PsIZ7dYEX2uvUue0weRT2rxyawwqp9cLFiT4IvJ/CS5IwqH4g4Iy6XKOq74LupclvlqNRoKqBJtAldC+W6q2uLT3+POJrTkdPHidEf5UxWFTe0y76XoMHI1kZN+8GPM1Zbvjc5KFfLdU5WHREBptrArmA9vqWf3379RKmabkZ/oXiG1oBGaZtcS9C5R2f2sJYgMk9BBnFm7shXj9/1s/dh3Ji/RA47Uil6yf2VMk7tD2JkfUbvfw/I/Hlby7/xgvMDccCeD5CX56aFU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(6916009)(54906003)(186003)(38070700005)(55016003)(83380400001)(71200400001)(316002)(8936002)(122000001)(26005)(2906002)(52536014)(9686003)(41300700001)(8676002)(4326008)(5660300002)(6506007)(7696005)(4744005)(44832011)(478600001)(33656002)(76116006)(66946007)(66446008)(64756008)(86362001)(66476007)(38100700002)(66556008)(7416002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?htygiMOJPc26VIwQhyDZwLCqIrdBH5ukuS0gON5xpBZBbLk+W4soR+5DQcv5?=
 =?us-ascii?Q?rLBI3PYeqPRK4awvRq5tM9OVFm3AdT+qHwL6L1J+Oyl/ZLi14j92OQsZN7/S?=
 =?us-ascii?Q?SbSYA+BKhQvwm9Hz1u76e3FtSQgwWJLLuBLEo1ZZUeRykQTpvvc4wMBKiH0t?=
 =?us-ascii?Q?L6jSgzJ3sfTFtt3uq6xdAI2Vkom6S9IXwWi9Er8qTnvXUevogPM3EKZnBEd4?=
 =?us-ascii?Q?2eEQ5NHin5KIIUjK5Rihw2fmJxP7AptREDqOw/0/AXKfzBGGlnTq98MJHGqD?=
 =?us-ascii?Q?og1O64T54zDjrogu3yehq5Kdv5gtIWdRoxybkNIOWnfBuOFU//TxueFZV3JG?=
 =?us-ascii?Q?geDmi0vRrJoPfEWfUjcvVDsVpTaauN6D+vdDTyXXJ9iPPZ4q8IQGFZOJ9MF/?=
 =?us-ascii?Q?kdR7p38I96KRknY27QdEcPqB+OHX14ZS0kejM2t3ShPz/lWm5RVMNEDPc1Jb?=
 =?us-ascii?Q?iTr/McxxheDjBqLZL4+oXqWpwWa/CFEWD3J6cUQrip4nhq/dAG6yE503uK5D?=
 =?us-ascii?Q?1Ripdtz+YgFPL33bzUnIxiMxGfN3y6vSA7VYpg6geR6wxRSx1tvAw971Py+w?=
 =?us-ascii?Q?LQxR6aKFBM4O95kC9qBX58T1Gr8c3tWr4vwRdjOMj15sF4C4jF+yZuux+5fB?=
 =?us-ascii?Q?7bYlDskx5rE7vS0EX/JVVUhxXWZCmaIGPbU6MmCSe+FKlx8T0OxxMExWswJQ?=
 =?us-ascii?Q?G1Y1txoswqbRUdBGCfuid6ZoUcQwKzCXlywVwIt1MWDfV9Jphqb/Z8+j3d9p?=
 =?us-ascii?Q?b4wpoIw6ws9bvk1ZL2C/eGx2bFk4T1/VdX+ORQdoNqAyqQTUUp4TMp7AAIOA?=
 =?us-ascii?Q?jyo0PuVmPonoMVN7BbKo8X0O6RiyCsIAKYrstifKSPitTaMcNhRRoIygnKj2?=
 =?us-ascii?Q?jDR+6nxHovA1IrGWw84JfwIojGruWaMCvTKiZJW95nmGGhDNAOoL9HVltaRA?=
 =?us-ascii?Q?fh/rwQ5kcR2bKa5TZYlxntpydyu1zA+3iwHDzNyH3kWnO7XRmIGxOzSXlNub?=
 =?us-ascii?Q?tnI8rHTPpIsNfWbuMXCr3EPpEAV8Bsnc1+2T/zR7BvipnnLTNCRe7PI13R/f?=
 =?us-ascii?Q?vjHK1o+t4Vh9QR6DPT++kjwHkj0T+8lMoU/7zhRJcx1ujv1Trhx7V1Hqq6I6?=
 =?us-ascii?Q?aQ8hnE/LTX6u2ETxlxTOcU6mQwV8Bqm3obmSd/5RbdAwxS8JEMtoOITwLRIJ?=
 =?us-ascii?Q?+PwJflm7hkEoRbd2T3ZhD8ZvZh5qupdfDZ3K4XztKJ1PILdnBVSY5PZu1L8p?=
 =?us-ascii?Q?d2DYIKVqYkeGd3szEp24zgC8Od2RAcvaQjRfu2SZkt3xh31PUVH/Kt5f8Bbe?=
 =?us-ascii?Q?RXpAorChmVT48MBcsXuVoTcAy1VCk7RZuToweQQg9f/Xy2ScyxzKRaER021x?=
 =?us-ascii?Q?I7xnxxOMyc5yVZwXj6J7C93DROVM3cI0J0jy3+6vlirtLEs3WO5kR/cuIl6N?=
 =?us-ascii?Q?Za1B0hGBH7ZznRu3q0RDkRRMNjB0Ttpjuow1DmXiabEC+w/PIGSOujbm1nAw?=
 =?us-ascii?Q?f3+vHnhpOkiiuJaqSxQjeiZhG10gO9/XRzZOb1kTXHsD5I2HOM9W3Nb84cMY?=
 =?us-ascii?Q?yAD44vWnaqUTsPty4k4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebe0aebf-1d66-4069-3e01-08da8fed1758
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 09:49:28.7870
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ppCiy9ctolUk8dOj0E2HD68xF6rE7XMPBOoUhYPtcmMpZzbUyGzB+/tbrckIqX8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6683
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

> > > > Hi Li,
> > > >
> > > > On 22-08-24, Li Jun wrote:
> > > > > After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk
> > > > > parent"), usb_root_clk is no longer for suspend clock so update
> > > > > dts accordingly to use right bus clock and suspend clock.
> > > >
> > > > Please don't send two seperate patchsets for this topic, since
> > > > they can be applied delayed. So your v2 should contain the patches
> > > > from [1]
> > > as well.
> > >
> > > Understood, I will put all in one patch set in v2.
> >
> > Since the clock part patches[1] already were accepted, I think this
> > corresponding dts fix patch should be okay as it is.
>=20
> Should I apply the DTS patch for v6.0-rc or v6.1?  My understanding is th=
at
> it needs to appear in the same release as clock patch[1], right?

Yes, it needs to appear in the same release as clock patch[1].

Thanks
Li Jun
