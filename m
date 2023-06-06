Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114A47236FC
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 07:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231178AbjFFF6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 01:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbjFFF6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 01:58:11 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2074.outbound.protection.outlook.com [40.107.7.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A9911B
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 22:58:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YoaPrmpRqOhnSGlueuik3h+fYpLhNxsfJBFVTafXy4PiMaGiBdTyTZxfgJov2zQJMcwET2h8fa9DJL35nJJxrn9pEJzU7TDZSU1gjE3ZSUgWXt+8iG3wtgtosjRWYYzMCat5KLDelDVjzk5ShZsE5mBxBu+Mmu9xpMKPTqfMfQJyHeT9+PqD73RfwsHGd8JB2dpBVhGiZaqdV+m3OHFZjQR4IXUynsdRAgloIF8tUR88tBuyP1vaP96lHG5AIomqO0WhVrXGlsHnd+Cay+KdzdyO+IU+2OhU/ynRXWC+jg4/lquAyLTCSrkbhLJ1ORvCYayKyJfkfXxTxxPJlOcWHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbcbmylVxV80sb/FTJvR8cOsJXkUnyQhtIbQ6PXf8TY=;
 b=KKBr318hCDNXzyU5SvQtLETZOgajc3BDSb0wnksKyS2kqXmWiZVywyIgactLD/DqZI34A+LK8xCI6PmlHyxdqbqnnvq1gTuK4bloXU2Rs5QOp1KH6kTzETwWRseIqMLD8XEetazvoUgK6iEKHS2/fLObaVp5bASswlvYIQag9OR/O51BaLSR1/zc90VcjV5ccqBkZWBLmdW/0t5M8N3SzB5MiFl2avyZO+wpQ7BiwxWBiGol4ExfbfpkGS1q98JXCHX/3DyRbRYjfKuTxlPNxTIrA2whhSyV8gQHHJJbnb2CFq1yU7utKxXo5QWIN4rRqS8FzD8LZYxmt4IdzvSMkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbcbmylVxV80sb/FTJvR8cOsJXkUnyQhtIbQ6PXf8TY=;
 b=RDA6pcr1lRGed/fBNkh4tRBBbxCz2eoh3vdh4f0RpCLieqluVl7t+hQpbRBvTU2yAyktEmKDTZtu+ZncUfbgYlxm3n7kf/VKauynib86oryLAo5o9n13ylPiSMtWW0kwGP9AqElej5rAVN9uC8QMOuxst8WdMWZlhkH2UFHXUrI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 DBBPR04MB7675.eurprd04.prod.outlook.com (2603:10a6:10:207::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Tue, 6 Jun 2023 05:58:06 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::f9b0:8c34:e57:92a4%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 05:58:06 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org
Cc:     conor+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, xu.yang_2@nxp.com,
        jun.li@nxp.com
Subject: [PATCH] ARM: dts: imx6sll: fix wrong property name in usbphy node
Date:   Tue,  6 Jun 2023 14:01:06 +0800
Message-Id: <20230606060106.2948626-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0008.apcprd02.prod.outlook.com
 (2603:1096:4:194::12) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|DBBPR04MB7675:EE_
X-MS-Office365-Filtering-Correlation-Id: 512b5f33-7361-46bf-86d9-08db6652ff3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p5GSnfysNu76n6DeRe2m1OlJVCfkYy0WSd+6fq3BKlQh0w4Jw1c67Tu+YEE3nF47nYMMzvGI/QzlhQrldA+89dMoepg8EFP8RkzHAAy3DgCvbmC6OJ4HY95R1ZyemXGD/pWdUJUuYznJGIPGYOeGKxP2TzRsPPK5YFlJMAEH5L1BMhzqc1tSqz0unwzAe/2QoF6vQ57h0weGDwKklMtdXtAhz0fgE0X6dsGgOhjj0ib3GfozMmIShoNKgwY8HqJb5cSM1l+ubuwLZyXSLEpU2eRI+rULzUh69XvHfR7CSco1+hIQEiujrJ5iYqFXQjTqMBk4HuznTvDZDt4RWJeIlcqHrmaFa2EZubmE/QzF9deAfnKbhdgauyQILFOJSLdOPcys5lSkUU9v8lIuJb0w0ae4jZysRY2z35wje9ZRZqcTgsKVRCEQ4tbYqPI2cpZ52rsfYlzmFDejCLMctzf+AGHlTD+zQ/HF/6+YA4+37xCiKUJ7q/UfqIWKrjGsyckIgg+RFsXv0jJ11ZiLM3FJjX3DXHA6BOYkGGn/2mrfxMkcxfoWgSgZx5ZZeRjj0SJVzAv6+GrPxGeuOMY3N4rapPKg/Gb9eRDbuQgtezelZly4N+WeNt944t6wZxJxsvkgmClb9MHCW1nu7zuOLx5XfA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(451199021)(8936002)(8676002)(478600001)(41300700001)(52116002)(5660300002)(6506007)(316002)(6486002)(1076003)(26005)(4326008)(66556008)(66476007)(66946007)(6512007)(2616005)(186003)(83380400001)(2906002)(4744005)(38350700002)(38100700002)(86362001)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VID10Bj00+yH7mwFJ6Slaj7JR/4xXH0S+AO0WmgSkQtZo35cy3Cq+mrfa/ty?=
 =?us-ascii?Q?0iKRrlxKNMRYwKeceYSJk6kNutM9Z8lG434BFOF+/UlphcriTGL5GkR5lnRz?=
 =?us-ascii?Q?yid3csrmbHxuTzMyCpEs9uVTZBFIfqTxjpi/rt16w59Rgg5L4yp7Hefkf7s7?=
 =?us-ascii?Q?gO5Akv8yh6zxGMnjcTCU04tdeF0k3Y1r6OHpny6Kzf1AXWInFBNMNTU6vlBs?=
 =?us-ascii?Q?Re2HqO7kGNxwgLN8Id6Ju9H+7tjxBcAG/XEcJhRhsQhdruIrmQOaogFzqexu?=
 =?us-ascii?Q?y3V9ivEWYSZ6kifOqVCU3Kcpo1++pSo1ImLJqwT6xBtxJFaXtUFE8q9EXywU?=
 =?us-ascii?Q?pmGjY403V3WwkBEVxznL200OpZMDqq/QEs0X2H8/wrUMQOVrOk8ZQPLw6aTd?=
 =?us-ascii?Q?1SQm22hmKFmRz9RMum1ZhNB04ZJZFv0hRsULCE1Oh3ncsuaEeHInhCSdTqNH?=
 =?us-ascii?Q?gWHFkkbOxepS/Pgap40r+Zv8rvfZbBtsziWBNPTFCPbJEA/38l8CLRRxPgz9?=
 =?us-ascii?Q?bCRRPMZnmm1RXlmlXFkQuOiG5gRvAt5Wpp9IXBl/earHxQJpVCCNbYCTzGTa?=
 =?us-ascii?Q?qCCJu19Khs2zfQvijOWosE9VHgdtrnm8mCU+qb73MNTkgx88FwJGxYmnBNGW?=
 =?us-ascii?Q?HW80+qcku5EBu8SDDE+yjKkgn2gxaHnwUn38TpkAer+YvqG5n0sbBrxm0CG8?=
 =?us-ascii?Q?ESY+xE3DvAQNuBJlugnfGVsK8XkiHXkCr3Qb+ib+dnKJEdf0qz1gj3FBxtQ/?=
 =?us-ascii?Q?dZxyhLKsJysNfVabrZHo4HLL5H3uP60LTQXKKrFTNe9H2XMjYn+Vnnu4FCOy?=
 =?us-ascii?Q?btzCc76PEKEDo6ZHYAsg5/agBVhKsovu6Vw4rwV2oRzgnghnEyPjH8dZP1zn?=
 =?us-ascii?Q?0oRG/EXc6SR/FjZbS5b/rSJ3xGxFLkv/c4QFyfmZx3Y/jaykgegk737utA+w?=
 =?us-ascii?Q?U/hXCMqX5BlEZr31WynWNEtj5bXaVtXD/nfYSpc+nbfbsLI/Xmw2QImIY1Dr?=
 =?us-ascii?Q?p7VZ+lmHu98Pisz9RrYu/hE6dm9H0Qanr4yu8tGSDZr7+fyf96XLdimIcScX?=
 =?us-ascii?Q?k+ARykaDJtZZN6b+NwgYasFmj2oR75/nQNRH5Sm7h7diVW3E6VVfrFO48xLi?=
 =?us-ascii?Q?xNUAJ5oQ3gQLpHl6h6HodoXaXTSeZ2RFT7n625AAXZpVG4Z7NILCcUafLKeD?=
 =?us-ascii?Q?OO1QouMYDyjUILoTw9HBQG/sW4YzB2k7e0Vk5iqF34I+R89qD4wkinZoFJSF?=
 =?us-ascii?Q?ldKpL4Joo6ogluUjq4Wvr6Ju/ALwcRukKsn8XNdIItfJvODHRIp7NBWVQ70F?=
 =?us-ascii?Q?h/QkVvIISwHfoW103qGV8QJJtCoyv/ia4w7+y9XURI9VeAkqkq+m5v5euyLd?=
 =?us-ascii?Q?winQVzwmaxPGve3y4p4GqmcfqGy7r6STA5JLje4NONmx3aBbit+39G2Vu5nr?=
 =?us-ascii?Q?HnDEH4HrBYqYCyQdabXvEmhx9SSEQasdpmFPXS9OYMAKWEewhzd+NFgsTdav?=
 =?us-ascii?Q?R1Vlpo0SYIoYiUpFQ0XccaRWUAFJhS99lWBvjMTdGUwuBiOJQvrB6s3yow/B?=
 =?us-ascii?Q?1AquxFbDI7Tve9Eo60vuAeAtUu4csUE02ZNO4W2d?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 512b5f33-7361-46bf-86d9-08db6652ff3e
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 05:58:06.2154
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7y/dLsMvgyOONpzbXO+jbXEvo9ZwhZgSTsLcfoRTTH2J75Cnoy5Wgl69J6Qth4CL2A+CIUo4mA7ADLdpk3FY5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7675
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property name "phy-3p0-supply" is used instead of "phy-reg_3p0-supply".

Fixes: 9f30b6b1a957 ("ARM: dts: imx: Add basic dtsi file for imx6sll")
cc: <stable@vger.kernel.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm/boot/dts/imx6sll.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index 2873369a57c0..3659fd5ecfa6 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -552,7 +552,7 @@ usbphy2: usb-phy@20ca000 {
 				reg = <0x020ca000 0x1000>;
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_USBPHY2>;
-				phy-reg_3p0-supply = <&reg_3p0>;
+				phy-3p0-supply = <&reg_3p0>;
 				fsl,anatop = <&anatop>;
 			};
 
-- 
2.34.1

