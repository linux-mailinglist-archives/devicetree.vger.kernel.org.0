Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4ED5871ED
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 22:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232733AbiHAUBq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 16:01:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230229AbiHAUBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 16:01:45 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2073.outbound.protection.outlook.com [40.107.22.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9980BC7E
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 13:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=daQCA978QSRmuvdFVrsc8aOViJkidCBkt1xur7idtGxe069bgDZBWky8I24dxuI7AVb34BWotEJHIRSLZNzlwQ7XLEMxl++YS6ekA0FA0S0HCwsd9AEss1XTZFoKtux1A/3G5QFqAuPhp34uMulGUFniyfSOeFNHAHuj6PQpmOqxgeCg6wjw4SO5BEEM0jUNmYgTfnusf7VoSMP7i77M3fqdAbas2GM3DYDT47/7EcIc4vKd+HgIHvil/8WMTHe3So76yP1RLXPgMOAI46iGkSwMNAnryO5gIXanrimSbZ7MmZizXkLxwO0odsZcQcU9RCbtO4rFb5JzNgs6QCKZkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdJ/0sOjFi41JRG0tPG8fXVUXslaZ+J4tcHnCfor6v0=;
 b=CakSI03YNIcr5de6hICGgWN6gjZ4rB5Z6CC2Pr0KFJv25x7MsRLSl2BolCCujiVAjvtgPTiKcZlU1qCbVIxlekXvJ6NnhVd4e9ZMuIrO9qCJF+LV8GS/z4YTMYHrI02INIJuVttrtVmyVmynQOuyTIDkQVagpurQIKxQTtNq0GbSYLsOQpx1cPobrRp/eWlxTbE8uZfcvx+Gys+dBldzadiAzKju/N7FS8xwJFo7wrIx1K0WFI/m84DAriXAFB4cb2K85xpkyQ9adYWjXqr4nWk4mVrtig9wZ5cVViLDFLMP5Z8InfSsCJCC//2yYS0Rdrk5UBkwnX/D+GX6gRhAZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdJ/0sOjFi41JRG0tPG8fXVUXslaZ+J4tcHnCfor6v0=;
 b=cGRTKfeuas/iTao8L4ButuhfELMotPBkTDY13zg3EedDcQohxmX4LdpmhdxFoiYI+6c0eM1j9OBtQOVjNrySDwDMEnrINekRPUAdKqqKm+t02dg9KXRwFJ6W7bpE6OTSUT6h1VZb53B3A+sFACg3JF8/3L+NlvOADc42aUwstvE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM0PR04MB6516.eurprd04.prod.outlook.com (2603:10a6:208:174::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.16; Mon, 1 Aug
 2022 20:01:40 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::747c:397f:a003:dbca%4]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 20:01:40 +0000
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
Subject: [PATCH v5 2/3] dt-bindings: arm: imx: update fsl.yaml for imx8dxl
Date:   Mon,  1 Aug 2022 15:01:20 -0500
Message-Id: <20220801200121.672619-3-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220801200121.672619-1-shenwei.wang@nxp.com>
References: <20220801200121.672619-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0078.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::19) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 768892f2-df4c-4016-d93b-08da73f8a655
X-MS-TrafficTypeDiagnostic: AM0PR04MB6516:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ex3ApbnsnEyKaN3J69PAvLpp1GXmNgYnVCa4BU5WK2P+6Gz+HI445hbWT+1QLPfHXPUHWrcXsi7cgq836tZcJxhM2XRpdiMqUb8PnJuMIyProng5LUvyPTUXsQo7PGPGYH6cRUyMDB3Go20i+6KD0ukJ+8O/p2OSJ9rU97dhNlQUIVGIstsb1Y28P2duXoojqBw66AFnQViY+68dE/GnbMjgmsqiuF/NCm0/HLyxisp0SvIgs/Gn7CJsnKWl30UqwBhwDMR/W408kTFQA2LPrWmXgzKDsBFSS66PfvRHDyfukFzilj/hC7FoFt96KOPtSKCGycQ+4kY0AzdiNdtji0pTkqEifuVjHRKSY0rphZm5fF2jK8Be3hG+LEsGGH2DqmxiqX3MFxiZfMIOl9tw/qcyf4C7BbN9ekdvV8oJnq69RLLB1i2PRi+gU5qm2NxKFoc0q3/LiX5XPNMMjztuQSy9GZZKbuikyWlxQjpq3kqDvkVi9bPBAwkR0/ilApl3M9pW0AlsNfxhjlX2V6bSC0v5xiKcYtlEWPSv49kDxa81qm5WZlS1LXrB5RZfVt0JlMzRZtr6AjrvxG4ZDIabnBumG9pMcv5KGrvMY+MRfoUMzY0djWeRZidNK3/1NEAmVtHMgu/87muegF4D37QepX183ajImmcFFt7HyiTeovvBlLmtbMHnQH3tYX3198XwWoXAQnP+a4tML19X9GEOEF+vPWIR+tCoGUCXKyVPDwF3hVpCtuaY3z9+WwYhHZOpsC5DcsFRsM6R7Bi6nIc/gpfYkeSs4fAGGlNb1M12vqaNaXe/MYIZsJvBSsWULQgh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(6666004)(6506007)(52116002)(41300700001)(26005)(6512007)(2616005)(186003)(55236004)(38350700002)(1076003)(38100700002)(4744005)(5660300002)(44832011)(8936002)(36756003)(478600001)(86362001)(6486002)(2906002)(4326008)(8676002)(66946007)(66556008)(66476007)(316002)(54906003)(110136005)(6636002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wi1ry1TWy5OsIN0br7qRDUEft2RmJHCEKCBHJ7B8ZcYjS+uWst6g8/TDQMO8?=
 =?us-ascii?Q?gZ/9+UnAwxNdmUL201uzz3tXk30bOUyEtdCiIXr8yubv/f7/UWGpncZ4yQJL?=
 =?us-ascii?Q?jI1dmlAL/TV2C9Tvs7EuUn9H9vNA+FmnToZei5PBXAmieKSH7sOF8wwKJN4H?=
 =?us-ascii?Q?e7fr1SJHpfW1edw0nSjaUFKyNPjcg7U+gwsMdGrnEh9AmyBa+nbi3RDjoRHj?=
 =?us-ascii?Q?vbiErE6vOj7+GgboazZ2AkzHt7yPgQYKnHccavpfOHVnZWfXpm6iLfk5dXxF?=
 =?us-ascii?Q?9yborAofH83aGInaUqZi6uKhY49vu4A2KtP0Ga0d1AOzh8MX5zKyKA9VY1p0?=
 =?us-ascii?Q?axcMQRPGa/JrW/2mNjHG0P3t7aHGFvyB5Eh3wslCZNeIMuzapJX2M+Jd3lKX?=
 =?us-ascii?Q?iXV6BVGc5r/5NSPyqvg6krlOKESlT7LA7lDyD5eAV2PeMe6Kd8s5sQR/4Wrk?=
 =?us-ascii?Q?jS40xj+QolA6dtBUnrE4iGL/gsVRIbbIBU8X7W7pOELIdWY0Z1Ej/rJ9LfvF?=
 =?us-ascii?Q?x1nNpwFJ0PRwd7rDGSJoGSLHDCGuuS9MQMonFzFl5q5Zv0pY39Q/9mkveIS+?=
 =?us-ascii?Q?Rm3Atzahl0PLM0R8AAXZtAzkVqCJzgwYx0AJ4kZL5ULChew99OHCx2EDan04?=
 =?us-ascii?Q?XzeekFZKRrEtl7GfLwiGj+bYPAvkie5qst3TZYo/FrEOfb6dCDvMaOmeaYmD?=
 =?us-ascii?Q?pkT0U/FFEuhMj6OEppuibDZzOx+rznS+ISGmzxLmQgAr2dBkUWEeb6+oY8Xt?=
 =?us-ascii?Q?tR7tArOlbzOLWy1RbibAkwA0+yetL+9eNbLi4ItFze0bUCI9BES0xoOoOrLW?=
 =?us-ascii?Q?9IldV7s0upoPllo6xZcFU6bkrlscLZeOlOzyy9+E7NYiIgESmYF9bAudTqMx?=
 =?us-ascii?Q?zSYlUkyZsa/vc3t1v+cxW6P9YDLafwlFtkSXY6QWOe/9VOuyE7WWkd86On8O?=
 =?us-ascii?Q?Vo2XG1tz3VGUrF9XkFCBHPGPIAcLYjxHgAU5ptolMWafs5CITcXbWMJZILMl?=
 =?us-ascii?Q?SJ68QI3z2rbgL/z+zGKuQNsrHNbb+1rlO9BO2+4qfvNby+2henXYCRgy7QKM?=
 =?us-ascii?Q?VEhyV/lAiBVVEpoKGhIU/eUtm2ja6ejzeiDPGJyzUybxT6qz1jIk3IwFExE4?=
 =?us-ascii?Q?fHxYVFODVBBR7vBUHD8Yw2rhdYBAg3jXhBLjds5P8HokO+blFaDoIDFoDHWb?=
 =?us-ascii?Q?m+7M4EX5ZCj9PKa6l/MCYZLnwXug8HCnL5aA6n/rwBVTryXFw0v74Wf7T53A?=
 =?us-ascii?Q?aWPEvfoHlEeDuDN+GWth08dL6snaEe+HtJtZ8FGFMGQANs5Wr6sZOAb4B9AK?=
 =?us-ascii?Q?PhLeSWAyrViHzdLzVCmqLJQOqzilaSL+/mN5lFKaw15mc9llyu5jyrw+Nc54?=
 =?us-ascii?Q?YyzOGT4YyxqJu/taLZa0xMlNARJ9r1T4dtKx7cCbH3evmFXaklfPQQW+fCLp?=
 =?us-ascii?Q?dW2gTgnVFp12lIPtE74xrAa/BdXPJxv4NTuiVlKpU4NjmOgS1mmI9mbBrkqW?=
 =?us-ascii?Q?zdtRw3zrmjENSMDo2aWf6ItzGBlg+zVr8LiKzwbRrLCmhjEdkCVzcbmpxlv5?=
 =?us-ascii?Q?Ad84AiISYtfAOfhoYU3RPH7hk0Qy+dQNKvcvS4sd?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 768892f2-df4c-4016-d93b-08da73f8a655
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 20:01:40.7011
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iEnZ4a7VsRsJKbxJX7FBsBYoGuUkvnf8a+4VcKp3V06mvoUrXt06nsdGur5vSdveKO4Mkhd7WPlhOHqkmYq1Gw==
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

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e85..4f4c9c0a13152 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1034,6 +1034,12 @@ properties:
               - toradex,colibri-imx8x     # Colibri iMX8X Modules
           - const: fsl,imx8qxp
 
+      - description: i.MX8DXL based Boards
+        items:
+          - enum:
+              - fsl,imx8dxl-evk           # i.MX8DXL EVK Board
+          - const: fsl,imx8dxl
+
       - description: i.MX8QXP Boards with Toradex Coilbri iMX8X Modules
         items:
           - enum:
-- 
2.25.1

