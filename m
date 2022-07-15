Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 902D9576A77
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 01:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231995AbiGOXNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 19:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231124AbiGOXNL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 19:13:11 -0400
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00065.outbound.protection.outlook.com [40.107.0.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A38B6D54E
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 16:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JeGk48eh90TKa8iAv2DzshJBO9bz4ZUNmLsPhTa8mCM3axMn6VQ3/BwEYuknlFBZqoOtH0JQnygwpSJzWMZzIv2Pphy2+hN4AsZl1XPKUOufgaV7XxtnwS4Psxs6jv6P4viBTdJ8CiYfes6qqIaTSbEiR8BUnIjn4LfqB0/iFoQj+7HmmhcciqL6dm5q0AohNbwNFu8Bd/Lyw3ATESMaeup1fylYkBNMUchll1TUQWcS7BgWPZn4HyDwYzvzg7uCvUlB6u1avv85xjWEUC2SchTrVvjBjEK3Ldv5kI7m1kl484PuPMl0I/qHZG3ccyyhzX0+ZCfRzNtrzzr99as8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGREN4Qjh/QhX/MdcLxlN9Dv8sQWLPE5Jdm+cG87yr8=;
 b=VuIEtJU6EcUun0MsgOz0I3IUhTZtS60984ahJzfHV32eiMT3qQ80Dfsldxqla3LS+jwCdyfD1hODiQI96XOKzugNB9fIpLGffgBn2jvFsmg20R+hAZwWwKuSS//wac3lJYstnJz0bOgBSy4zF556usgPw+byMFiLCCFLP7wXz7fJ5pJZ1vbvBQKRoctRkbHWiEuVj+G+wdb+xfA7V15JKBVtLxP/vb5k24ttZMf2K/pyMQ6VDkwgOEQB0q61RRSYPMAwdrFqnzLuOe4Ht6mY1w9OpNMi5XV1I2wm1trEuZSkHRpm5Zni+YWjKm2VFxMNkZP5pNzELeDo0TUZ8avQ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGREN4Qjh/QhX/MdcLxlN9Dv8sQWLPE5Jdm+cG87yr8=;
 b=HSn5zpjpGKbERgBX1C9yf9Ee9ue3U+dmaB50K3w8F5WwVMcjGdhf9AQnSg98zyiY7nVp9UxqKJ0doJHJE0lEelYGkMA4s4jT3+D+hUNMqpcRk1+gLqSiiltpwCTKFBD511IH//kvs6FjJzEeMumODYi8IDTV9OYOTlWbfxWgaDI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DBBPR04MB6156.eurprd04.prod.outlook.com (2603:10a6:10:cd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.16; Fri, 15 Jul
 2022 23:13:06 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.017; Fri, 15 Jul 2022
 23:13:06 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH RESEND v3 0/3] add imx8dxl evk support
Date:   Fri, 15 Jul 2022 18:12:38 -0500
Message-Id: <20220715231241.346778-1-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DM6PR10CA0019.namprd10.prod.outlook.com
 (2603:10b6:5:60::32) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e1f926b-11c9-4e3c-4931-08da66b7932f
X-MS-TrafficTypeDiagnostic: DBBPR04MB6156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: drJgbdSTYCsBzmjteLJynYiXZqu4pcXPbpAxH1Hqi/kheIXFdLIdh9NHuk1e45E6qY8iRM8vdcxL+8YsDfSo1cofk7uN9sqiEOsr1vIxl3zZ9sQXC82wYG6A3CdEDQ53YHHk6VtsXrhbJ6xctdukDZ6SMU3lh7C8zNkv+Eq4nZ0B6O7wVx8TzEH6I6b1tLylRiBpja8/dU7YiKg0aaK1j26si3JEERfaxpYU9SgWZqpzxMOPtp1kxM79eCOCsoA1Ndp+J0AA8RvUD73+/O8YPSxdUEhfAyfcOODpV4RbFrU1ZMXC+Ujf9t+GLbO9ayElSrkCoQxEA8P3GSY7g21GvVzYKjX6b5iXV+0hys7S6ik2q99SH4CQv4iKnqBlJaUT2N0+J+BmuUlVgCgErSyKd6bnAbDCUuAebv3c6RP78vzomehCeMgIQtFj3Agxxe9QiKRDYZjTBjqp1ftCtca03yM3KCsBpplvlvxAMf4bSqRA4R8JMRtkFXYyrPRTLir3FZqXH3wS2RNui61VZ3J7H8lzx9aYtxaUSkzY+GTQSiHqVA5jhT8cw4/uX7ZFzh6qNmZbKuYD6qZ64DmFPrn0GpqJLVoHq3A+cbCjAUCfK+/L7nSwA1LY/QRlHI4gNYFb/aXqta3VY9QF5tn3askZRD1SUYs3fxqScIyMDKcqUZw90k1pGxW8lfra0AoVoMs1LK5Vp67T+e0Zz5lWNYg+Ala0aVGzG1OQ9cVwwboh5FAxTZIDK3lqKNx6lVVRS19q/uend834xgjGFDLCwvRABdJ8oSPc4Ww9pzWblS+89P6yucT5v9wnkXO8jmtxdw3NNsYCBrKKVYGTlvKT7ayxWeF/WlA6XuiP79UcAJdgJVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(26005)(83380400001)(6512007)(1076003)(6506007)(6666004)(55236004)(8936002)(52116002)(186003)(2616005)(41300700001)(86362001)(2906002)(6486002)(5660300002)(478600001)(54906003)(110136005)(38100700002)(316002)(6636002)(38350700002)(8676002)(66946007)(4326008)(66476007)(66556008)(36756003)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bk4ur1nRDDBxN0AkzzNQC+ZstARODhVqtNq70TZJymge5lDc6Vruh4TCQDBh?=
 =?us-ascii?Q?u/Ihe9oJ2Npl0+CnAikiHf41PXfxpQ2bor+KEHT5/zPwav6yGbtMQd1tW82g?=
 =?us-ascii?Q?FUA8NVEvHNb5oioZP6WUyV9ibkOgcF/wkNT3uJaPIlKndd4MuejwFPgrKpH/?=
 =?us-ascii?Q?fxmvvDOosSxInuSxlcb2P+Ro96gEvigrLPoGf6Vi+8QE1QkGjpnVEkZSWgo0?=
 =?us-ascii?Q?z+3juh00EZ9Acunm906vh+p/ewrxeIlJuKil4F2BUey6L+Dp9nc0BfZjF1mS?=
 =?us-ascii?Q?G8z6i37nz18/TsZmx+zilZipLfX08qL7WQSI7R/J989MJUnnZQehqSIJDNCO?=
 =?us-ascii?Q?oUbHjGX5fFt5tpF0/klei8+HCdpXjd2AUFS7lN+WBFXT+QGIPMq64Q/CbSqE?=
 =?us-ascii?Q?iHhrGUN1FNIH14DbNKtLyHw4N0ZjRxX8nafuMIqeYyAeoQILPmCGF3a896OY?=
 =?us-ascii?Q?UGtytZHLz0ygn1hTKRNDhnK2eewxlP5vIzQDdLhBTF02j1vhFC5ZnwN6aDjy?=
 =?us-ascii?Q?YaJOOb/mE782XoJ2Jw5Cg88Mhd20KgGn1wZ5RbonTCLaToaJPITVDTB2uSg/?=
 =?us-ascii?Q?Ro+D8dOH+q8jqw1Fdap1HWLQWa2IG/AgfhZgS2ZMmwgVDmUwLf5C67EuLekT?=
 =?us-ascii?Q?9pikTvP0OIzGnbHhXLqL1x7EewEV1kT7z9aJkK92MrKqNqqWLYgc27MCxDxm?=
 =?us-ascii?Q?gEy5NWTV5+f2RRsD2cwXQjtZsk/16UmrSloQnp2DhHTBPRu0bHpfIybO04Zp?=
 =?us-ascii?Q?1GOh4cvlBcXtHiHXvQ3sQfbXjrKkqIJEiOPaA3a/zA4XnAAoKjX/a3ydJf1d?=
 =?us-ascii?Q?4id92fzFqmmudDDLkG/xKaVZRwv2xbP8Eb2RvaTmqi1VGFg8qXCkHISBaQpa?=
 =?us-ascii?Q?pnkztEE9tUxcjDtgmuRL6OxSbQpejiy3V1BlPVLLbjmrjYbiR1NtBTSbyC6m?=
 =?us-ascii?Q?0mCkvQRfh3hXPpEUsaHRwXovRXCf4mHAGG7I6WkhN9L2Z5eaZiYIuU9KhH+k?=
 =?us-ascii?Q?eb7DisiaY3SmKzzJ8Ynt18UMLAc06Nu4md+qduu4hlL/5bBGHmnJwAI8FnJv?=
 =?us-ascii?Q?zhtVLaj0uZMMELVW2GbyG6MFtGJvuHVX93Nfs6/CttJngLp9RkN5eE5BmPBO?=
 =?us-ascii?Q?Ft67bMJs5sp3QIOmJQNi4Pciwu0EXvjLqRS7wcWclQXPYu95sMlRt8cU0oem?=
 =?us-ascii?Q?2ENtKPmdE7ZA7NKxgnpPTjQ6x0OfsfMtHF+LPxxs+hfKMjCixGJLTfL/n5pq?=
 =?us-ascii?Q?oAjo3g/FT0k5V/0PlYtBnQspE+P5FzqQc2sws0MoDx8Ln7zFdH06ojY34BG4?=
 =?us-ascii?Q?UTKGJtNZ6oel+rTOWnZLhUFQXJUdpLnhIcSvXwoOnFI/iGtqf+5Kmsl9gR3m?=
 =?us-ascii?Q?IGzgAh6ehwIIIwzf7c9dZ5vJfQaR3jTMehNH+BgmCUzbvDAC8Kg4PbM9ObRJ?=
 =?us-ascii?Q?L8yZj1fAwcPkf0ufA/doP7+ZbROlJMX2IdY0c+5ajsopwVBYmYRblG6b9KZW?=
 =?us-ascii?Q?ntLZlbIRPGgxpnI4BSLVzc5JYb8dBcfx/gHNMy3LBt+q+u9mms3B30K26crt?=
 =?us-ascii?Q?kS7uebwAUBEb2gDP9BnKArfXSp8zLayi9fCftkGQ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e1f926b-11c9-4e3c-4931-08da66b7932f
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 23:13:06.1525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7WMLFXIrmMKILuyhcTsQqa4UAqhQ9iLHG43nrtYWCF3qYuMPtXxr0T7miWiGPRtVxh9FKm/aw9306LDFPIbomA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6156
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX8DXL is a device targeting the automotive and industrial market
segments. The chip is designed to achieve both high performance and
low power consumption. It has a dual (2x) Cortex-A35 processor.

The series of patches is to add the imx8dxl soc and its evk board
support.

RESEND because the previous ones didn't CC "devicetree@vger.kernel.org".
Thanks for Rob's notification.

changes in V3:
  - re-order the commit sequence according to Krzysztof's feedback
  - correct the syntax and styple problems pointed by Krzysztof
    (Thank you for the detailed review, Krzysztof!)
  - remove the unused nodes in imx8dxl-evk.dts
  - dt_binding_check passed

Changes in V2:
  - removed the edma2 device node because the edma v3 driver hasn't been
    upstreamed yet.
  - removed the imx8dxl_cm4 alias to fix the compile error.
  - removed the extra blank lines at EOF.
  - dt_binding_check passed.

Shenwei Wang (3):
  dt-bindings: firmware: add missing resource IDs for imx8dxl
  dt-bindings: arm: imx: update fsl.yaml for imx8dxl
  arm64: dts: imx: add imx8dxl support

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |   2 +-
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 138 +++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  14 +
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 566 ++++++++++++++++++
 .../boot/dts/freescale/imx8dxl-ss-adma.dtsi   |  72 +++
 .../boot/dts/freescale/imx8dxl-ss-conn.dtsi   | 142 +++++
 .../boot/dts/freescale/imx8dxl-ss-ddr.dtsi    |   9 +
 .../boot/dts/freescale/imx8dxl-ss-lsio.dtsi   |  78 +++
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 245 ++++++++
 include/dt-bindings/firmware/imx/rsrc.h       |   7 +
 12 files changed, 1279 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi

--
2.25.1

