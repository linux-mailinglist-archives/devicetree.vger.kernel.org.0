Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE0E6823A5
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 06:11:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjAaFLV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 00:11:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229964AbjAaFLE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 00:11:04 -0500
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01on2071.outbound.protection.outlook.com [40.107.215.71])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFB8831E1E
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 21:10:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGVshe/UedCgRw13A01xYPTssQMV5Nb87YBm6vLaGv1zxpel0mXhg8xybeP94fjneN2X/zhImf09rwg6dIr/0By7aF+P3WmeumERJuW7caNnlCtEMeSluBP7Jt/EjFEDVR3Y01GPprVCp2FSAVBmdRM8apUv5kiIkiZ5vqTftvWcpsK/p56jCUtKlV9wltnIQOo4NOXsHJcmF2xlQlI7juPq+6aTci2M217sIorwaGUmhEy4VXyvSTsO6TSyh0xWQ4+BnBRum7UkQw6uxk4MPGE96vHrOq3ls1hZK+l5hYTJ3jWrEqgJl9vlakWQ3DFRcJ6oegQNNu/U4riVfk4h0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/5VWxDRGHZA6W6SxsX9/7G0JZla3SuEEesO99geB1s=;
 b=XnAm9ihh6IljRbhwxrsrSveyfxyR+uzHgcEcgF90PfwKLwiHZNt+xNJnF7Jx3ZQaucmralSNw2NgXvDji/ehfHcQ1CdoEcJ6zAoinAwr8oMQdkOhfQv4RLjbDUCzNB9UoKncD/muUJVTrWO2Ox8wNBlbqdfqCWj5jqJJdTGeOOYabwgVbKDb7HMEVqN3UvqZlT2RWtAilqP4A3WzaWxCA4bA+6Bgq3Jpaypja/tU1vtbZovr8BTxVLG1Jr6008jxdNafL3Oe2QzEI1Nr8D3ixNS/BVYTL6+Np2y6UtZORUVQnZvIJnWrn0+N2k1KoMvM/b3tVTGfcg59wx//xeAW4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM (2603:1096:100:7::23) by
 PSXP216MB0984.KORP216.PROD.OUTLOOK.COM (2603:1096:300:11::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.36; Tue, 31 Jan 2023 05:10:48 +0000
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727]) by SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727%7]) with mapi id 15.20.6043.036; Tue, 31 Jan 2023
 05:10:48 +0000
From:   Kiseok Jo <kiseok.jo@irondevice.com>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH] ASoC: dt-bindings: irondevice,sma1303.yaml: Fix about breaking the checks
Date:   Tue, 31 Jan 2023 05:09:47 +0000
Message-Id: <20230131050946.14385-1-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.20.1
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-ClientProxiedBy: SL2P216CA0216.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:18::11) To SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:7::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SLXP216MB0077:EE_|PSXP216MB0984:EE_
X-MS-Office365-Filtering-Correlation-Id: bb4ee2a6-fc2a-422b-8dc2-08db034983c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s5uvlAWgeVtgFoct8asT8K3SUDuyOjT1/EaaHo3taXavrl8a5X+868Ydt4ZWGwOVpkDLvRHBBNEAR5EIcAwQcp+RNhACoS5ScsQQJlgAZqtoSijPzqGnU2ZJnZc9XKn+h7L7M9A9DwCTMypaz6DfdgPUXpDXLMyzMSaHP6skZgtwDlCrYK79iAaSmZMxOM2AGRGyLv5G8zYJVOdIBn3JblTwQs4cBndl5q0GGSPpQmc0qHwO6IMesuJytsFXT2jMoiEk6FEuwiUDy2dwJ/cvsy85Hf1i7LieW9Bjd+8SUJPzMmPmXT/DZdQMu2GEK4g6qzsoZyPIdr/lHxHBZx4cDkP9/sxIdzYO+drlDydX5mJkmUdHrXOoE/cTSkLaIHLRhmeNyjSV9/0k9ByEBm67brKujtHuStX7cH44ucriidRCubmNAGWO6go1eEGduXex8hg77z7/t4QB1xoxA0CRd/Y8xlR+iHWUICM7GAzGaWvmPoCHVHevBem1z/r9G/41urdCyWo63bKnP+HKMqB3wyD7rl0ygdEkkCYLeMdelecO2UaUZh/8DrvMnoi/xRWBzh34wdaPJkdDdMdchlt0teR1+zZ+XhLnagc5lKuO8MJV0AgiO73CxU7/ZZkVH9p3eqYF31TnEXLCpqXDK87M1cXsBlnSEHAuMdOFihcnpGZ139kv3f08Xu1KGWUh4L/Xd7xuoaejpXJ15ynbN4jzvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SLXP216MB0077.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(376002)(346002)(396003)(136003)(366004)(39830400003)(451199018)(52116002)(66556008)(8676002)(66476007)(4326008)(41300700001)(66946007)(8936002)(83380400001)(86362001)(478600001)(316002)(2906002)(38100700002)(6486002)(38350700002)(26005)(1076003)(6506007)(5660300002)(44832011)(4744005)(186003)(6512007)(36756003)(110136005)(54906003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rL1t2m4Nj7F2RuxweJ1GpZZgnhYa/aus2MLYk3PkoGDbOY098P+Nk78Y64wK?=
 =?us-ascii?Q?EztXEJcisdpmmIIQIicVGmhFszKYLI3MXzULsnHxBHXTvbdXzVmuvH7iL9gh?=
 =?us-ascii?Q?DIskTIDqmi/c2f6B9CBjcZyb9QtZ4IJ/8uHrlmJAvv6LVRLRACks+ElM/bHY?=
 =?us-ascii?Q?rU/1vVAd/cYCHPb/MRy2UlWn+vE3Wd53KeIK9RAnG7jaTzIRFf9xXVMSmyBb?=
 =?us-ascii?Q?6xTwQe9R+9iW10FuVaPPUq58PV6QOTQvhLiPdb7BFhAWaCVOJBLZgWjB6cbb?=
 =?us-ascii?Q?dJZAQyMKsvxJsmGaSU5xmWR5rQHrAfBoDlr0Lv/ZlpkqhVBiQXzw8n3DNkM3?=
 =?us-ascii?Q?MHWtQCHHubUyE+ymeDavsq4KrmJpM20ZntgQjzOP57SdZn8UxOWRLNqHv45U?=
 =?us-ascii?Q?4d20g5SKiGq6Mn60LlkGkgnKDD7Z50OeM+huheyrutXGJ6ff1IrY1VPvg6ey?=
 =?us-ascii?Q?3vsAE+B5pTgpWssLU8pNg+Ce1p/JRQP17TduqQvoahP8pP0yq1j0sFMFtIdu?=
 =?us-ascii?Q?bH1agz5xuglKWhywMABALFerrKvW67fV4/LxttpRg4DxEf5hYBFeK9jT95Sk?=
 =?us-ascii?Q?82q5o2o2/49Nurp0JpdaJDHiUawhHwe1TucSXKZuP+1u8EcvPn7NHs8TYO8w?=
 =?us-ascii?Q?eGcYZMunxyNgCjVfqX/AHVVu/OjnqhtX0YHdN0DlKZwGYJu2FQt5fe5ye/YK?=
 =?us-ascii?Q?pCSeE8T9ImxArS6Mf6LHp4BIr92TAiFEbpWKNsH//kBONu2/OgTH0pg3z3Oq?=
 =?us-ascii?Q?fLtDpgsOBFF7aHBLs4qcYv/mQruHOHCi7sPztUbDHC5hGGgu1z/BK27sZY2M?=
 =?us-ascii?Q?xptJ+69p5vWPrXWI+3F+L24clmD9BkSHUQ5jTWtQvmMjVSUz4gSmoJEM55c5?=
 =?us-ascii?Q?STH7BxkyqT7JBaHNQ/AQvqsSQGjzkcIL125PPse8GF9a0xGHWG5aZAyewmbw?=
 =?us-ascii?Q?x+MNgfmsLjEDeOkiO0dAnTNtwTPfa0uB6cZ+FWvK3XFpu746eWVW6+duXUjN?=
 =?us-ascii?Q?+3vDytN+av7Grc3+HsnQa5icBr4G+w28ZnEQyPdw8tmb905PD3r3VN6+wcA0?=
 =?us-ascii?Q?8KSbHZzM7ZFmqHioGqt5EuG2xTRVE60kbzh41RZNBeTvHyTed+AeLZeNmsG2?=
 =?us-ascii?Q?kOy/hyFbUcE1VCtuKA69lche3O5ld7X+qG2YM0utJe0lTrQwx0wq5RjFZC0B?=
 =?us-ascii?Q?3dH86URwKRBEpAimQMEmePSPxdW3Z+bKywnmkoQPHu1/hDOadRe9DlptfNiq?=
 =?us-ascii?Q?1X02R0diiKTMHYmHOL/kEaZmtTgpvKNdRREtTtbLgGQ7SaffQBJuT+t5C90Q?=
 =?us-ascii?Q?yBFKJ0FVQy6xLgQHsb+FoLJdwAFuHu7L0vDvLiY+Jj6EZtRjkb7jCDLI2y7E?=
 =?us-ascii?Q?kxyRtMOpuYuKO1utqJ2G/OQ7lKYXzCWOm82ohW1J6M4hGube0+RqnjWAoOCl?=
 =?us-ascii?Q?VjbuL4tSXjdliN06Ql14dOwu5GgqbcN86xcDX2iELLW2PGHymPxaW9GGBcvP?=
 =?us-ascii?Q?Aa8kvIWq07YyxfvtemKuNPKeaU0NwX81XuEyxe3p7WBGEVLpDob6DWyeRVKf?=
 =?us-ascii?Q?FImjzzFVJYc9rYeFOVg/k7NO9/fbZQuO5nxThl1cxYtajakbZ1XeVuzrdTBX?=
 =?us-ascii?Q?bw=3D=3D?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb4ee2a6-fc2a-422b-8dc2-08db034983c5
X-MS-Exchange-CrossTenant-AuthSource: SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 05:10:48.3033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PdNZX813qNXvvkZr/zRUXOdmKa/dyj4nJNQ37U7S4m+8+fXg7IY4Trm5eJiByBDkIHrIrWkzhCXiyXKYF+oMvhJHYGO/8E+YJoSwL07N4yw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSXP216MB0984
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the bindings checks like syntax error.

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
Reported-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/irondevice,sma1303.yaml          | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
index eb87374cc812..162c52606635 100644
--- a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
+++ b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
@@ -19,14 +19,13 @@ required:
   - compatible
   - reg
 
-additionalProperties: true
+additionalProperties: false
 
 examples:
   - |
-    #include <dt-bindings/gpio/gpio.h>
     i2c_bus {
-		sma1303_amp: sma1303@1e {
-			compatible = "irondevice,sma1303";
-			reg = <0x1e>;
-		};
-	};
+        amplifier@1e {
+            compatible = "irondevice,sma1303";
+            reg = <0x1e>;
+        };
+    };

base-commit: eeb6b0feb597e8fb88c4e1459323060e17350752
-- 
2.20.1

