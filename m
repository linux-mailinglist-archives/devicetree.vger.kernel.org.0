Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDBAF6E5EBA
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 12:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbjDRK1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 06:27:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230337AbjDRK0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 06:26:55 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2072.outbound.protection.outlook.com [40.107.8.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD8577EEB
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:26:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TANuXpaHYOU/0FbRrVUtGZXX0FeNKH/jzsvMiBIkDYD8QrgnrJAAt12zlSCC2A/LRqMjfILsAKn5MLv8SoikgEB51tSZ1pMq8XhByjmTtEsL5vQcwbVGChL5OcKo7mcrBcNc9UgGLtQxgCDl5Dxvx18NWZFaPWIePj8ldfftmZu1k4mOyky5t//AQW4i4vjRAYpBSz4WmBFN4DxqavgJ6yBsdsj+O1hZP8ZXV4JhamOyYo8s4jn9Fd8VFhOVoLdMqyOoMBFlYwwNKkV4JfvdVhqwdUBEH3YLSuePYu92M0+usypLB4QaCrF2BJaR/u8TxiDZsANe+J+ls4OBdKPTpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oFVfoyopsNiTHBWONpKtb2Tq2ZZnSrFBy51LMLtTkmA=;
 b=BmpSsIZaJMxNu3HVCE3Bm0BGPcY2adpmv0MKuRHqzaxcToATRV9mqEtdQj1TQSnu6BgsNYi5/laemA7koF4SYX5iY2c1FrIohF3GEqAG8qwOlxeoOkJP5M+2bp7sp3zE6IdbgXWNKzKAGIXO+KoZoCXP3ToNYQHxZASu6rLy1grFMUmcUBaoOF5MC0AV7h5MrRQNR00NX2BNMrumcVZEwaNnqrHzeazZ1AEr8qPmAStQKlZ9Ak680ZsrgZNkqim5Z9O8rkajeozebFLeEt/FJ0YMhjZ40nVDEnqlPtjFx97zQ26Xqwckke5fcfm2xca36nEIjlMoFUDm8Zz4qsLCaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oFVfoyopsNiTHBWONpKtb2Tq2ZZnSrFBy51LMLtTkmA=;
 b=jDRW+xkVPj7vwu+QT31CEtXcbZr6wh5cGtwt4ioVRD3c2xEbZ4kpsyVDLtaSo/3wU6YBuRdHZNnYjHsKJUJa/UQmv99b+H19m6tD62Z9kmNBcfAB4y0DfIxDPJY+O4ndXJ8ZNMblnE7p0paK9ImB+gpKHFWNBDGgNiiGCYYZdIk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 GV1PR04MB9184.eurprd04.prod.outlook.com (2603:10a6:150:28::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Tue, 18 Apr 2023 10:26:49 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90%6]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 10:26:49 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     will@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
        frank.li@nxp.com, festevam@gmail.com
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Subject: [PATCH v2 3/3] arm64: dts: imx93: add ddr performance monitor node
Date:   Tue, 18 Apr 2023 18:29:10 +0800
Message-Id: <20230418102910.2065651-3-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418102910.2065651-1-xu.yang_2@nxp.com>
References: <20230418102910.2065651-1-xu.yang_2@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0109.apcprd03.prod.outlook.com
 (2603:1096:4:91::13) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|GV1PR04MB9184:EE_
X-MS-Office365-Filtering-Correlation-Id: d79cf961-9e0c-416d-68ff-08db3ff76aee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfGfYB2QpjqBC7F9hOOWe05h6d0v6F0T80x89LhMVJnstPK+0WjVS0ij/HtcLQlViC5tlRDbHCvlHv65eYt3QcVDxUd24c2E4YfV3P66VzFDElZkwnjT/NpBnhIlcpUNq9DSm/Zh52/P67yq2ueigI7fZhKaE2BcASyUCCA1cUhDRsMGP+xwgxJG6RBY9Lu9wSel5azaWHIT+7Elu/YBgUmCcZLw89C9oIEyo3Vxjh0/XwsbKOVfoRrjmz+HE3r8l61+oVFdj2cVvQe5GMQx4QU8a35RF0BTmtKqPTNt47nuppePx/JcW57lo0fqd0nHiuRQ8/lpTslL2vOZaoEn26fB++gltcRRrTOYehA+S8I78PJX/37IT8A0Alzj4yYfj2jqsF0uDaNSkFhaoCoHC/98eo8fbAulfFGPeVMsFQBSNo9iLOMHYzjmhJPvot21C7Ry3tUkDLqdLqGpJLevplduja7InkZS0JU3VuZJb28FMmRYtskBXa6AGE2FJWAeoU7KuEdCuHvulk3k8PtYXOk+HZQ092+ob+11JDc5IqkL9VQ9hNwlJjCqCc+pQVoXTD/Jz58XBi9HtJ3czFqDELp7MvHyea/Edfhzfyv8VHpyT/BOcJHkEY+5Xi5D35OZ
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199021)(6512007)(6506007)(1076003)(26005)(186003)(478600001)(52116002)(6486002)(36756003)(5660300002)(6666004)(38350700002)(8676002)(2906002)(4744005)(8936002)(316002)(66476007)(41300700001)(4326008)(86362001)(66556008)(66946007)(38100700002)(2616005)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xH+/xfzHdyluAjMJ0fbR/PppXTudwn8NKVLeHNU89bwKP+/mdTtnmigPo8nX?=
 =?us-ascii?Q?BG/XIq7Psqgc9B+TAL+f+jMf72rwCfkholRQ8QVyBZzoRVtrvsdMdBXtbKdn?=
 =?us-ascii?Q?1JJb3wbdwURdUwWifqRnkSetfMloOvhrclYYeMfYyW7HWdjNIlDT1W+tRddw?=
 =?us-ascii?Q?RkL0scImzL0UFYmr/o2kyQ15XcjZS2fQ/e+ZI6nIeczXsLhhuydo1hS1y5SP?=
 =?us-ascii?Q?h2+aAEkFu4HFawopKyCaeMvszXerXDUm3wagaN5Sy60bARXiIUqixOai+mgZ?=
 =?us-ascii?Q?gvYYxf8pqYDkjCi6SKr6zsof+KF7PksWIu0Wf/VPEGyngrhXqu1GXV5oIjto?=
 =?us-ascii?Q?x6VsshY4YulrKpPgngtjDkZPthiDz5a75M+eiGbLSqA+eSv4yfNZKHWzKfyG?=
 =?us-ascii?Q?nOtuSZWAaZtJo07kcRHNW7jfCqhB10vuhEVu54yfch3WpWkb4aruF8DRcrNz?=
 =?us-ascii?Q?Wu4CPCelFx1CpAKVPrhOX+MtMxJ9GkImn5MUQPUwGuW1VfSvTR23Dv5fYW8A?=
 =?us-ascii?Q?oBqG6E98IiImV3LoblwmA5hk4ym+k3hf+y4IFd94KePVAHLzScdCpK2k7hy2?=
 =?us-ascii?Q?0sGt7OsWMYchJ63LkhP3X2ATydqgOIYh3MvRkdoFT2M5/3YRbKLVXDIG3XIE?=
 =?us-ascii?Q?2s4aUyV0cHjYKgpQ/9/RGlpog09IoLzyvl28dEJ0LmwVjWk8qxPqqVfP4XOi?=
 =?us-ascii?Q?LbX4qd89wEiIEQCoRkBwRGMlsVFCSvYJCPavVonQ1pIt8aLIwlvCXsSOy0de?=
 =?us-ascii?Q?02YM03TQCc7GAL87sFP1TRi6OlT0FEKKTa++H//4uTpNs6L5/fu9vl4I3IlY?=
 =?us-ascii?Q?IkyFB9e0AA/ZxdZ+tFth4VZnEB5NVqlj31COQIdo8YPe7Eels+U9rS4H9yxX?=
 =?us-ascii?Q?08UhI4Rcyo1jnNIb1f0g0ckaEwy5a2CJqJDru38JwsvPwvNLTUGxIlZninOe?=
 =?us-ascii?Q?hYeJly60lTg8cFEeGuV60S19akIL8vZvhiR1LHJcvkBASbi2ec06PJcwKL3L?=
 =?us-ascii?Q?5Vk7OPUuLqFTOJG8DlmEXEhbNN4ADMzpwuxzpl1U4VLqdNn8WOO93sRG6/qd?=
 =?us-ascii?Q?gs2jPKu9tJOeFvDZ9UFjsSc0977dZPLRYeungTvQBoNNctpau0ugZ5BjJQil?=
 =?us-ascii?Q?1v5xXpVRT9L+ulnnCuSItNw9mnHTFxkGzlyBHYx2Id4FIVD2GuDwzEBUkczv?=
 =?us-ascii?Q?6BOoys1CxKYSdN6gjm+pGmi9crAYmBWn2kZ90EfW8oOLVYNlQ2Ua6bOtCLSa?=
 =?us-ascii?Q?piPRiVv034aUOJPmPYMQeMO5L0iAG9yP7BC59S7QBrsBaSqXy/tMWmQbSZP+?=
 =?us-ascii?Q?08ct5PnRHZ2kHCm5x32SNV9EbLCFVNsff+C3NvztCD+V77sG4Reo0zSIT1kZ?=
 =?us-ascii?Q?dUOWIrYgLfYxqRKCORSgXK2VAuZMaQz00DojV3HTSVQvja3fxajLk9vAAAeW?=
 =?us-ascii?Q?EiLzT73Fw2qZaE0jvB5kDfOVJ75fX/NAqanUXn0nhY3g5ipwJO3iZcL7oBiO?=
 =?us-ascii?Q?tBL+1er6pfVuSxB1Olj1QZdEOlGdoMqwIib1DlnzH9p7NT2y7cYCIIL0szf+?=
 =?us-ascii?Q?01mlbZFZzZYom/CAXPJLU5EOnWDF0miXKsPbA1Nx?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d79cf961-9e0c-416d-68ff-08db3ff76aee
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 10:26:49.5621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJpO8J8+XmhmJmdU+J5c3UjOgYO9lwH2YhWPUniqS+EXuXlWYs1qlwXG+5nUqQnOt6RJBRaUMeU8xe+nT9EJqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9184
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add performance monitor.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes from v2:
- no change

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index 2076f9c9983a..be8a581c7454 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -725,5 +725,11 @@ media_blk_ctrl: system-controller@4ac10000 {
 			#power-domain-cells = <1>;
 			status = "disabled";
 		};
+
+		ddr-pmu@4e300dc0 {
+			compatible = "fsl,imx93-ddr-pmu";
+			reg = <0x4e300dc0 0x200>;
+			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
-- 
2.34.1

