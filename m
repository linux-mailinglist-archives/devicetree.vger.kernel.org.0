Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6415871EE
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 22:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230229AbiHAUBr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 16:01:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbiHAUBq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 16:01:46 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2073.outbound.protection.outlook.com [40.107.22.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F5C81A3A5
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 13:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i1RMaQjifAI4ub4EmdjGKJhQQ/Z0MYNT0MBgLOylcOk60qdN1gIGKGneiqxnbmzVRn8TWvxjOB9MlzBWFDZQq9RTITFqKPGWTW0Cv9nkM7NbwVG3fVrebnyrUgnzwRPXOXFI/TEljiaSVJkt8YYfZ9ds/GFMQ7SOzNkPUxCifwsgarKImbquMCE2PqF6/TzkNNCKYTwM7a0bQes+AZEnrMdDec/2WJqEnnO/itEC5eE2kw5cNkXHlCB5foGEiT/Uxe2K36LTh8saSzV4tLo4lRPRii8rZetvgcvCO6uCMF1VRH6EoTnOkZnwtvm+D7KSWTk5ZUbgml2s2NjY1RW/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lFniB6aowl2k12wNTPdGj8/+jEOhQL2DqvwJuz/WCKQ=;
 b=Ek33zq1k/j2g9jkaBcAA3El6fa9xthRj3LExNaKdVIg68MAKwqVPDY8YOAlUqMtXMCZ1e3GJevvwznhJPRbG2eaG9AopK904IByNwWppsHIWtiOvjzbOHlFW028yFZXwnrvQmNdjmYnUKuryVRJcPhA/tjN2E/11pSg0Z9YGaEzWuD2JbW/0LTdAKg3RnnMD9Jnhd+tGSgQ4ik+cYunVT6s4zQzAwly20zEZwvGC5aNrBGxVf6v8GMwKmhQmUd0I6946PMqewBGFpEyapGYOw0qPrk0OXB9Y75JDK4PqctP8DUEFGzvuWiI1jfS/qMd7TvaXJVa94D6pAoeXGeUCVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lFniB6aowl2k12wNTPdGj8/+jEOhQL2DqvwJuz/WCKQ=;
 b=QQvfcfC8skUqo49hgtcO2aEKjyINLlHCYRhwdB6KmE+IdcwPBOHLCUbhsl/NjbRbH7zXkjK58fg+C0Eec/viHiNbrc/iKYUqgmtBwjJHJArjuyUl7Xs+n5I5lHDeW9sB17ZfXs42Iy++ERfg8ckw0hovWWC1c2iay5Ov9t+/cTQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM0PR04MB6516.eurprd04.prod.outlook.com (2603:10a6:208:174::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Mon, 1 Aug
 2022 20:01:41 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca%4]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 20:01:41 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH v5 0/3] add imx8dxl evk support
Date:   Mon,  1 Aug 2022 15:01:18 -0500
Message-Id: <20220801200121.672619-1-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::23) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 583625d3-3079-49e0-4d03-08da73f8a66b
X-MS-TrafficTypeDiagnostic: AM0PR04MB6516:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4hX9ifnDu+aHpxAW6G7MhcEPJzS0ojkoCXC7QeKckqfy2w5+thQEY0GBSCjoXEsaN60dIb5vW2h0PSJLfUEGu8BFVB8m9Orf/ATI2DSIK+u/wxutM/wdL8oHoQJ9lzx/jrF87bpDn/5MY7LEYkw7vBSHEHQmmJD6IgPlHwOqE3NQfTBEPv0cBItnniusjFGG5cM9LgiVusy8D99vPY/4yJAJKnXRaH9HuJOHQ0tk+FFh+OFoNYbr5XwJwWEDJ5/OiDPVh8qkR6jvT7ODHikn0l2YmSXzTIurz73XsLDb3+8/61p1qQcN8Ln8kNX/YDC+tAf93tSZovNw2JiLgmJ3uq+alT68A/c4IQLPU3TzkefCwntRVWOYFzUZomzEwg65zZ0bM4eTeDSfr9lo4XMuls/jGwN1SznPlIogi7JTshxRPO9gbgQ9GR9bzLECbKpRKoVGhXJVP5qu8YcKxNnmoPoti7KS4AHmaDdFqFMh5DxU1Xm+lrOxKHV+/P1k4J9YDkhzE0d/F6ZZW7kWf+9vvQFe0KtdJp9m91+s45c519lQJoiVJC92cB1ONoZikC8EofPbOoj1ZO1hXByHjUDQmjCPuBAcUgq75pFulWxMCNoR5u1lDhBK9xhtyxmTwEQfuMblZcty9ZXUX1NY1GDX1A1D3l0B5oHPfIrbJxxRkWlFA/k1BjoCYkuMwOTPNyEJ0RLYavRvJVaF3fELxmWNJkmjnes/8ibf5bB0oIu+HoyfMWQ0VPai0RIrb3PvnB6H90gLl6gZR0y3hUtkSEk4tbe4jUTH3Ax7e5sePa8T13MaWCrXW/3MFf5F0mjMQPuv
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(6666004)(6506007)(83380400001)(52116002)(41300700001)(26005)(6512007)(2616005)(186003)(55236004)(38350700002)(1076003)(38100700002)(5660300002)(44832011)(8936002)(36756003)(478600001)(86362001)(6486002)(2906002)(4326008)(8676002)(66946007)(66556008)(66476007)(316002)(54906003)(110136005)(6636002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hvZFr1t0+11VSnoSovOQB0xUHG1M9ai0HtaSjQdB2TWTKAEzO++GdTKLBsbN?=
 =?us-ascii?Q?dl26sz3TlQVt9ASMbviMWwo4UVdryCEoQ1XaXh174JkojZjrJzDefRx6ur2r?=
 =?us-ascii?Q?yxgD3Hl2qiKjfmS0PNmzuajPGKpBBMGu9fNccwRqpaVxBRMIP8SK7FOHu2+Q?=
 =?us-ascii?Q?ZMIpL+/ydMSJh58TPh1Vrl3YUHnTPLfhcPfkxiJX6kkALb2c6QwxbyS20q2F?=
 =?us-ascii?Q?tpra0/COqYP6NpWXGbUpm3BGj1XrwkNgmIbPWFtgjycIMIaRP2dGoQlQ9yIW?=
 =?us-ascii?Q?L7ALauHfwUvIWycUkJwtl6uxr/VJWuWzIvMMaYpNBFCdeJuF8KHWO0eDte07?=
 =?us-ascii?Q?XxQYL7/haAHz2habxr0WGeQR75kNIMu9HgP6JUiqbvMMO5FHwlrDfUnZL5XS?=
 =?us-ascii?Q?NKGU2I/3xk66DDPSo7a2EG++KP/FfESbG/w/9Z8Z4s4m0bcwgnLPdJHzGCbg?=
 =?us-ascii?Q?IC1eClPP7gjd0mlumQQhbY6OAfgI+KCIeWj9tRM5Drdahh23FNDDvSbJPj17?=
 =?us-ascii?Q?6ZarVVDGiyXjike77wosqyOhPi2ETBgvdo6Wg65WTjLAVY8A2+jvHB2HK7gm?=
 =?us-ascii?Q?55DQRPWng3WSsHoWWRYxMvVDnGeMIiOCF3zGzDMb+Y92438Cj7eLNFuGos2Y?=
 =?us-ascii?Q?dsGAmOlnJIx5Ox84m43zUa5JMaG5zxrgyLrCz2TMV0CjU6i/lEvyrlaj4aJT?=
 =?us-ascii?Q?pG/rJ2xUvBlBTG4X+VkUIkq4JICczUUQhwWPn2WwGRfVskWebrd0j6JKW9BY?=
 =?us-ascii?Q?xZ5JkQ+Uj4m334MfQYnU7gXkncduvomdHaOTcmn0cQOdjtX7bVw3O/r+91nT?=
 =?us-ascii?Q?EoAEh9QyXyWk9JHKrXm0PBQZZQDT1e7Fwal/p35j+UsLfPV62TO3VK1Ni//R?=
 =?us-ascii?Q?J5jZ3dDXHvciu1Zu29zpL6LTobLpWBGIvdhfDEHJ/ugDfWhsAvd9TpurKl7c?=
 =?us-ascii?Q?TfqvnAs+HvXUwTVt4A2JstsOgj1aczgL+gG9l55PxOzCICTUI+Fp5hPwQ0bL?=
 =?us-ascii?Q?j49K0Q2+lgCzgtf7uxedB48nwNfcZcW+yithWQi4cBZ7bzTO3NF/Xs5q5Co+?=
 =?us-ascii?Q?3YLQzuecHhrbrvFdxtBrJ1VkyVrFP7P+QU/xg6vMyx3dtTrId7a0QfkTZ6xj?=
 =?us-ascii?Q?YDAMEniEosLkQjrgvrZVnIc5+xBeQXZAtUcIDGLyfjr/WfgIKvDW9mK82JOD?=
 =?us-ascii?Q?hAwPR5sDe85WuaPUK9tgDrfS+tMSNmrYOeDpgTKwMnKg/Efc9kxUyr1a/Tk0?=
 =?us-ascii?Q?9Miwqi509VLvz94p+dK31QmUxeGpbSVnsE2xDR7ZisNg5B4l3kzHl/PFSlZp?=
 =?us-ascii?Q?LoR8ML5rea9mtcMLi2pKu0akIsFiMaCxH3xlpw8iIMvBpoBSlmTnPFgiK5eu?=
 =?us-ascii?Q?wCxBCK0GgJUP4zEQWWxXtyrb5fNuXX+GeWR2oXlC+WLFJUWQPu2JAQcGkU7Y?=
 =?us-ascii?Q?KLyrBg3qgXcFYtXiuhwbXzfmjK0rgWUbgbMU+WVE1iXcnalSZqMNu2Ouv5En?=
 =?us-ascii?Q?r3/QBU9VPZ7BZW52EQ7V/eOZdKstovSOBQl8y8pHMb/fv4z77+GAkeMvNl30?=
 =?us-ascii?Q?NfRJ+pt7GclZQUAUQ+Lyv0iAKLlBNZ009eyJ+V9a?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 583625d3-3079-49e0-4d03-08da73f8a66b
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 20:01:40.8417
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: unRsITT0Qjjg+sS2vd4GQhxxgl/qKC22rRj3lWVkRMYO6NOZ99VKcGGd5ncmHgj1Inj91TR3NBq3HWI/n7OsDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6516
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

changes in V5:
  - change the "scu" node name to "system-controller"
  - fix the typo in the comments for imx8dxl evk board

changes in V4:
  - move i2c/mmc/serial aliases from soc to board
  - correct the node names to follow the generic names recommendation
  - remove some unused nodes in the evk board dts

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
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 138 ++++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  14 +
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 463 ++++++++++++++++++
 .../boot/dts/freescale/imx8dxl-ss-adma.dtsi   |  72 +++
 .../boot/dts/freescale/imx8dxl-ss-conn.dtsi   | 145 ++++++
 .../boot/dts/freescale/imx8dxl-ss-ddr.dtsi    |   9 +
 .../boot/dts/freescale/imx8dxl-ss-lsio.dtsi   |  78 +++
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 238 +++++++++
 include/dt-bindings/firmware/imx/rsrc.h       |   7 +
 12 files changed, 1172 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi

--
2.25.1

