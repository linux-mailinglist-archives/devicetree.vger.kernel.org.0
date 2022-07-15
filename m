Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A199A576A74
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 01:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231124AbiGOXNR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 19:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231977AbiGOXNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 19:13:12 -0400
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00065.outbound.protection.outlook.com [40.107.0.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7617D1DB
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 16:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hER0s+SM1evLBv84jEJ0rieyJ+rWyq7FL3CLVm+VamMTWx6IaUYxkMfwgXDlHvD7yHgygOhYmWnz3+KQ/ETWGref4cOTqZHt41M0u0bAT8bPrhHNzXTFSfAxuzLBkFsjFTFDpns99L2TZweZf0F27ayMXwShuTz3Jb4Z8zkEdIDMY4AzjkEdgLyDqiwADb6B6dM3yHCLv+hMHwLMqIhF/Hf1Au2C4muriunP02eQnbmGGa3vCi80sMdLyhwJnDaJC6E21IXJ/ucU96eQxNnmH761DOyNuU6lQIFL7wAwOCIGykvFgwmu8c8gbkeJ8IuBAWOh7/G32VF2yIs9+KW4jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPZcrb7n8f5opy5GrKcrRnnFdfBuq1/FxlfL3y2sDXQ=;
 b=Gf6FGF02GlAv2gpfXg1+BdYSCX6+vqWI/Haaw1OiGjnblYup7vzv9muEB3rRqYzbZaMxeDhuIEfUQHJlDxQP/GTrbbaTP2o0eSBrjvXATyEoMnb6AqqRudQzzQxASch45luUqnNR2nJycZxBD3oA8HymOUQjJJ8a7728RwG4UABDjqcJ/NBZMjQNq88PPhWugJRnIm2OvIxC/wqiLYXus1Vu1n6EE/Ve8fpFWzFjHzW3O5mHo1OrrfCj+klL/BNcRqWVPBUXO69UuBJRmwrGjeldiRjM/SvbLPkLcK/yu9GNftmjgk0fjOjYImg/aDVt0ni3PIin/qZBJZHUPtBIdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPZcrb7n8f5opy5GrKcrRnnFdfBuq1/FxlfL3y2sDXQ=;
 b=ErNDuwj19Bdt2HgqXbycN7LDt0M8s6kWS1LxaWAHwJUIxgBn9e/TB4N7pgdd3qjxplScIkOCIyZZctxIwEACcQO72vdugEUrC2g0xRuFfwso+8OB0mBtanyrMHf/DsHYraigc+gqDpV6f4IwhNMD0e+5UtZCEHvH82CJQ23ydcM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DBBPR04MB6156.eurprd04.prod.outlook.com (2603:10a6:10:cd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.16; Fri, 15 Jul
 2022 23:13:07 +0000
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
        Shenwei Wang <shenwei.wang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v3 2/3] dt-bindings: arm: imx: update fsl.yaml for imx8dxl
Date:   Fri, 15 Jul 2022 18:12:40 -0500
Message-Id: <20220715231241.346778-3-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220715231241.346778-1-shenwei.wang@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DM6PR10CA0024.namprd10.prod.outlook.com
 (2603:10b6:5:60::37) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3840654c-cdbc-428f-8021-08da66b79368
X-MS-TrafficTypeDiagnostic: DBBPR04MB6156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WnHzBnazeq9nOuHfnuFQQpiAjubttML51EDZbGxz6hiUSj6Lla23M90nSOFVl4Rm3GKX2PiCI7w9a6Vs/T8VNAwkWyCFqMaW2nwb8eZr+ggPMIM0I/Ybbeefuv9IQZzuWIB2OSyRqi8lw3p+zuwL75HW8y81992LqpkMhuFmzrcNDqFZcuMvO8MTy6DIhXgu3vzxqVlFZ1heXmHwbHLT3y7SOwS1rAOQjt5e6iMN6RjOkiiuWDciVOUWWYUQAT+NGlM3suHNXJ1CtMbw16QQXcjF1NJOVrvZGH9Y/Of7rYskIXv2rHGLgADgQni5kdh7GrA2xgPfLkj6BKuj3ZxoToqOuA/NfC9CImQMv1HfV8jKezL92LcyySncCz13NwfMX7FNaRKTTRUE3Um5PKQcYSKMYFxMaJGWHU5C/UBsTf1udGPVqLLcPVscseHsgVTEVHstM1UoBHsry7REcp7NuCSPDGDSBCOf+afP+XqUpgBsh2IfuJzC/sjZYzUQhBJsTPZag71LOUU98TFQjoqI+HeSxlA3ty9kMb5ikU1D2ear8M/EIACnYF/PgFfZxvpvMVhiX9P6kPU/t2flYuJrxxt+gYX6Qg+EwKDLH6CMPrrytqG72wG2qyxtSFZ3nhEuXlIKodgWUim9F1iYsmclstfZkV/JP8RTtmJZrQAfEKU45Yu87iOoKs8jj11edXXjAeh4J+0yTjyNpiUTJXKqDN8AEh8j8fk9MptJhMUuwL2dgMujV4RfGAYqWHmR6puTjIXF921lEm456m6c3HIfieatN1bY99W8oVXS6H/GWDRurCMXMdweJL/hbVqkGhOc2Th3vyKhzlI3hUOkPb3AqZfKhi5yUEqycmBoSbZGwzU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(26005)(6512007)(4744005)(1076003)(6506007)(6666004)(55236004)(8936002)(52116002)(186003)(2616005)(41300700001)(86362001)(2906002)(6486002)(5660300002)(478600001)(54906003)(110136005)(38100700002)(316002)(6636002)(38350700002)(8676002)(66946007)(4326008)(66476007)(66556008)(36756003)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3PozxtavzNhfChM5+67HYCXwoKVys8R1IkfyHHjwAPnlJ/cJNYbAkGGmKG3a?=
 =?us-ascii?Q?VRNUGRKUE3uR220WmZTnAFVpVz4X7l30uOhj4TkB36lDHhMrasEpLMJ8JSVt?=
 =?us-ascii?Q?rofc6AKsSyyf4qriL8hCJvN5cyKi38QxG3wlZR3Q+wX6aa2gdXnkB5h4Juy6?=
 =?us-ascii?Q?dpp2b8DnIDuf6UnSvig1gSiqCXn59v86bT0sVuOKlMtFcTi1wfWKAUUuXKr4?=
 =?us-ascii?Q?4UegOKJHAsRNQ5CZdgln61xr9Hm7TwZRtzUWmU+6ZP6AsGxCUuNZfTZRGC2I?=
 =?us-ascii?Q?jUyKY32gfaRGgeEQLv49wrxRk/Ho0OSXJfVsO5GaWYvL9zwXQ+WKU4PgWH7A?=
 =?us-ascii?Q?X4KqFRM1GsWpLNrFX2blWlZvGD4CI4J1IdhCbGttrGETo9frpa5bJe9JyGeb?=
 =?us-ascii?Q?kkZVEkfW9y26oqIeUBvmHaoYr25G28AodZctYlSxJywe75JfpeDmE25/k5+b?=
 =?us-ascii?Q?/naFpC1J3CJLmNuq7XtKtOEKbHOk6e7M/1Be81O4g+qick6ZUp63jwa3kzn7?=
 =?us-ascii?Q?2a32JVpM69Zw0DrEjiXtZYhBb0CtUXPIE1sh9/RrI/4v0DpkcPA1/gjU/fmV?=
 =?us-ascii?Q?ABfRTDD2F5+AJFXA+RVriM50n2KT9zW/hdMs5wBct0aTztg0fuBiAzHhdlIt?=
 =?us-ascii?Q?DPBee+13WsvFC+likoTynxgmG4y8Mqfp+tDestFzyV9U0aC58wcPCtYRwkCJ?=
 =?us-ascii?Q?LzzHfvw8awxTnhBGWX//k8oLMRc0GQG7tkVslKJ8v+fLYcAC9GNIy2CsWtu7?=
 =?us-ascii?Q?ichwYW3YelI52HEypFY/TXOCwNDCURfRLIDqmmMzio2JvfiO5gbXlTY+Y8aN?=
 =?us-ascii?Q?t7tYSECbhUvJMQAGkoDSaLcQVcUIgluplnjQAkkad/js1Dx85nI1JDGXozTL?=
 =?us-ascii?Q?ZpjYEw9RucsXzjUS9h3UAH/DsjCFXKlK1fTgQu95sMubK5loek2T1vqf91im?=
 =?us-ascii?Q?3ynTK9mjNtQwWQcEzExTrGiQJ5WGdZR2vDCO92SnR9Y+8nNMSDtBf1Bnh7DZ?=
 =?us-ascii?Q?sQysvHb6syFJKoeVTVbzYpuEUfYpGXiqVfT/hBWNvKHzKshs4ZxynZt6U2Bl?=
 =?us-ascii?Q?QuG99HuE22irQGU0DNUp2/UewwKwQisCmIW7Oaap2t6HGJG49WCxxwrsmUuc?=
 =?us-ascii?Q?+RwE/v3DDjYF4IdZ5g+e8riPAA0ojYqmsGRFdrFiiyCwSIhcLgaRHdry4lgy?=
 =?us-ascii?Q?pIV8fD3Z7iqiX1WTyynqAa3N+XCFuWiHQI1gCQ2EWjt4tPEH8XngrEcZZ9sU?=
 =?us-ascii?Q?sFq1VAqcyMdV6w9nGVW3iDg81MCXmRTKVoeVgLOHL9VuUx11+Cl46VarF5rO?=
 =?us-ascii?Q?49W48Je/I2Tlgoz2fMyZyu30CXhXTL2+ZMf4Cr0oo2G05+zhC9nogVf5ftY7?=
 =?us-ascii?Q?fHY6jagexaLbYOlS9P/b8lBNXkKOMbI9ZV5P75ivIBJYeo+CBNnIpGppnfLo?=
 =?us-ascii?Q?IozfAh6Y/U4eGKtlIRSJcfH0ol9lIjuP0E1phoi2KenLjgEbuViib+uxcTsL?=
 =?us-ascii?Q?UerSFFtwF0B4Bb1Dr2VzrS7ZaucDN8miM7nWmZlwLq+A8PZcwkD5haYgEpeU?=
 =?us-ascii?Q?Ljq/Fk3Oro8HYMHhwo2OJOD5nbDICXbSWJpewx8F?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3840654c-cdbc-428f-8021-08da66b79368
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 23:13:06.5431
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mClomBICVpkFLVBTS6JGQ8H0kBZ54a2HoHb929MPDKLnC3h5rP6kUO9vRr2F7fZmO/TqloSgh/CqwzwKaMXyuQ==
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

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e85..26bef585b97aa 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1034,6 +1034,12 @@ properties:
               - toradex,colibri-imx8x     # Colibri iMX8X Modules
           - const: fsl,imx8qxp
 
+      - description: i.MX8DXL based Boards
+        items:
+          - enum:
+              - fsl,imx8dxl-evk           # i.MX8QXP EVK Board
+          - const: fsl,imx8dxl
+
       - description: i.MX8QXP Boards with Toradex Coilbri iMX8X Modules
         items:
           - enum:
-- 
2.25.1

