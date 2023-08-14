Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC0C77B363
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 10:09:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231166AbjHNIIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 04:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233697AbjHNII1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 04:08:27 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2047.outbound.protection.outlook.com [40.107.21.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DC1119B3
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QW0jpezqaAlrCJcgyLo5eg/INNmEC54k0t2t80/IGZUIPdzegJOKqie77+O2BsH8W+bXBn8eeIbN2XeUmFEBS02DWTBgNbbVP4XTa7Humr/FBydHj4njvj3SXD1iSStRIaPDQtH0fCNz++TypK90bzQItGpLag8nPuz0HT6V9o4roIjdx3bt0+5Ob0XA9G0OKZhDoR2NtUQZtMyu2oCsK7I19aiw8eqSakGjUUiAnpy4JBtKl0z/OiFqWuSVFt2Wc7b9Ze9/j7AvwyKCPysq8CZ85yyNN+O5mZebwGlMrn/65nU1SWcqeNZzmkTWuVfPavzy8eehgXhsI9ADvRMHzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iSwQ5j5ENu2kFR1B4GaZ/An0O9mu17bmjeEIMV+KZ2o=;
 b=PwfCc5xWHgEwODDqJ0BLDV2UjCg1cIGJTiqB81tUARF8fFeU+VgFtdWVxDm8VvQS1w+lokwW26MTDoqsDZrX3XXqEePkB7m/oXaa9RYrMV45Hhga5tHUjy9+zAxT56wThzc8BLCVB/HHFeqpSKE/57opvOUwUwg+tbj/M8kPRMT+lXx3fhBCE66pge1D5yWs+9cjR+o2THQEdy6+ZPQ4drf7jZWRSpJDDcDFsyKthus2PVTcM7KVrAyfV9ESw4fQ27rKc2PlufCwOdqnqgXdSuhWCsKKSMaF1zkVovPit2NN2MPIBihWkUzHplZPIvR/cHSOmdt3DvGR0CWf+SX5cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iSwQ5j5ENu2kFR1B4GaZ/An0O9mu17bmjeEIMV+KZ2o=;
 b=gmGMxA6CH7d+OBQjFYGlpezl2rcPuetcgibet6wdGHPvUIvfFYMMKJfihDXU+TwbqyZE5vIyThmSWPvW1ZUJLjSYwhKVjalqGgA2x553RnIxKUofCE7uSHZ9PmlrQdiLJL5EcBeT3LXrWalr2a8E6ukeIxgeajNZcg4hrETVosk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DBBPR04MB7785.eurprd04.prod.outlook.com (2603:10a6:10:1e7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 08:07:42 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 08:07:42 +0000
From:   Liu Ying <victor.liu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
Subject: [PATCH 1/2] arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed regulator
Date:   Mon, 14 Aug 2023 16:11:47 +0800
Message-Id: <20230814081148.4027053-2-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20230814081148.4027053-1-victor.liu@nxp.com>
References: <20230814081148.4027053-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:4:197::22) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|DBBPR04MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: 838b8942-b6a8-46cf-602c-08db9c9d88cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PjjBq0zugRUxulBNMNL0dJZKnMnBc896+d929h63B3nh2hzKBCf7d1atHm1IWM0ydg7vqsYTYJuC+3dEkQTxdRmsqyg/wzdm/kWhY5aYxMJNp/1/qQ3w8itskHS+tQKRc+zRBogOUXLIcy23Lt5itrI81aF0fDDs4YAY3/Skhn9928maka2w3FBgoHD3GWaJQGui8NvAUa+BdKRPmKhgauXFIi3VgU3JPMNUoZgZjNZkYjOG8Vr4z42lxlmXJCoDC11VDKX3SF9gttKOWXEBs3MASOgb2NGvpWQrJnb6vcaUQvMS5jrr2jFlefL/FOBbKMcl8paLQl6+pVeo3UwB/n9UAxtZhHmcWKpa7FZEcZzZAVxPVLWGapmyfkhHjK/XucsdBb3mpRmzCCt77qMKAOYYdG2JUG6d53EbdeYkSkjY798pZt5UlwIM8eXTvahjm54qUFV+HvA+rQK065mGBp/hjz8Vd6eCHR1pcjkPuO4E8CG1cC9bYiHfKhS7bSmWQlKlk3ti0SN2qE6qNiiHHUnIJQIUdyVhPt+z7Dl2OyBJwdQ6Sj7L0BiPvBgFXax53EHojrDcRjWaR7m0iJ4mrVEzEULXxkuTDFHG0KKB39zGi4+1N+UrItlM87wsFIsydtEHy4Vl7DJ6oakhLq3/LQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(346002)(39860400002)(366004)(136003)(376002)(186006)(451199021)(1800799006)(26005)(1076003)(6506007)(6512007)(36756003)(86362001)(38100700002)(38350700002)(316002)(2616005)(4744005)(478600001)(66556008)(66476007)(66946007)(8936002)(5660300002)(41300700001)(8676002)(52116002)(6486002)(2906002)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IDHVTdKMnOgVMsK4Zy4C9X8aoV37LjTvZxYCoXJkDeRBj7p7EXOp9f7r7ZXK?=
 =?us-ascii?Q?2z5rvB8xSacfD+Zpp8z3fFgXHRbM/ygTnLiyobsfXov79Gj9CY21jaRhxpJj?=
 =?us-ascii?Q?pXy2ES0qJiWDBdg2xbDU92M0MA7hjzzT4i4hskxJCxSJYm/l4hj4BdadtF0j?=
 =?us-ascii?Q?l/AVklWKPIQowL8iVmO9jrYZ3Nq0t1gycXkBLvyWdeJPEDMW0bSD3EB6qdfm?=
 =?us-ascii?Q?fRvfCEJsIGKpAnsVTtqMlxtYtKb1Tefy9v2UvaZALi8cblrA+QBuou55zH+Q?=
 =?us-ascii?Q?6/5KXPAgnvtOcCtlZkJlAzNI5AwhGADoZ+hV/Iywg9XytBuSqOtyxZ0M8t8S?=
 =?us-ascii?Q?F4bo6j/A9n0sroGdb/MTYjUTxcv/ST4aqKpwXmNX90rMlgL3xnMMLXNsy2rT?=
 =?us-ascii?Q?mCt6GadySeJaVsONx7ZUcc1TiwhHbf38pch3OnQxKAwSZanmx9CkjDA1vRlC?=
 =?us-ascii?Q?K/Hbs3kURb5d/gjrls2pBNQVDmYxwkVDgnDaVVhW2p9WGB2fnraQXHDO/RmH?=
 =?us-ascii?Q?pD63I5N9sVbX0HM9ZTkVQdPDDq7jo/DCQv1EsKc4xfeecbGYZeBsrM/jpxf8?=
 =?us-ascii?Q?Cf19EhqSWJnKueQFHPri5HUb0gywqD86BdQ3jwIUThJUPrbrStDGV84J9/nw?=
 =?us-ascii?Q?9LMDhl6xBw8N7oZf/SPu6HrhovTYznToO2ArRBSCXTCMqWb+NWUdO6+ykNHG?=
 =?us-ascii?Q?3pCbC7Vz7GqSjli9GvURCk3lhljkPRQABBEki7hTh5e8qF3ELpdM+5wxHpHp?=
 =?us-ascii?Q?OSc1kTtM1CJK0ckWcWefBk4QGlI/yzHjtY0cfXQO4R2JWY84uk4fpQJ/L+OU?=
 =?us-ascii?Q?k2hggljr7hadrO71YgJjyGG2HjdvvwSiNf9Ksw1fSVpVp8ZHbj18jG9KS0KS?=
 =?us-ascii?Q?SMH3pgzotjxDxSnsD57w8zTgHJw5+TA9Sc/RcZDDMbtglIHfynwQEHKDr3x2?=
 =?us-ascii?Q?1sa07mUMBHL8hZKJnaW+Z1rpKwWl/pEUxg05IbVSl53lOTn631MR/JCXuTB5?=
 =?us-ascii?Q?6SIC0q0qi0xPMG/zN09en6DiKP/KUM4PthW8nf/MxoXL6XoXQKLaic1wKo9W?=
 =?us-ascii?Q?BWBlIgHo6r7z36jW4a/KP6PSXZ8RU4NorwyMqbh04KdorSqaklXEg65keWiU?=
 =?us-ascii?Q?xtYh6RLVU7rniVOKI3QRELX1R9/JEcq05d6vq5v3DIPyd7VylrwdjYDHwPY3?=
 =?us-ascii?Q?NrDL3x+iDSAIWQNUqZ6wXKqUgJRPVz8P5/GTuEmwDAgfOp9D71zDyQJ0kX9x?=
 =?us-ascii?Q?mSiu/MCvQDqkr8HtbZPMo8lNyRn/fI5M+8sTuGrih0ks58IlFGxWi54tfsVb?=
 =?us-ascii?Q?Fm8vXGAkm2nCT+brb+uDaPJ0zTzKlfqqAxLi6ViAFzFCCC5GiX48ycqNZoKk?=
 =?us-ascii?Q?oGzdOH8UMIK1aXQ1SQk8x9GffV500QNGaUA8cvEjtxU7gBe5yHI/EFHPxNaj?=
 =?us-ascii?Q?awWTPbSEafZ+XM8ANzlE0MbtEmVuWEsm4F5pv4WpHkCzDMrqZbVAwvmRnXAA?=
 =?us-ascii?Q?FRmUViAnUFs85Yzy7horrhGOSPZFi0eLHrx8EpKgIM1FFV6F4QW6tnIo1ZGm?=
 =?us-ascii?Q?ZXgM8zs8c6DlcKFFtYIZ99U3K0Vivk96IwuDQUw5?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 838b8942-b6a8-46cf-602c-08db9c9d88cd
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 08:07:42.5686
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C83cqjCGNA3FvHUcG6RHR+CxjnvrezbnSiIAz8u/1QtEMlzaFrCSC8SWbY4p5mCaxCFPefA31bQ40oyz28svXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7785
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VDDEXT_3V3 fixed regulator supplies 3.3v power for MIPI CSI/DSI
through mini-SAS connector and M.2 PCIe according to board schematic,
so add the fixed regulator support.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index df8e808ac473..7cd1cedfa9e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -72,6 +72,13 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		enable-active-high;
 	};
 
+	reg_vddext_3v3: regulator-vddext-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDEXT_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm1 0 5000000 0>;
-- 
2.37.1

