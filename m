Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6876B3BDA
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 11:18:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjCJKSG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 05:18:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjCJKSE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 05:18:04 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2072.outbound.protection.outlook.com [40.107.8.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040B3149A1
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 02:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GS0nV4Imi6Ktpn0mnXDrsdH4Pl8PqRmpG/iIxyxGKhZNWUz0pvbH+hPM/5OcxZAkMWw/pyTp/w8+TYmRAqvZYcxOiEP5WGzFdLNQ2ePw7PazVw3eHSqSaEVhr+yZM9Y1xNgdOf5jJcPvYTXa7obH6pxKWU3qTqrOFFWtRYKXgaUZThcCJTsijAA4dlq5/4cPI3ixWJt7LIr25liqlhglDzzUNqHpEEr3im3OyKpTTESGWfzdwRKMHFtdnRcVV5e9rTAj4PQv66BZYkXcQYgm7V5h2tymyoX2EDmbXDLo2eS4Gf7DeCCKmW2jJAmT76hEauoO+AoJRo5Wk+BGIFM4BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xE8f5QTHCPoZIAlr434/roRt577Ara5rMwsGjropbA=;
 b=D9L1XjMYdxz0fp4vqLJrZdZ5Oz9lNr7gEEgAnSHW8aUvWiH0ysvXImVOECNVCWrHJ0q6Yw+OH4KA2pFL8D0Ohi7HV/tfKLUsq83eOsSGiO8g4U37gSPoSZSlNX9iJ6pbzwZ+qYDRnZq874PNZ09S/H40G13Yz9kfsHLbUjiiOsYxnepLtBPqrkzQ4DabhSgQ4PK7WBP/8P5rInSFRD9pSkoQyPqaHr+7p/C4V5qUTWFswZUgT0tyRkinOoFYreqSSTDSeNuZLX32d6kMrBrB2kcGLBKT7CwgBsxPT2JPDPdb2lOLt67IGsYmcsGqEu2RQ1EXAv9H/x3Hug8p03A6Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8xE8f5QTHCPoZIAlr434/roRt577Ara5rMwsGjropbA=;
 b=m1m0vXLOY+hwHk8XXolXdHCj5CtYji5n0//RTTJPEmAWsVmSWPxT+8sfbYcAH6+oSqka08J5IJXSN8FDn7AzMkJxogAmf/KJlrb5P7THt55hBMXOZkjsTKfOz2ZPVBmYk37Is4kFISr89E0Xp9YzOntRltAGpFXWp6805UGwvEo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AM9PR04MB7585.eurprd04.prod.outlook.com (2603:10a6:20b:280::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 10:17:59 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6%3]) with mapi id 15.20.6178.017; Fri, 10 Mar 2023
 10:17:59 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     will@kernel.org, mark.rutland@arm.com, frank.li@nxp.com,
        robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, xu.yang_2@nxp.com
Subject: [PATCH 3/3] arm64: dts: imx93: add ddr performance monitor node
Date:   Fri, 10 Mar 2023 18:19:16 +0800
Message-Id: <20230310101916.2825788-3-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310101916.2825788-1-xu.yang_2@nxp.com>
References: <20230310101916.2825788-1-xu.yang_2@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0251.apcprd06.prod.outlook.com
 (2603:1096:4:ac::35) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|AM9PR04MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 90ca64f7-29ec-43eb-5f59-08db2150b925
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EbLYzuTZ57G/dFLU9+W0gQGBohoHR/GFO+pd476c2pRjny7iRBia91vCOgcAbQAV300OQJ/B7nB2IBLsUgGLhxZDTeM86Kl8l556AS6sFayllxCcawrvhWuj2JWPnBz8N11pzfTz++t1McHlB/Bxs8owCG0v1hjZSbZGzVIs0RlRojP+GzQMNaYAlvZiKW5B8wxKsgAoIqfCEuUTxD/O1DDuWPndp19G2+sDbUEc/HtNSZ8uHS6O0ldrN8lwE8aKFuXsA+IGX3XD6TeNjAAym/UhZE6vvsoVHbw5XH92TCeaHKmXbsSAqJ+zjCXyCAus0VRUrjjlPT+cjJ5GzUbchYUNbcmzcGYKjB8QGXYKk5wifMTkBoSNXS6sGRRppdJf3H6Z970skN5E9slnIKHg9fvLwoE6O8KkmCsgPb5CemueTIcFg97N+uEgwVD/F1+tspZtNsmXU3sA2RS2bslvZ1iUstGZhIW7FRilEEBgAuE3CZ89lDexZ4vMI7DFenqpyJ6YLsC8xxEaujR7fXfj/nFjuD7XjsItnBuaBhdEm57inB5+qDaOHigvLiJf7DRhUtu0PbSXr6fIVGjKveY11v2Nuj5EnIxXTG40K+HVffB3v9xNjeDgTdAC7xk9h1a3kq8dMXmJvVLLxd+WnVWbo2Y7j7SuJtzC46KQUVMNmyRNLnXju9v3KpRgnSEec0dmgEbjWWpBvFfjLduualQ+4Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(451199018)(36756003)(186003)(6486002)(478600001)(316002)(52116002)(5660300002)(8936002)(2906002)(66476007)(8676002)(66946007)(4744005)(66556008)(41300700001)(1076003)(38350700002)(38100700002)(4326008)(86362001)(6666004)(2616005)(6506007)(6512007)(26005)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xTUQDaPPEsZ7cmqf/cumhUKTXIEztAMgJzpQ1dE7FZqbm3+uyNZ3yKhsoP29?=
 =?us-ascii?Q?c9mlakMy/ZDhs+yIgDLXlDXx/7Gj3UStpRm2XxXYJ6ZBEdaw5nV7FY8vclY8?=
 =?us-ascii?Q?rvgERNwvq7Fbu8jhQLBiUl+wXgsMCD4ockMDfgrQRJix+AgmEheb5+JsQz0N?=
 =?us-ascii?Q?7pXx1MGdQY53eiJHqrrkRbilnmhwBLBw5YfXESGdQCwrCzyX5mLYU4OqXSDc?=
 =?us-ascii?Q?waxEPOA0Ok+Cx6IIl49Ilb7sEsejsx7QS3hG59SrNDLVblLVOFpkTDolYVcQ?=
 =?us-ascii?Q?YLE5vEp1vsZJm3v/SsJOakDkrMPCduBSr/W2uH2FJsh3lDttJL2AppEFL64x?=
 =?us-ascii?Q?SY1v1T7jHZcLUV0x1syHVqbvBm+HRWfwvg6o9+AvrynQrrRINTuGAP34SDxv?=
 =?us-ascii?Q?FmDgnWGoFUlGWGFhhQqDYob39f9pOR9WrtyCK93GUJnK3/Q501VdQ2STl/5n?=
 =?us-ascii?Q?wfdHZlX+r/VZp8cmohlql9o8jQGdEUV52QdaVM375/Rwl2+DNyP0qX1qeYZd?=
 =?us-ascii?Q?2u/8KmtqnTUPba51IYibEuDY9afxzgO6k9XFQxgIgmbtIMIyAz66a06fCEP8?=
 =?us-ascii?Q?NHMnG7iQCdjAy4NBay1pJZz/dwV2cbWQhV7BGNW7inD+qhBpfWPmwzLFj+Sg?=
 =?us-ascii?Q?NpxlVo4xurXr+lZ/R2eBjLo5V0xYPnP0DmEXoehLP9BHYaDqKV38lBXl36lm?=
 =?us-ascii?Q?a9IO+sCEkjxZgL/evhW+rRpMJhQMBda0MhS6kTAjlwB738gTZ1uf1DzBCeRX?=
 =?us-ascii?Q?oiYo2KNZxlLRpwibrSp+HWaoDAa8oNC0hdpUB9uldaZRyPwR9Uoppd9ved+D?=
 =?us-ascii?Q?h8XnWtyAklAjzl96gvTR0re4DWqxGNz/TD/a9zPFVf4NjlLePlHJC5YLDvlk?=
 =?us-ascii?Q?UxSubQKg1jM4y6y0iryOD/xt6VbM0zg2B4qmACcVXlUjefS5Yg5vrGm5cp1Y?=
 =?us-ascii?Q?d3S4Tny4dnEAKLn72jdd6Vya+GJM7Q3Jt7MYQUPn53dCn0Y4vF8//tfD/0At?=
 =?us-ascii?Q?d0Z9mGYXU/yro6lcC29R5mZvCCiuvYCOAbrurpNj4TpRvBSQKiOxpvC5/MWq?=
 =?us-ascii?Q?DgprTawV9LgJGVY2vgggm6ZkmCLpSKNqg5TJDUlAqQLyQRJGQ6DNXq6XlZeg?=
 =?us-ascii?Q?feqZY5J1nCgKaHXbw/W5y7bBalyerZGx5GmIAmFaWMVrJakjdl3WwlTdjkTY?=
 =?us-ascii?Q?0INAV3jZu9gupwIrwMdtkyVHJVEgQDF/aq7Uhku4RCfnIUU+asbKmBr6i8Z2?=
 =?us-ascii?Q?03Lqs4S68Wx/3+YLO7uTpfWAgW13pru92x0qlhPSR+w9pciaKgST8XDUWeY2?=
 =?us-ascii?Q?6gd3AUG6v/0Udvf9ibx2HBR8b1XeeeHeCuZv478QH61IbYp9xX59TTAP6o9W?=
 =?us-ascii?Q?IsXoWKWY2fTzXs7GniDH6Dif0JBS05lwwh4BerqVBhxAgKyhOWCGMgIcJSzu?=
 =?us-ascii?Q?l8BJTcVO58khoEYYhMnvxjPOuUDx97WC5F9wNRsRPtE53/ftnJow9C27hye3?=
 =?us-ascii?Q?zn8IRkaWxxCn2WWD2L6/pp7uT987+oViCJ/chs3EbhpojZdfa0ZKyo6ImNVV?=
 =?us-ascii?Q?SKaxJTf2FFR49jm0M19aCAEkAmL6es+qFCcMzSzZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90ca64f7-29ec-43eb-5f59-08db2150b925
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 10:17:59.4610
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Q1CqQBmw9o6psDLJyvi+JNLLfj8EcxpvXXgW2nQAuqWWVZ99BMcOCuFbeAb537v71WItsIkJBUC73diX1jUoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7585
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add performance monitor.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

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

