Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 237BF6AD76E
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 07:29:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230294AbjCGG3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 01:29:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230120AbjCGG3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 01:29:34 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2130.outbound.protection.outlook.com [40.107.14.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C5C1ACE3
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 22:29:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H9xTYu97h3QDj0J11spJ1kaaVXQAEnsUrPW5HZqgSYaVTMFi2xig0YxmxBeDGbQ2AfP6wRozwcsB9vE/z0msvGm3ODdSU/nrIQSd6SXyVhIFOpWN2S1hnhWFWntIy8ZuEZ8CrKI5cS7e5VWJQgqdMzI7e3b+FpNCyyoSQ+Jc9FELLOiBCbxxifFFFw0o3BJJ7fyseFHpINg+cgMTIwafL+WyY/4if+D/qIH8EUTzwSx8/HLcP64DVk+CGfkd9zLV4vecdW8OXYpgUavDc5H9IZpWJe9rAhxH9g5hiQH+WTA2ev41mN1H9DGCXf68YFkXeOmwKdUSSoYRjXfaqHpO4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=14/lx6sGoz4AluwmgOg4sljjD1T9uwctJvF+82sf7JI=;
 b=SfF7Rj9aCKO2Fx1eM15pSJ9mMjWBP20u3z94emT4TLpkhNcZIE2exkhZfk2i6EoRRRhZZgHYCWRM60GVjq1HDX5EZo1DU+kbPV4gA/sgEDw7+sRH4ICLCgXQdcSjNE6u9Kn+2Um2beGMskwqirunXAEd2oOLywcImsZRbxgGzY9gVFbAZv1FK29Ew6nvOmYqV0PzZhPeulC4f3+ilfXXJzITdHpcHrv8pcw2ey8mObCreXzh+n6SHR5FAcBFRI6zfJ8v/1lfpyS/047LPu/qhcKultJL9OZOEaFI6wn2G2mOupibBJuIQnDoAR/J+w6evatMGCK366fWfCUed4b5fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=leica-geosystems.com; dmarc=pass action=none
 header.from=leica-geosystems.com; dkim=pass header.d=leica-geosystems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14/lx6sGoz4AluwmgOg4sljjD1T9uwctJvF+82sf7JI=;
 b=CjVvwIwxWlI/pQKt6bmr5rQwYeIgE/l8TKuDe6SozY3LLufw5pXAUJtGbThQrx4JXiOIKhCiryjF0WLEpi5j5hO7PhNSiEtaq9Zzm214uuehe1+WaXBZ3s29ZKBMyeMtVDlKQR8aq/S0IF9rkTJJjtEMH79CZEHYVwZGc/8e/HA=
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com (2603:10a6:6:54::31) by
 AS8PR06MB7797.eurprd06.prod.outlook.com (2603:10a6:20b:318::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 06:29:29 +0000
Received: from DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3]) by DB6PR06MB4008.eurprd06.prod.outlook.com
 ([fe80::51e:b90a:74b1:aa3%5]) with mapi id 15.20.6156.018; Tue, 7 Mar 2023
 06:29:28 +0000
From:   SCHNEIDER Johannes <johannes.schneider@leica-geosystems.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
CC:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for
 i.MX8MM-EVK rev B
Thread-Topic: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for
 i.MX8MM-EVK rev B
Thread-Index: AQHZUK+TqEr2LbR2l0O3PvJlcEzjgK7u2dyAgAAASHg=
Date:   Tue, 7 Mar 2023 06:29:28 +0000
Message-ID: <DB6PR06MB40083DA3572D697D54A065AABCB79@DB6PR06MB4008.eurprd06.prod.outlook.com>
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
 <20230307044449.2714529-2-johannes.schneider@leica-geosystems.com>
 <dd84d4f3-101c-6b38-56b5-4907ba61ac6f@linaro.org>
In-Reply-To: <dd84d4f3-101c-6b38-56b5-4907ba61ac6f@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=leica-geosystems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB6PR06MB4008:EE_|AS8PR06MB7797:EE_
x-ms-office365-filtering-correlation-id: 65e8d54b-e3ea-4955-3a7b-08db1ed54e05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Riz12DEj4oyXQWYXcVqurbVABtsNVixrh5hZPnRW+0QpnmS/QFob5xsvYDLCVAyZYquzKz426AaeM7/PQe5XzLNdubqD46ztbnnt/5rV+DXRfcP6X2Qiio+BJrNMqLy4lR1iB/oqVfnsTYq1k+OCiZN6C/UVbtmdcSOA4cZAt+32ndgDNWWRsCxdvqCZsyf/fbdETLPiRPKShBa7205IBpamcxyLEkjT3VpqSgdM4GfwUqM0gMUpKTKuQmkYoSnzbPDFSLDVoYQvOCXEmo7df9h/+mFu5vR5p4RYHT1yBQytsIEw0B2YlF0Xc5H5dKkbctegxRtZNLXhuIzAO02hmrY8z97h+BZm5E27RJJ+xHxfrnDj++6lACebHr1De56+0M+T4Ch+S5C3jicd0qDcThOcYLIAK3Cgs5beXrnGZUS5a3EzuDjltb48KO4Ms/IOXYwNbDaf8Qkb6FpGvCQJ2nsLFuH3twsAabXF/OLOTEAAHW45Vo3zRRBQl6vFjiubiITNfsgDoBRw3qScJAQ4he4fG/9pKTZUtDzSGQHXuXEEdC5rXZ0jSvbnFIRcrQ783SRNY0KUjA5Hve/WAv29402jdR6nzxANL04kQKeGpwy16lW5diy1UGYEk7yu2Cx3CXW6w3J9qTXSFrsOONAxFRpl1dvbe1ALl5SoGt9RlRz8RGiRLL+FiJ8rnOWNkToNnHwbvy5u8l/BdnGStzXX1W9ajBU9m2iDSGTU+fLkovY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR06MB4008.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(451199018)(2906002)(5660300002)(7416002)(8936002)(52536014)(41300700001)(76116006)(91956017)(4326008)(64756008)(66446008)(66556008)(66946007)(83380400001)(66476007)(8676002)(316002)(54906003)(478600001)(110136005)(71200400001)(7696005)(53546011)(33656002)(45080400002)(6506007)(55016003)(86362001)(9686003)(186003)(26005)(38100700002)(122000001)(38070700005)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?Y24ipn4OuPgSHiWDBHfCFcFVD0jkiYGoKDuHTdE59+QXchvPKhPFJtJB?=
 =?Windows-1252?Q?kUB1HzvaZgUdzZTsQDzhJ3WsAuJVKOFQs6VJtPf0EyOlUOQhYB6d4yD0?=
 =?Windows-1252?Q?6292EO/sOibqXIqvwjzXNLYHVG6zJhqje0eH/EyO66tuw/rllo8FEXn3?=
 =?Windows-1252?Q?YebbQ7t776pSMobYkrq1WBuNHdvAmAcKvM93sri+KMWJHMky2rVCsLOw?=
 =?Windows-1252?Q?OaCWYRgJQZTcQ1qAnxpTjLaxISAA28nrOrG3VPgVJUizPsPJqceCxgz1?=
 =?Windows-1252?Q?lqxfSZJfzNcREQ3Zae3BFCe41m+zxZA/vUNLLNzBpuXf/+rMVlEXMkDE?=
 =?Windows-1252?Q?SgAcznYrNmy/kvsmg1sjNS87ld7NQH8HuUYGZ2oVDHNS7oF+Ac9JITY6?=
 =?Windows-1252?Q?BdQ2MrSLDtjJgRb/krYj0kBYFifN19BczBilQ74Mm6bIQrtNzcZQ2X3a?=
 =?Windows-1252?Q?0zfVLTjCvGHzugcnp071ll6kRNI2qyHx7okXd2YfidJYX8iToA4sDpjX?=
 =?Windows-1252?Q?XW0P3Sak1mwfobkmAMfowWBLIzn6anUDX4xSPEkLt83P2vJGyC1S5OYK?=
 =?Windows-1252?Q?Br4GhMWY0pn8oITFCr/OJeIz6YcbzKMw3ivDuQjvLcTKuv7j7pG54nq9?=
 =?Windows-1252?Q?1+CB8x4RSEdXvwXSUedJtk/CJqy0tgrg/mvA6vg4QMPwrJt7sI+wGojP?=
 =?Windows-1252?Q?iMzxkC2gcptZo6WvTUAWfHhv+95G9jKFa/ok/uQtKg5NndMCvjY439Fj?=
 =?Windows-1252?Q?qEXp8bfEltT9GHkf6rEUeWVbD7Q2isEKrfSmjg0YRhs3X/BFUM09pJKh?=
 =?Windows-1252?Q?/8D76/MalRk95zpK+Vgwv9V6rYQ5sW2Uq5jSqtf7iG1E8EqTKCrfsL7E?=
 =?Windows-1252?Q?vX3l4vn6JBOlcgOeZDoP+0VX4aNDegXo0tVbCYlqD4lJ/CyWW2rOi12C?=
 =?Windows-1252?Q?aiKxt161SfawQm+PcJogKLEjErCS86Rg3dguCf64ghov3MYFyLdA97iD?=
 =?Windows-1252?Q?zhFC84CvU93XpOf55zVyqSMKYku8kf9KI2Ap4oWIq6N2oZqANG4QhW0n?=
 =?Windows-1252?Q?eF6nXrXwObPG+rgOxC2y/QMqlOHSpXhxl4Cn4DBoNXkE+dktnnHVRuHX?=
 =?Windows-1252?Q?6OJF6EMibtQdDjuTisa95/HTmw8FRkNbdSYI6tcqfsmlqain7q2F42kE?=
 =?Windows-1252?Q?QDjE5azLTLpp7Fu1NagJU3B29W+Np5voahtsEV48mW5tbGr9sqtA8Eh4?=
 =?Windows-1252?Q?cf3q3BvTsL1gfXlmCnX8eH0biW4qMc2KH6RoOxs7Ia9eajRKjqeLomsS?=
 =?Windows-1252?Q?Z/nuNNnQO1X6icqCa04lg6o21Os8BWYK4VCJ8jQHAX6U30/uM2mEKRoV?=
 =?Windows-1252?Q?44D7ts67YLlFYuE/BlViLAeIBkFiIagMZqbfaaVe14NynxaezfcpLEbN?=
 =?Windows-1252?Q?s5nD1k8dZPKKIan0NBNEfa0jfxHu3j+vewLUp231qKYUaOJAzm30nhqT?=
 =?Windows-1252?Q?ImGNjwoA9XPZCufthfSz48OBmnqnNI4s0p8+6wzT7xAXHjo+iQs2mUqH?=
 =?Windows-1252?Q?9B6PanXXSOwPDK3PffiyyGedPsDp90/ZP+0JDRpXJj2pWR0//Jw5n2gS?=
 =?Windows-1252?Q?OpQzpCrBtmWQe6doau8U5aJrfJxS/5XyQKyiB0boOUM2cuhtogaXJn58?=
 =?Windows-1252?Q?2oWqRSZPIfo9bu3RLvp3KeXl4u5Pe5RLtncubezb4Ar5N8SwaC/S30Zl?=
 =?Windows-1252?Q?di/CI5a/aImAVqpDSbw=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB6PR06MB4008.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e8d54b-e3ea-4955-3a7b-08db1ed54e05
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 06:29:28.8265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 48xAHW/ODFrEi/3E+c+8N3TzpyRXh3Z4vMclr5UaeKKiCJ7yjd4RMy0AHws2Tw5eHbMMjDRyebimM3ucc/lJGd/YRr2QBU4u4fFyJTfBbq9sPmDbAwW8kCx+6nYwE2Yv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR06MB7797
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hoi,

>On 07/03/2023 05:44, Johannes Schneider wrote:
>> Add devicetree for the revision B imx8mm-EVK, which comes with a
>> different PMIC.
>>
>> The regulator min/max values are taken from the evk's schematic:
>> 8MMINILPD4-CPU  SPF-31399_C2.pdf
>>
>> Reviewed-by: Shawn Guo <shawnguo@kernel.org>
> Aren't you now adding fake tags? It's the second tag which was never
> given to you on LKML.
>
>Best regards,
> Krzysztof

oooh, so i was too fast in adding this :-S
the reviewer also have to explicitly give these tags - giving review commen=
ts with requested changes isn't enough?


sorry for the confusion
Johannes

________________________________________
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Sent: Tuesday, March 7, 2023 07:25
To: SCHNEIDER Johannes; Shawn Guo
Cc: Pengutronix Kernel Team; NXP Linux Team; devicetree@vger.kernel.org; Ro=
b Herring; Krzysztof Kozlowski; Sascha Hauer; Fabio Estevam; Li Yang; Sheng=
jiu Wang; Richard Zhu; linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for i=
.MX8MM-EVK rev B

This email is not from Hexagon=92s Office 365 instance. Please be careful w=
hile clicking links, opening attachments, or replying to this email.


On 07/03/2023 05:44, Johannes Schneider wrote:
> Add devicetree for the revision B imx8mm-EVK, which comes with a
> different PMIC.
>
> The regulator min/max values are taken from the evk's schematic:
> 8MMINILPD4-CPU  SPF-31399_C2.pdf
>
> Reviewed-by: Shawn Guo <shawnguo@kernel.org>

Aren't you now adding fake tags? It's the second tag which was never
given to you on LKML.

Best regards,
Krzysztof

