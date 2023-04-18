Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 382826E5EB8
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 12:27:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230315AbjDRK1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 06:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbjDRK0v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 06:26:51 -0400
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2083.outbound.protection.outlook.com [40.107.8.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A9867AAE
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 03:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fr9aKpAuqq0SKK24qVF8jjoHXU3PoIfL9z050vkfxOrNx9zIDBB6R5hx5nNCqxt40R01uYF4RAlW8TrGfrBF+9mXsH+Wfv1NJZwWdGxpJ9jJag9yCyGdYN7Mqzx3pBLtKCgJy4QZ56X8r7ciI+LZ3pNIfgqylw8v/nFCj/G4X4bNzaaJ3WdyVFsBb9SO5sRH4WYSB1R39ZqkokoMUSxrPRKGKmeftIa17M/SyGW76cBv1EX7x58JaEn7c2sKNyveEFB2mZu7FIRRrO5AvhhcDGuniyVEDpvlu/7jYXoKNrE3ek38M+jA6lW4qO4zeQrez9xVO3ZgaZFWNYVdCtalcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1IU5PQC6zuh3Uu3OqVpRexhRWPyD6E/3hXjBvom1lI=;
 b=bdbBMRkl/FnQYw95sjk7R48RLmTbc5Ap7kwPDI9pKvXM8UtXbSUAir2J5X+/55Y1Hj6S7yuFean2yhaV93BkGHoBF+5wOUIcFeWxUhWdsXpp22H9XTHNU1UKzJuJDh4NmWDMbrxjE2Chl470sHBYCHJU/H9kYlhvbhFiZ9ea0tWcjghHD6oHIeKyGIeawpZptPYF61suiT03mfXrJ8gED6w/EHR2U7pLRN7AwZaTXdvMs84tN5dPhbsqs8Odm7GAPnIlMYQgdxjzlKXiYzbKdHk4efl8hKdxY0wzSoo+Qpr7d+Z9VQpItt+9GV4TR3Wi0yeiNvjkPS8QQCXB5z8sdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1IU5PQC6zuh3Uu3OqVpRexhRWPyD6E/3hXjBvom1lI=;
 b=ZKFSGXlRlG9BhsaoijIQIipj0FRpHzkx7rfCSTPM0E8+1QVAELA0NTittnID1vq7x3DtUlec0phQErpE/U03SwH5Aw/91JUw4HXmoiODmliYfZp5frD3k2fZoikHOAb9x1IrOAmUPTQwi3i1gvrCjyG1yB9Gbr5ZJvRPJ/Mpg08=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 GV1PR04MB9184.eurprd04.prod.outlook.com (2603:10a6:150:28::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Tue, 18 Apr 2023 10:26:45 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::3052:f2bf:2e5f:1e90%6]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 10:26:45 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     will@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
        frank.li@nxp.com, festevam@gmail.com
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Subject: [PATCH v2 2/3] dt-bindings: perf: fsl-imx-ddr: Add i.MX93 compatible
Date:   Tue, 18 Apr 2023 18:29:09 +0800
Message-Id: <20230418102910.2065651-2-xu.yang_2@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: 27901b0d-1def-47cc-b047-08db3ff76905
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E+Y177RI2VsehACT+dO9TGluzMVL0DmJTach103g3yQHP80HuTvfFfwOxRFgqt7MbQSynOT7ial8EteyYAMJ/ysIuUYk6cABemwy1LP7i4uYc31q6VnMjkCFqa7X33aFXyMYwCVV+WhIiO6u1poiXbfqD/mM9Nqjr1SfR82CQVUeFCPjEDTLmlGhVINz0OKDrjKlEVBWL34+Lj8eNtYVxNjAeSh+ePjHqG/mDit+vM0zu7HXXPFFhirk24HayScx3LdJNOV5FojJe1VPxvtsfiER491j1pcaS1hPnx/0nB7UhNo+506l4l+/t15cyjmPKZGYZWTkO0ZzYmUFCh2Kr60U1E8hLLKP7F9Yx/GyM9rU2FlKaYTgL8Pq9bBaIg+n6GqWIdIvaFGDKIy1036QAjOOT283p4LsLEABqCPL1e4+WlJNBq+cwMk3h/t6E4oR70WOlQKjgXGOYLtrqBBXyHRQoas+VhqlSDVCudizHrBmI76wUp/Zrto+Uz+U016WALCTQVsukxF7fpNeDptEYXQHw6Qc8W3q8VMsu5QK1/iwbkxybIckgI+rtU4lx1Y5M8FuQ8MLVcNT/KpCFngu5HG38tT3/bXb+QFyYdbznlwSpyQ90hZ2YJQ4yC6dUqejwKCYF6dxr4XC0gUkWcBnLQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199021)(6512007)(6506007)(1076003)(26005)(186003)(478600001)(966005)(52116002)(6486002)(36756003)(5660300002)(6666004)(38350700002)(8676002)(2906002)(4744005)(8936002)(316002)(66476007)(41300700001)(4326008)(86362001)(66556008)(66946007)(38100700002)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PHktxHzkhehkQtUPGptrY/V+l6KgwW9W3SpkX95GsC5imZHCyrZLaOq38E30?=
 =?us-ascii?Q?U2OzFAflCJEX3en7M31Off9If0JF6Emoj9TFo856VZ7APxHVGW6djcTAR8rH?=
 =?us-ascii?Q?uG33/iUmyUHlWIBZhOFRLawXDjKbp9KsA8XPY0Kg5kxpD34P1zAx1Kc8+BMr?=
 =?us-ascii?Q?kh5zsWEYuqF6xHf1lKJ0eAVZuCKDzVt5ci1g7eZ5rOTbMYi5eLSxbtkcVM6a?=
 =?us-ascii?Q?8q+mtSYRa7SIH+l5BqdF4j+DQDY4MIqRKevZ3MGiDxFQ3ZMUU6e6HkQHdhLR?=
 =?us-ascii?Q?Hb7UtZCLICG+e0rmGUsT/TuLs7aCCWmjZcgr6xZIHtgEjl7yiWqc5aieLoFX?=
 =?us-ascii?Q?lXcCBEOyo3Tn4hzlX08zLsb6JyPdlTtfjm7Pl0N28ueBU19dD1dyGpdVTbJu?=
 =?us-ascii?Q?Fy02FoA2HeB4vn4Bj3NF18zUtThs1Ti9fe/3GJM3vZyN1o+GXX/y9QCctPnw?=
 =?us-ascii?Q?E7aUAB+RlUWMIZZuoBGxyEglV/La2f5dWVp/PzoJ/fNUUeTjmb57joj1UH/q?=
 =?us-ascii?Q?oybFYBZnpyhNKsT/NzcQpN+p8ZYGKh1mgrmiSov8WV2rc72ujSuoVj0RwtQT?=
 =?us-ascii?Q?VdwYB2UTNPVYLwEtNflMRTAwzQoB6Gw1N0b8sHjA8TQPWQAJvmDp8CHhdRiI?=
 =?us-ascii?Q?Cv47z0vzExms4hfH+JPelaXQ7RJTSGcx8dbEMLiTSdpJGtJFjGFq/jADyrMz?=
 =?us-ascii?Q?tbULJq/CjiuouSAHxuLJK4wQipIUunfNBHsmJZVCRcZd24BzsOvbDkWDbrfx?=
 =?us-ascii?Q?8IhEdLNdeq9u3F8IIH/gs7jEDxIcX5sGP8+lFKZiIlpRMJCr6BZsy4WkJ9t5?=
 =?us-ascii?Q?tFP0eFTuhERUE4iFkcCyDCC3G97NdUeI7XdSMv50ZWdC8nuG7kuX5ygezOtF?=
 =?us-ascii?Q?HAo2UYNYqosrYqpMJnmWZx3Bp5xXufLU4g2nvlNSK4g4VeNxlvmdAJPdFcS6?=
 =?us-ascii?Q?aGvFDan+bllQljYrTFSbj0JuHTlmoa/6lTUn6Hh7CJi22uL7JitoD/9vvuIk?=
 =?us-ascii?Q?BPsuMVRiFeATXPhA6NiMIJr+OZCcwPiVG/H12Up0itfNMvXh6UcWfxHJf6v8?=
 =?us-ascii?Q?JiyqfdmcOB8mJgOQ/RKVDcZSNW/+3XO0hZtZs7iqdz7dG7rSe1V3CuMwdFhw?=
 =?us-ascii?Q?EUeQdyZFyCotHH0FlTUXcNkxcJZCtj1vzmBLupctYbLBWlH365YofXvTVN2h?=
 =?us-ascii?Q?BSyU+P/vz3CElYyO8VxHb0dbBwlY8n0wjXhjvSOeX9g4qR0f5UIkfvxDR5kD?=
 =?us-ascii?Q?wl8tXiy0bliASCo+gmRAs5x+srnlQKE872LRXw7pCrPuRnCmeZvBZjgvqZiB?=
 =?us-ascii?Q?2kVzINs/yLvLBTnDVtlcxExcgGEUH8dg17lI7tbiJXId9PUtLt3tALsCBL9N?=
 =?us-ascii?Q?X6/LRLFcyha7vrGRuxZP5oRd8wh4+HRc7Y7IT4hrvMgAx5lYUrze2mKA1V+5?=
 =?us-ascii?Q?aOK4saFrmRCph/5S/Px04NhmIV5Lv+Kcwo90BGfGrrPkGnkai0YyXk7EGSIM?=
 =?us-ascii?Q?a2R21ejBSVkFCrRK9povYtLDmEWk4DLuQ4qPPzjNq+grsa224u8auIdybIyu?=
 =?us-ascii?Q?Z7+DWReCLsGH+WtHm7f7E5cMlW5k0Ttpv+4KP7rU?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27901b0d-1def-47cc-b047-08db3ff76905
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 10:26:45.7241
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hchrFdzedtQlyOlQo5MO2xIVFXYo4Flblm7XRPPG7h4swqoVIytQ8VVkBW13ZkvS4Ysfjk6sYQYLHiCOoA3iAg==
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

i.MX93 ddr pmu shares the same device node format as i.MX8. This will
add a compatible for i.MX93 and modify the title.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes form v2:
- add Reviewed-by tag

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
index 80a92385367e..e9fad4b3de68 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/perf/fsl-imx-ddr.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale(NXP) IMX8 DDR performance monitor
+title: Freescale(NXP) IMX8/9 DDR performance monitor
 
 maintainers:
   - Frank Li <frank.li@nxp.com>
@@ -19,6 +19,7 @@ properties:
           - fsl,imx8mm-ddr-pmu
           - fsl,imx8mn-ddr-pmu
           - fsl,imx8mp-ddr-pmu
+          - fsl,imx93-ddr-pmu
       - items:
           - enum:
               - fsl,imx8mm-ddr-pmu
-- 
2.34.1

