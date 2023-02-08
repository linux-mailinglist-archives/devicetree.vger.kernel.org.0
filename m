Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 632BF68E57B
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 02:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjBHBcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 20:32:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229679AbjBHBcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 20:32:15 -0500
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (mail-tyzapc01on2131.outbound.protection.outlook.com [40.107.117.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3F6441B5E
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 17:32:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MY+8+tM6PP4vp3nYyNKYB5Fck8vB5wuOU/PPooXMz8XExhCh/wAWvWxAB6tmn48yVB32l69c9X1rW+5FedS6FkxqwaZ927MUNMK4jPgSQwWjwNxta54FMtgVmm9Ebid47scf08wo9vSo1dwCKAmP7UJ72XaV2l4YoAs8dL/E8CVvy9BXzc0g6PuDUYEs2hdT3Ry4Ria18cwM35l/vYanK7PFI3oP7SloBnFPoOIDSZgAHOAppQVaAY0xPzKucmqbyWihq1aKwjBL+OArewcDWeqdPlAYbw+XJ1KIdO97ZQNRiA79pxguJbsd63gxaX4Su4KNWDGWOz1JYpwAfqEx9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juoWds6zT2IPx4YzVm3QcFK6vNPWEHj1dmJuyL5bMDU=;
 b=c03YstvzOlH7zViMVsfK53lRLtrE5IKU/9ypX+wL7pOagYKk82PvUCdMkstuKTghYw9SKlhXs3dCCO+uSp69QL0e5tuPKd5NLvuV0tg0fyObW4BRA7D1DQ+W6xPA2p4pHxkf1kyI9HEv8JeySoYt5U0EsvSady/WMnKFvuYObTopFzB5GR97og2OTknengdfi9UPYGode4/Zq5bG0eAgX8UW7AdZLWhfSlSa4kcC1hHp3hYAWBWL6jzlut+P9qqwNnuA9PmsdFyJ++AlKsOEvF0W1cCYuX9WVzsjL8lZ5pju2XH0oKJQzH8v+61tZHMoLWT2GZ2/F0JhvFNEgwv6mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=juoWds6zT2IPx4YzVm3QcFK6vNPWEHj1dmJuyL5bMDU=;
 b=LBSUZtOqxhgQG36p5SVjicoqDba89AF8D+ij5dsdmaZn7EVRHeuCq2qC+UIKFRXLq6oMAyVcc6SzjRPqOiCeYI2gdMQ1lu5HfV/etRMYVlGjVya6J1caVOk0xDm+LbwWOrgNQqfbpmiHZ345K5OOfGNCaaKlB8cEC0WWN7zKhEA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSYPR01MB5560.jpnprd01.prod.outlook.com (2603:1096:604:8b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Wed, 8 Feb
 2023 01:32:09 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::4b75:8d8e:d89a:7860%9]) with mapi id 15.20.6064.035; Wed, 8 Feb 2023
 01:32:09 +0000
Message-ID: <87o7q5t012.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: adjust to R-Car Gen4
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
References: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Wed, 8 Feb 2023 01:32:09 +0000
X-ClientProxiedBy: TYAPR01CA0196.jpnprd01.prod.outlook.com
 (2603:1096:404:29::16) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSYPR01MB5560:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c34fe87-51c4-4004-c0cc-08db09744bd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3SRga2DoghYilP0ryMRtYMHYQO2fkAvLu7oeOk7rGc5LM/XlrO7R6zp3C1EtT1l8wcXgVvxECl7V5F/wuPPBWxyBO1TD0GR7C7kL4K6bfLuWrRnEg9P5F/VeVT/P11Ge4JYP2IjkhT8YDKV6GBtnQ2dJdXHHQYy2gaxeZ+Yum2I1UTujGu0lWd57fdlc3F+3elVqxiHrKzzPaA4O+DuPamdhfu0Mi03HJRkZkAhxlPrSfIiXsqi3ve1jv6aPObYfry/E98p96BGPpWFDNgovZD1BzQhdwiCju/KN45pFQdoJlsZcG7m6VlOfT/7JxJZ0Y/KSAVBKe1l4w5y6qImv0tKEXNyZQsC9+Goe5WPuwBBTFAixE1K3enksbxGKP2VLsYV2lk0WU0NBKoGrfvo9y6uh8wqL/SHAyVTlWXRTp63C5A4fSnaSU1CK6xaH89FZfYysELiYwu3kDAD7WSbK1OuGOKbu2xh4er0Hc2uO7fgMS81BCBbbjDDoKxJ+bXh5WlfPphaeBUrNmhkZrUxgi898MDMBFHrAqh0hNu6rHT7d85q60SPUfrGspjSnB2ue7LMS0FIOSQkyEkdb2idbP8Y57HfL4QB5xt2n2dUvKkBuWvz4Fuim9tbVrixJRBl4XvR0N4eN3gStWzIDuz17MnSawc/tRt+0w3d9Q26G4cuDuxTcdXGnw6zo/JNOlSAk23t/I734tuCFrfVP+KF+pt6gmh3b8y6ytsPhvd+NULOgEk9lN9CmoTWEQ6KTdUaroylDfRVgxYU57yAz4xHeAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199018)(2906002)(36756003)(5660300002)(41300700001)(8936002)(83380400001)(4326008)(66946007)(66476007)(66556008)(2616005)(26005)(186003)(316002)(86362001)(110136005)(6512007)(54906003)(6506007)(8676002)(6486002)(52116002)(478600001)(966005)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BznMkY+e6wpeFWufYacbfdUpZorHWj34CeJcqERsVGTrpsVd/rlBUtbjbjmo?=
 =?us-ascii?Q?GYq5CpIWb3F0RJqe1FqPiLIF4upXRVnoAUdJg+1PsnSO0MUcrEW++AfEUUDc?=
 =?us-ascii?Q?7niAdevhDiGec3mreFqkcOBr7rEMvjJPnCcWYd1VuDrx/GTwiVY4QRUiUehE?=
 =?us-ascii?Q?z91x30JMkDxaDM9RIe5ypj7MBVJgeYQE6uHAZHWg5WW2nrldGsc4zWEAt8Wh?=
 =?us-ascii?Q?Tyf9p3QuXcT4OWgM6lm8eoH/xdWfBMojNwYv5id5jVOegC/9OfufK8lF3mpG?=
 =?us-ascii?Q?Ol55Jx80W2lWrwgPLqsvl19R7UeflrL8JYsaPUsomZS54yHbz/b+rKeYFz7M?=
 =?us-ascii?Q?yqotuF81fFzdtb8nnXpTBVkHtME8bh8J71lphBbPoCXwcUjI1vV2rJgcA9JM?=
 =?us-ascii?Q?tYPQ3nBp1VRg+QrIQ+hMerwVWBwTPdxY6kI+hzhgqaPNM1NnYMHS+vjaZpUO?=
 =?us-ascii?Q?CuEYNhInu/nDGwii5Hyh7sFoSv09BldvDTd30wwpGQ0wIXrEr1lnnMlJBb/X?=
 =?us-ascii?Q?SAyEcZbbqaj1EdRteLFQj6uYjolQcxGgugcYhTYoFVB0iujSS0AB7nUu3VHS?=
 =?us-ascii?Q?mXgG0ZbZiaUJLhYvjCRgkyac7kvnzmaFwNogxqzqmdflJXSuwbKZAliWgNbN?=
 =?us-ascii?Q?FdimtVbVZp+HM013uRO3bN7gRz1Auhvw3y672RkknCbqfoQqXStOG8v9/Nvt?=
 =?us-ascii?Q?4pQuyarzLbM4QdQDYDT/KBFQ8S482YZg0g844XCZeS25Nf5c3ssnCxx5LJmL?=
 =?us-ascii?Q?UMGJ9KNofp7hyL5Oz88rS4rCZuuUl0R2uTCSq85QQaj/O0Ffh1V0AWIVmT0y?=
 =?us-ascii?Q?W6J55ya6CjAAfPTvjKNnGGbdo/7Ty9VxJyytiKcZAVdE7tKWMm708dMmsUR6?=
 =?us-ascii?Q?NtuhuItUAqFfrNCmrAybhnzAD+rEV9m/LapRdotRb+S0kzq4rHPkAECHdyfl?=
 =?us-ascii?Q?fsu/fI8j6gfwQLv4vgV/vyNO/zPnp6WQzLL6SsjPhoypkCaToNw2H8jxjfFQ?=
 =?us-ascii?Q?doO5MT+CyvtYoxOwfIt4la8z8knrcyQd0hyR0huw8qnm5H4vC75zXI+et+1a?=
 =?us-ascii?Q?3P6YBXmlbiRK66ODDoYIqjMgMyS8e5tn6TvfoVCS59ttIMRNZsxtddd7qKgR?=
 =?us-ascii?Q?+4uyGt4djqLgTtg18XDYc1gt8v9yOXSLQ8HbA8uk7RLd0sdcMUpuwcy/O404?=
 =?us-ascii?Q?QWAIzMEB+NCYa/BdLifNk23vabDNtZGkrF/xkDQSyY2VsnAGP/UzxitUB9+q?=
 =?us-ascii?Q?hPJP9rYKNUSJRILFhliIj5RctUpSIVcnxy2ugDfQdNToGnlFRKKntiSoZl0W?=
 =?us-ascii?Q?LdXsGqYPTHpDOjCl+vVD7q/YZSQOIjF15VQpxpq093U0eEaKE71KfayirPfC?=
 =?us-ascii?Q?LEcfcOjVPDMT0hOCD3PmtAIUx0Mib7x6fjBgZHalm5wSoKHbeJyOcl0RPlv1?=
 =?us-ascii?Q?2lheuUGT62Eu3tfg6AM1Ra9wML/5yywXuVYaV7PCcruBZYAtqjECDRVYhwfz?=
 =?us-ascii?Q?EFsP+LmXb9QdjycXsjcVRi/sfGiHGxeo9USj8Iz/LUVMrIzfCwHjAjgwz9DL?=
 =?us-ascii?Q?o4XRzpfJW886EW3X610ytHhWOBUSrh+gYskdvwRbwGXgqulWI08xZSPJpOun?=
 =?us-ascii?Q?CIBqoU84C7RVwbwnc8Gwe+A=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c34fe87-51c4-4004-c0cc-08db09744bd7
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 01:32:09.7139
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNCuPFETZFlRTOeQ153hJo1PKvts+fRpR7yKpY/+py38ZOrBWKnnlSaiuoW1ifeifWSi8cvIc2DUKFQyEsZVScruKB8k+2kB4GkL3nDr3Ks0x8H0WX7KAmI45dtfaBDs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSYPR01MB5560
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

R-Car Gen4 is not compatible with Gen3, this patch adjusts
to R-Car Gen4.

By this patch, "dmas/dma-names" under "rcar_sound,ssi" are dropped
from "required:" property, because (A) these are not mandatory if it
was PIO transfer mode, (B) Json schema if-then-else doesn't work
correctly on there for some reasons. see the Link for detail.

Link: https://lore.kernel.org/r/CAMuHMdW_QHmODAKvn_GwHHUWw-=z4Tdq0NkhdK2u2piG_YgB-Q@mail.gmail.com
Link: https://lore.kernel.org/all/87zg9vk0ex.wl-kuninori.morimoto.gx@renesas.com/#r
Link: https://lore.kernel.org/all/87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com/#r
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/renesas,rsnd.yaml          | 72 ++++++++++++++-----
 1 file changed, 55 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index c3bea5b0ec40..3214ca9bcc78 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -99,20 +99,6 @@ properties:
     minItems: 1
     maxItems: 31
 
-  clock-names:
-    description: List of necessary clock names.
-    minItems: 1
-    maxItems: 31
-    items:
-      oneOf:
-        - const: ssi-all
-        - pattern: '^ssi\.[0-9]$'
-        - pattern: '^src\.[0-9]$'
-        - pattern: '^mix\.[0-1]$'
-        - pattern: '^ctu\.[0-1]$'
-        - pattern: '^dvc\.[0-1]$'
-        - pattern: '^clk_(a|b|c|i)$'
-
   ports:
     $ref: audio-graph-port.yaml#/definitions/port-base
     unevaluatedProperties: false
@@ -256,8 +242,6 @@ properties:
             $ref: /schemas/types.yaml#/definitions/flag
         required:
           - interrupts
-          - dmas
-          - dma-names
     additionalProperties: false
 
   # For DAI base
@@ -305,7 +289,14 @@ allOf:
               - scu
               - ssi
               - adg
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,rcar_sound-gen2
+              - renesas,rcar_sound-gen3
+    then:
       properties:
         reg:
           minItems: 5
@@ -317,6 +308,53 @@ allOf:
               - ssiu
               - ssi
               - audmapp
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,rcar_sound-gen4
+    then:
+      properties:
+        reg:
+          minItems: 4
+        reg-names:
+          items:
+            enum:
+              - adg
+              - ssiu
+              - ssi
+              - sdmc
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,rcar_sound-gen4
+    then:
+      properties:
+        clock-names:
+          description: List of necessary clock names.
+          minItems: 3
+          items:
+            enum:
+              - ssi.0
+              - ssiu.0
+              - clkin
+    else:
+      properties:
+        clock-names:
+          description: List of necessary clock names.
+          minItems: 1
+          maxItems: 31
+          items:
+            oneOf:
+              - const: ssi-all
+              - pattern: '^ssi\.[0-9]$'
+              - pattern: '^src\.[0-9]$'
+              - pattern: '^mix\.[0-1]$'
+              - pattern: '^ctu\.[0-1]$'
+              - pattern: '^dvc\.[0-1]$'
+              - pattern: '^clk_(a|b|c|i)$'
 
 unevaluatedProperties: false
 
-- 
2.25.1

