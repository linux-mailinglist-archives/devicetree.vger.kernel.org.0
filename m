Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3775F6433DD
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 20:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234761AbiLETkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 14:40:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234606AbiLETkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 14:40:06 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2077.outbound.protection.outlook.com [40.107.20.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E28327924
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 11:37:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WwYbjrZAP6JgMth9bYqcvyA1O88gOxCB8lzZxLciGPyXUvv1jjdlLz6plkfzWFdVRqr1jZjMEkSPk34jXZlgd6PZf0PbJCXPVCu3MX1FxLHwksCPTacgFLZNuXf8i4TTbg/jUlFjVLWUBFVK0NinXGF/AC7f2cvv5RiIbdYgA5whMPiswhwiNNalxYoH/C73/oAWJIKsLquzlEKcyhO5rVtitl+8Z44Gfa4965wvl2Rilr7Za8r3ZH6Y16zO11UXOMGThIFgCNhIAJk+ZzgrzThdje3t981Mlr8YHSBA1ux8KUHyyTb2R3XhYJe2TCr0P8cg1W/HJqFPbm0KkTT84g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tu6og/YpN4NetA9i+aupR3joGqxJmhizBHffdbyW5x8=;
 b=Y2Kz8JcAlagGyzArEXlY4L6AytQywxl3MHLNlIxbFZuvUPZ0zIcDePC0KgR4Tz2u1dVFLAkWy4yCknm/Gq325YgOj7/ryGlPMUXAtTbDc8EaJ7f8n2v1jB22A64FzWh31Ct6pi+d7S//unO3/XwQxcZLAiWCJsLJ66/zFhR9kOQhja73W4KDgI3O/7pJK0foXNMTB4c91DoXCKprTl12KgiGiA8FUIMperiNe1AjDEAxMLnxOfo36UoB4vxhgvSE+CWFYCHdATQNdqg5YCUzy7MQzFhA257PV5zF7w/oyc+IW9zQn4UYVFVPUb5i3J2Z23mtiTpKwfJnrO/9Xv0OAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tu6og/YpN4NetA9i+aupR3joGqxJmhizBHffdbyW5x8=;
 b=ZYComRcqVcyBF5XTSDL/9RG23m+GpnJ65NisZHAJQlKSFmYaGW9MKb9iqeBgGhbAkIBz+NWW3JQBngx8Fmn21Mep/Rmt7WqtERw0Jf6V9nmt0KLLkUYfupOsq524bmSPYtII7S+cqh3ue1SJE+VoMQGsUrDlWTl0NGxxUNaFYGs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VE1PR04MB7407.eurprd04.prod.outlook.com (2603:10a6:800:1ab::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Mon, 5 Dec
 2022 19:37:08 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::9317:77dc:9be2:63b%7]) with mapi id 15.20.5857.023; Mon, 5 Dec 2022
 19:37:08 +0000
Date:   Mon, 5 Dec 2022 21:37:04 +0200
From:   Vladimir Oltean <vladimir.oltean@nxp.com>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Andrew Lunn <andrew@lunn.ch>, Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <20221205193704.hjgkzpxndhkdjuwk@skbuf>
References: <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
 <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf>
 <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
 <20221205190214.uy6rn4whd6vndo23@skbuf>
 <CAJ+vNU1M-LEiM2guowP-Ubb8cFnQE+YCFTZ=vL2C79Y0g0v1dQ@mail.gmail.com>
 <20221205191509.moan3imfllfpxkb7@skbuf>
 <CAJ+vNU2mhp-zthHb_a3zidSuFsEo2VT3kZK-k1aVY+GeRySSeQ@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU2mhp-zthHb_a3zidSuFsEo2VT3kZK-k1aVY+GeRySSeQ@mail.gmail.com>
X-ClientProxiedBy: BE1P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:22::18) To VI1PR04MB5136.eurprd04.prod.outlook.com
 (2603:10a6:803:55::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB5136:EE_|VE1PR04MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: f29fb491-ef96-43ae-5afb-08dad6f818d4
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RdtjXo5KlJLv0m1NK8tGiyHzEiCkj6DbLq9L19Yv5Y6WoNZawipgbIYhw+JPLe7imFrBnitOf/pQP/a/UcGD9E1V5kpbYf3v9WlUDiMFcirkScU2XMP7cgokIQrghBA8RkCjQnIivlEMlhVcbSmaIXzqQzlU+/DvIrlsGXa2zm4bLG0KG/C8WdBhSi+rR1T5JxrE3JhRRnT/uPTxwm7TtJtzpbYJBHvS+q3T+zCxkzq9lkABPbIMgcMfnRGZJMiTcxhhle8Jdr4bPoh1CSRoyZdyYd3VEaEwpuqm75OKl0QKEBHaPfP8pASZWLTO3ZumenR3My1aYfb8wZS5MsRtV3wJkUzCO7ynD8MHNuC99YfzMbazfKbBlRx8spVT+DC6VLgqt03ZSIaRaEW6T5woJD2oSbfyNbXFVbjF7RpYFp2yi97z0dcPMSLpKM5RP7W05FzLNRyyMy0Oq+1HUf+UDb9Snpkr69xccWRHWhciCxx4v0aZVTKqtp58juWMmcIPteixlTsmtNjxIyy4ezTYZBvZpJzqlKDMcADt+01qZsRfo+09bVOLkzNaa9t0obdVjBBgLx2gkxmmbng2BsYo/XWLKex7wijQ37uCf1+c5dUvZJtA3pwhIkA3GDZnVh/CxVkYmKKhpwUmowNCj3yn3pCsWBg9hsKCL4MxufX2+hFJuU05puZ8e4F67RkHOZGV
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB5136.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(7916004)(4636009)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199015)(86362001)(6486002)(478600001)(6506007)(9686003)(26005)(6512007)(6666004)(4744005)(5660300002)(7416002)(44832011)(8676002)(4326008)(41300700001)(8936002)(316002)(2906002)(3716004)(54906003)(6916009)(66476007)(66556008)(66946007)(38100700002)(186003)(33716001)(1076003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d3pjkFK/MhwlTmybHOv5ZcPFjBQlLWy7q/1fm3cU1HGzY5ofhK6RY7lkxGPR?=
 =?us-ascii?Q?yEpTaCDjaYwQPxzxqL/bfRoSs3CJ2wN8Wz/ohvSkRsnPT41JnvVyoiPQq9TG?=
 =?us-ascii?Q?2pgTKxEM9fK6eFZT2yR0cqBs4I2cUWYqbAZZtyZgzG5sXYiqkYtDqGPKnXr6?=
 =?us-ascii?Q?KAvBVIEC3t3l/xGQl0DGEaFWv7IgKzgWCmfmsDuZmbrY2XkJv2pctu58IMHS?=
 =?us-ascii?Q?C3djm/u6rTz0Er4crDkK387nMXJq8c4zQbHl3xnv4OauacHC1x/W/Q3LnZwj?=
 =?us-ascii?Q?I5VBhLhvQviTQ67Kb/TSm7ZARpxiRSDyxqmmtwPnHHRFBIq6+/u9kcAtVLLd?=
 =?us-ascii?Q?Bk50Y8Wrj6+k6aByc6X5jSIHt3xoPL4Qxg2eXwfTRz/jPHLTsXuQoFP11UQf?=
 =?us-ascii?Q?SLRGA6cSTG4YBTFL96AgWfMpSf+cq98YmCI2BpNxacEQIt0dJJco5RZeH2uD?=
 =?us-ascii?Q?w31hZ8z/tOuQPjwJWqb8uu83jRbxrmz5TDSteWA5+ZwtuwQ7aC0eTe2m/kiE?=
 =?us-ascii?Q?ErU6Y+XKUeoEYtFXpHXYB1W6uV5OascJNqZjUpQ3XUgw/ls6KtxoHVxXSFsF?=
 =?us-ascii?Q?NcbYLEM5va5wS+fBEoM5RmJFpZz0Pu+6JN2/k8+3NvqByWIkZKdjRlLnAJo4?=
 =?us-ascii?Q?7SPfcOv6lN4o+14cQn/BzuoZzFbePsNzvTPlBBdQKTlQ5MW2dc+LyVTOXq9Y?=
 =?us-ascii?Q?SkztxHhdgmlzS7fZiOaX652i+izNaoAG37cfVxhBMrKkc78xeJ3UmHPTxe4E?=
 =?us-ascii?Q?TtPrpCb0GdVHcx+RW9DXd5rRvDkALzRvPULbQb3FJjyfTp2OUS1lpZbycAdV?=
 =?us-ascii?Q?3Okpxvat2dhR6bcp/YKh9+zH/WGCOmEy4p+nbKTTbVJYTzp/fs34ZLAv3CX6?=
 =?us-ascii?Q?ke8HkSnmdGJrXyphFAahFq00Tz9hgPY3S4IrZ8Qf7/tkulw5Cgfy2SPjGCpu?=
 =?us-ascii?Q?HX14bgoZY4Or+W8VL5YCOy02wNEvZQiaK4lR4ZjYj0OZ3G6JPnM6RPaDrHYh?=
 =?us-ascii?Q?JsAhEdtnGG/JMKxl9aVbdbhKXbSqzVSxeJOQmBPiqGXuFaEB5oUBFzQvh/eg?=
 =?us-ascii?Q?iIyrObOmPR/US+V3jB6scG1+YRAGUHOao02KKVQ4rgSmCbzXZBsRK50OjSZb?=
 =?us-ascii?Q?ncHmw5Yq++OzmzSS+esBcEUdsALnMPFf895a+COCV8jsmzg09BPFWnwgMi26?=
 =?us-ascii?Q?FosopRO/RNQw4+FpS2OHUlUFk3jMtXtOCoUguZDQ4LxY9FfjSZW/AHljOk79?=
 =?us-ascii?Q?0F7VMuw23Ke1JtfcF5Y3HYcEgh26zIhxKWdIZxQv/0rQJYVSAqWJjFS562xF?=
 =?us-ascii?Q?HmWxd+Zu8gtFGcZDEjs95A5iDg/xLtYcVZAfmFv/ziyJBMJH+X5KQvvIgW/z?=
 =?us-ascii?Q?FKDN48JNudyY5FKPcuJfGOKqdTbTNM1mh2U7I/XHQcHu+AHHr6iOuOdRdul7?=
 =?us-ascii?Q?xmyUngNX6DVvg4Vpjqp1wFrhF73cnVcPKWMxAN5tteBCj/2c11HTMmecJa/f?=
 =?us-ascii?Q?O2Kxc8viNRF1tmV6RJVJJpfcMQTRCUidOj9ed9zlD8iYbDb9I807wahQCecM?=
 =?us-ascii?Q?SxiEXvw71kL+UzetoxWbDycQ3F82JwXj+13LNFWxr5nIKO5BmEjvce4TaE8H?=
 =?us-ascii?Q?Og=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f29fb491-ef96-43ae-5afb-08dad6f818d4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2022 19:37:08.4712
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F850XA1+K+/ig6bTedzFC/WtHsjmROqRE+wb2IH/5dhfbhfuFvKy3selmwBR1gAR/KMXB69Ymh8HlopbFCnniA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7407
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 05, 2022 at 11:24:39AM -0800, Tim Harvey wrote:
> I see. So then your patch should be backported to when the phy
> validation was added which would be d4ebf12bcec4 ("net: dsa:
> mv88e6xxx: populate supported_interfaces and mac_capabilities") then
> right?

Yup. Actually I suspect that before the commit you're indicating, the
mv88e6xxx driver was actually accepting the "internal" phy-mode.
