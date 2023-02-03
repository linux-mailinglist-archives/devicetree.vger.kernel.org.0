Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D69368943F
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 10:46:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbjBCJnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 04:43:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjBCJm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 04:42:58 -0500
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2056.outbound.protection.outlook.com [40.107.255.56])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1DBF23323
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 01:42:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwU6HMBBmDsrENgTm+Z79x05M23ReLvO0l++j1wcfOU97HvMR8XBjqfWrsMiTDNQreZyzTK21gxBSjVCgaEaNrfFQwHmzre6MtGurKcwr6x03nex0KmdxDJXgeoIz7Kz1nNghofQ+VVVrFUU8SwWEPBdJVajThCFt0HET501UE2C3dXg54nFKD0uABGqtViFpw3zuHWIDsclZZ8Ff6v1V6DDg0rSC3m2F8C3KoPaEHI6/GqmJPloOnc00IhL7DCU2hW9AAsON9fNCR9bEbiQ+8yps4MGGZGgXWJBP0pZBE7AoC5Gzo96YAEZN0rcROtwqeL6UgTY04tKvB2T+lB6bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUyFpXeMZ9rgDTBnfB5avGo+DR7FDD2Um1zY0cOXFJk=;
 b=SF/SHacmb+FqKNspMr1RmlWR0YtnD3YORRpCshSgVWQgAV60+ibk9h+W0Z/ZfsmrZrU4J9Kes7TO0bis1hNM/Rj5qV1GJmLBKAJ2UU86gWMFRwShJWn8Im5SJ/VUAbO8/brEEi7DkjO3vhs+3yoED/ot/F3Oc/+gN6Fnnk1nkdgoON/dizQbtps0RGDgXzwWQ4H5SeFUeFL3qGF4JhcgHjbBiLE/qHqdtyRlZX+CohB3kKLMwybpTk7KbzFJgSRnvYZ/+jfrziGU0tY/nyL7QK4bYbPELXM41r3yXRvJ7G1/2C7GvPIk+9u4raiIHMiSXOlvlhj9wHUuyekbXxNvgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM (2603:1096:100:7::23) by
 PU4P216MB1485.KORP216.PROD.OUTLOOK.COM (2603:1096:301:cc::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.28; Fri, 3 Feb 2023 09:42:55 +0000
Received: from SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727]) by SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 ([fe80::3d9:7f82:fa73:e727%7]) with mapi id 15.20.6064.028; Fri, 3 Feb 2023
 09:42:55 +0000
From:   Kiseok Jo <kiseok.jo@irondevice.com>
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] ASoC: dt-bindings: irondevice,sma1303: Rework binding and add missing properties
Date:   Fri,  3 Feb 2023 09:42:37 +0000
Message-Id: <20230203094239.25700-1-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.20.1
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-ClientProxiedBy: SL2P216CA0226.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:18::13) To SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:7::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SLXP216MB0077:EE_|PU4P216MB1485:EE_
X-MS-Office365-Filtering-Correlation-Id: ffec2180-86e3-4ebd-4801-08db05cb06e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ukpZXF/eCUtLOFsqZpNK9biEa1dCyECVn0gWrLibBQ60zBzw3bk+2gPpHTT5gRBtemZT2xqtnyG3MFiv+eU16lz7yyCB2TZKFSPMW7dnJ7iPAiC3jqzalzbgGbjnqcRFmOo2Hd2afU5vGn0mL0NgTsm+D0CyiAgf3MIWGNpChfY04jvsQILXJwbsfqoOTbho72V0B6t+zYmfyMQAYYqVmSgJNOgHCZI5TGO/KK9zuc7mj/4bsecaDsqGoBnTPCg0zd/E4//ionAsb6R9qHEw1mqVrZSzpxPqLQBleWRX+Y1TaQRGPT3S9RHjUUwP/5dwWRZs2uvoSKP952ZXaR+38hXuf8ykL+oTXsl0abfsjg+xab5kF2aYNhrZazKJPW3MHIiN/Oqy344659mvILcZfLsuDdltlbmoGZscYpx6kc1hIdd6rsx+t1RDSVbfULsV/qNDskQISShjwy4tCafBYj8VL1R+AabQrBMmBGCW1K7zvKMvziXk8IN/LkbUfcaeJHtruttb0GNeL/EQmtz0ceAoqhoKsicXXBqpZhONw6dki165Qf+5GgF5kZtGRbSYRbGoFWXUjIytim9HCKyRdP6TjVCTahh1k80IhswJ6PuyN30FvXMbgJIvhETOPBahkDIyzzw+U/i5JvRZqz974ihZS4DVPrbT4N+egd5yCpsUhFmQ4bjFPSUtrlpBhv4DmjAr4K/OQfMz5aRvMt3+Aw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SLXP216MB0077.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(366004)(39830400003)(376002)(136003)(451199018)(44832011)(26005)(186003)(8936002)(6506007)(6512007)(1076003)(36756003)(38100700002)(6666004)(38350700002)(83380400001)(2616005)(66946007)(66476007)(66556008)(4326008)(8676002)(52116002)(5660300002)(41300700001)(6486002)(478600001)(110136005)(316002)(86362001)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bCmqbL6wNJdyZgfHqs8xZL3TMd1CCsey+zWXMT8ST2Yv0J5iuzGk1MrO3vPa?=
 =?us-ascii?Q?cIIhzp2vInpdyfN/IW6whjNykp8ssJi2Mw8cr/d6+rLiN//oycJsrZ/aONhR?=
 =?us-ascii?Q?HthN/yWuZHnCH800wYtPpw6sRhU2jpipf1tUYgePlcCYiNqWVgyK/zZgI8nX?=
 =?us-ascii?Q?FC9EMIdYHXEpTeRvJXwps4O+EDx1VexiGZIpR/9mpTqqFwKdsgtMHdzHfp/S?=
 =?us-ascii?Q?relqKRm6QnB0zhw5kNkrYhVcIz+merNRivOIE7SDJxEkEJgH9dvfJkc/T2H8?=
 =?us-ascii?Q?zUdr3SRCmMrjd495AFwbuueTuO6M2i/tJ3DITQXIvsBe/ERn4OSpwRrzxRHL?=
 =?us-ascii?Q?n26Fj0RfLPNlUIpf2vRls/IM6MDkX1xWB7o9+2zLuL7QScEWBopf6rmR2mbK?=
 =?us-ascii?Q?pIWJXQzvfyExKfuRLo+aWAp51ie+OcGm9oRbXL0cDZTZaOaPvxqX5wF3NxpD?=
 =?us-ascii?Q?ewC+eJb+GWL09oK5BT6r6xD7UIZV6DuJAMy1qlUywy7fTDPpZ0sBmpj7VV/X?=
 =?us-ascii?Q?vweQXHGBFiapfT4ETA4Yo12J7aH33NZ6FDEjNyJd+SBJlu9xXr7WIcfpy7Yh?=
 =?us-ascii?Q?iFj04GS0N7uIB6l89EqeQ6lNjsQYvozp1+SPiJUTsPi0qXUANEngCZlhhNK0?=
 =?us-ascii?Q?yKNTf4YIQxQNmzc5XoJLjD7wlIGhMiWph9d8Pkh4UFKoQ6f6V/3Ar+/Ojdtl?=
 =?us-ascii?Q?LaiU2og+iGsIvvcWE4PT8tBPIz/7zUNZ7PufomyuLntVj/kigGrrbzT7C/tu?=
 =?us-ascii?Q?7YOmPqXifPWMfiLFqm3zgrLoIj9PHFmwzb72HqZvXE/3wFq4ctzmSSSWR1Vx?=
 =?us-ascii?Q?tAF3N9aTXGhxVpvxEY/lzOV1vFMSrwbHuF/tej1O37W8899MQs5EvBgEDgcG?=
 =?us-ascii?Q?BXySKmZ7brozjkXoBD7JFh3ZeKXpT+fiPxVss4C3c7v/Vn8Qd35RD6rIpwdS?=
 =?us-ascii?Q?Sf7fxvjR40qufePA+ujf6StD5f9R4dFhbUssa61YzIku5UKT3UxoRqAtQZO5?=
 =?us-ascii?Q?k76sXnNLpzx9RBbg2U0nzoMiuyEL3DKWAsr/BG+bPiT8nH5X5hEHgZp6OfG8?=
 =?us-ascii?Q?n1M1fM9nK7NSnaykaZNMAdwvzywKqA4tUEmKLaiwEgpS26MFmcI7cmL1tvQL?=
 =?us-ascii?Q?tj1d5yZNTVcAQ8YQ5MWCMRMO2aTmoAoX1L/XKKEMN6jIFFsdsuhbzOw+g8bb?=
 =?us-ascii?Q?bia0BNyLZUPYssxzYsJrRISdiDbycxQOtjN56E83i7ugPxTsXpA/4D/ySh2h?=
 =?us-ascii?Q?ctAUT+N4x+4zC1G7GfEZRlpprUxd9fxsnrPNAjv1tyZnj8l/GhQfTVQqzZS6?=
 =?us-ascii?Q?yUaiaREefT8YwUGU8/ybxugPAXkXM8fUeUB0Vyjliz+BeP8jDgjy9FklwjA/?=
 =?us-ascii?Q?y9ubWK2hLMo6Z5+as/8Yyj23+cGbbSAd8MWXtQTdY3mn54kxUd16Beg9nQom?=
 =?us-ascii?Q?5Ok+H3BTiHdhvZNGSTLB1IHchDHZzFjYpWPvkpTzVs8voIm0w4VNRNTv3Va+?=
 =?us-ascii?Q?uF+VJiTgbW6bxNyDkPS1foeuSlwTNVttK1ZDL9Gq439nLjpJ9KTCgeGQl20Y?=
 =?us-ascii?Q?gFCbFwaVF/iXu86IKR3xf+mTstlO41N8SlQH1jPOwz5jxG4WAvJUgms5yTbS?=
 =?us-ascii?Q?cQ=3D=3D?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffec2180-86e3-4ebd-4801-08db05cb06e5
X-MS-Exchange-CrossTenant-AuthSource: SLXP216MB0077.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 09:42:55.6965
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FH4ySD2MpWRtxiARgfSdEgH2/1AoPCijBVVzzL6JEI2BvzA4iprqhfDCXdCYLtg8LPhXvW6+QTjtyIzFZGQkvzTHWBzTBbWFLMc+p3auI5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU4P216MB1485
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix according to the writing-schema.rst file and tested.
Add the missing property as compatible, reg, sys-clk-id.

Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
---
 .../bindings/sound/irondevice,sma1303.yaml    | 35 +++++++++++++++++--
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
index 162c52606635..2c6158277aee 100644
--- a/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
+++ b/Documentation/devicetree/bindings/sound/irondevice,sma1303.yaml
@@ -10,22 +10,51 @@ maintainers:
   - Kiseok Jo <kiseok.jo@irondevice.com>
 
 description:
-  SMA1303 digital class-D audio amplifier with an integrated boost converter.
+  SMA1303 digital class-D audio amplifier
+  with an integrated boost converter.
 
 allOf:
-  - $ref: name-prefix.yaml#
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - irondevice,sma1303
+
+  reg:
+    maxItems: 1
+
+  '#sound-dai-cells':
+    const: 1
+
+  sys-clk-id:
+    description:
+      select the using system clock.
+      0 = External Clock 19.2MHz
+      1 = External Clock 24.576MHz
+      2 = Using PLL in MCLK
+      3 = Using PLL in BCLK
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    maximum: 3
+    default: 3
 
 required:
   - compatible
   - reg
+  - '#sound-dai-cells'
 
 additionalProperties: false
 
 examples:
   - |
-    i2c_bus {
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
         amplifier@1e {
             compatible = "irondevice,sma1303";
             reg = <0x1e>;
+            #sound-dai-cells = <1>;
+            sys-clk-id = <3>;
         };
     };

base-commit: afdf57285d1e16a1bbdbf6cc33fb22fb6c8e7860
-- 
2.20.1

