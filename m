Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7F5475E5D6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 02:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbjGXAWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 20:22:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGXAWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 20:22:05 -0400
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2133.outbound.protection.outlook.com [40.107.113.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 412F8129
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 17:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiXEDlWykjD5FUtQMRUsOwJEcHEuLZ97bEvqwHPU30xj66A6Pui3teamXMkGU24G7rXUflGa13155DTeLAMvg3MK8Ozjhb6X2r1xyy2acxYULJOnOyyLGOJcfmdqsdCGbsaWuUW5ES6BNTaU6Eix1Z6ADuqeDAi0+ayNxcl+LXHGd9ql64uGZX3OvDwcI9LR1+q2x1gRN4PB08iM84R8YaXXegu8WbV5aU9ZhRJjMAUdZ9jGbB9ZN1/7yKAvehF589UfIg0kKHHZrKXYL92cCHaa0yO3HYZLGGUVZtX0jf7fSkk21Faxzn+nnzjjL8iXafF1BEXui3EDmmNNmivavg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DIX0MxRtmvnMBXmS+gIcOCZAHHIxK90sAl7uauE02b0=;
 b=K7KbB7WKUeiOFGm45ihgaOLr3gJDYp3KJyKeEhB9Nwb+QMU+XesnZg/TEQomcQKxXhS+TzdhK5lS3lVchzLIHTEiakQa6uiovwVDKPrG2gkAagfoHGLdf2LybM67AF7dNLitcbRbTc3DQ6Ri6rwxfihUD/D7MGflWnAk/PojF/mrf0s1mcTVSmP1bFu0Ny5xp8FND3pYCEb2pys8XKOnNdhbABp5gIx5OWw1wkFcMvdneLSYqzRZww7YdDatY6o0c9+OcsIJvmvyVkD8FvL3na/l9MInf8BFQDRmkU0FV9QpZfsefhFhKXOrlWz4G7b8Qo051rY+MK9Dd/UuN/kPgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DIX0MxRtmvnMBXmS+gIcOCZAHHIxK90sAl7uauE02b0=;
 b=lGhLx5e/89CJnhfyULLqAQWp8qlvVZbxaDsPPMqd0gvv8DtrH2qUZfiwlCC1seYg3l6lxbQieoUgWkk9Jl1aJsGJpirfGu2zbOumkjtMtE9mi3dESQ+DMgI/7H/bV0K+SA5OI3QSr1p0Ka+DC+jZRXQSn/BSMdzw/Tmfsua+YaQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSRPR01MB11420.jpnprd01.prod.outlook.com (2603:1096:604:234::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Mon, 24 Jul
 2023 00:22:01 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::e6db:c2b4:3f89:e3a5]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::e6db:c2b4:3f89:e3a5%3]) with mapi id 15.20.6609.032; Mon, 24 Jul 2023
 00:22:01 +0000
Message-ID: <87r0oyb1li.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 5/5] ASoC: dt-bindings: renesas,rsnd.yaml: enable multi ports for multi Component support
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
To:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
In-Reply-To: <87y1j6b1ne.wl-kuninori.morimoto.gx@renesas.com>
References: <87y1j6b1ne.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 24 Jul 2023 00:22:01 +0000
X-ClientProxiedBy: TYCPR01CA0150.jpnprd01.prod.outlook.com
 (2603:1096:400:2b7::19) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSRPR01MB11420:EE_
X-MS-Office365-Filtering-Correlation-Id: ca5ea86e-49dd-4bf6-e0cf-08db8bdc0040
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kwaMYJ3caujx33yK9cVkgI6Fey75bOjx4lFNHqu8UyMAyciiJg6mM8ia55ABsNW4MU+CZd04h5o6tRtSgdJS25/b4mvAbfqo0oT5YiSOFM3FAQ6vm8AGK27nlaUNH7KSZ02JXcBxisVsePuvT4oiqdiMbP3JtbGMU6IVr192YTjdGr3A8IKe9LuEBvrdaecJaCMn+m153n9so6O84dqiMIGRcohM4GTelSOoclUaTJ/eXx9CQepNQw/aUr6IskC5fb5wYoXhahTpyQUHD3ZkY0J2TiYatBFfFA48D1wX32lr5uesB1iUinc44jYQU6PjniTZjkLOGL94Kjq7NBba6tqF5a6JvWFM+TreSMylnf85o5m7abkKjfUtve9dwaHdZNgDEpAPqJL9LxqvOY1kXzOiM7GqAC0RiKPLclHiuDEJudSv9rMzCbDKNhgTk989EeZj2TnQHvEgu4kiLilwm5cg1grHoonu+LG5ovBWEARffnMeviJ6DEcDTVOHLX02ZXUuLI94iCYbCjf3EsV0S7AI77AdEmu02keuG7a4HWpKejj8itiOV17hN53W5w1rPhSwZhWxJvIp50mUxhuQ2A+BjImYhfGusLUxPWukwJFWNKRzSkCMip3qsi0DmsQV
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(451199021)(2906002)(38350700002)(38100700002)(6512007)(83380400001)(186003)(2616005)(26005)(6506007)(5660300002)(86362001)(8936002)(8676002)(36756003)(478600001)(6486002)(52116002)(4326008)(66476007)(66556008)(66946007)(41300700001)(316002)(110136005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aEsQN/Z3aIXENLqzbThCB2BSiVp4RZ4T7ipG3XmyhQydZhLCXB7F1Up2C3kd?=
 =?us-ascii?Q?DMmORF2lqXIVO4L6Fj1vU4/hWg5uHg2UEAxapd6HqqSYjBHx8wy3Za+jaajc?=
 =?us-ascii?Q?J0CuTJ40Fbw0WEhvp//vw+XRitr+JOzL9v3THIRO4aZXGzWBVbAtTGe8tkd2?=
 =?us-ascii?Q?rUitnoXI72DXLPE4LYnQMyBwy9ht0w4VvP6pooLt+xnS9UadYALrmTAMk/2J?=
 =?us-ascii?Q?o2QTx5Nhfno/dyFsIJgrBlNhVsZXknlblIgYyI+pLm8Q/sxJgIm3qFF/kQgr?=
 =?us-ascii?Q?CoXASEyX7JjcVfPpNGYENWvwzhenR0chA9B1e0T3spJ7TJU8b0KXSH9LT+ab?=
 =?us-ascii?Q?R1WGyFXYsl6PFYJKliLzGfSTsOtUOiFY2tXt0D+anmFRVPjaEgJNH1Bl0Qcm?=
 =?us-ascii?Q?jTv2g6vvtVculF5WYBIUW5bCm9z5jb2WTFh7O/3RvgnVpz7BEvX8+Rp/pa1z?=
 =?us-ascii?Q?ve2A0H2nhk8RKgp0KKO1egRjUsKPmfBDPpNXzuzHFZgN6xqB+BEziptPcxW3?=
 =?us-ascii?Q?w/JapCNJhqRgig6Hfa9FjchBUJSpeuqSD0D5v3JEWxgjBEKHUAqph37JU8Ei?=
 =?us-ascii?Q?iS/oIVONL4PnWjjuF1K7kLwzrMyDG7Rv9+PCVTlO3w4fY7NbfaUYmTYpmakH?=
 =?us-ascii?Q?4/zC3v9df7Oo40Cjex3XWq+VKSTJQxBAn7MNFol74B/GXyRjS60cX03Eg3Vu?=
 =?us-ascii?Q?wAELpmx3ZaVzLDtfUN61xikhfeeXF8XTil+72R4hj2ErmyBt7OcIoL8EiB08?=
 =?us-ascii?Q?gN8NosNL4+DbBR6joO/XIxxQZE9ujD4eyhKoDZLVHXdJlHbvfbMKqgbtmDIG?=
 =?us-ascii?Q?JQk/Ish44ruCqJDZxwOwne6grkqHR05GtnOw0yueY8UqOTW3DL9MZKYeFsjm?=
 =?us-ascii?Q?M8y+/Dj884DWCpnw0ssX6WDvx3+11I6veaPFgOGB+QEJuD1BR7B5nCNgAXG/?=
 =?us-ascii?Q?V2opjdib7mM49UZTZvLHM+k9N+V39xt1gx9sbf5loyr/DTa3/LqmcEBec/Ct?=
 =?us-ascii?Q?z72JZHZCaeFXXXPrYxnIfmaQjwxXi1UOqALTXBxLMIpLQKGbORB6KBoaMHBZ?=
 =?us-ascii?Q?60MYi2GIM3qAjnaWkcbS/Ch+vJC/f555r2xgZpB2AFMEAAKSmXYWWCDfagRU?=
 =?us-ascii?Q?Bd/2Jmkh93aHHo3gOhGVRQbJc8IduHGQvVhVT231Ja4rEyxgzOEqh3QHn53Z?=
 =?us-ascii?Q?eNV/D4933kN+G2QHm9oT4PVWcGelbpjHtGtRIwsvAZ5Y6HgLAFA21XOXrNLA?=
 =?us-ascii?Q?zwYHejnitgwrYtaCvHROpN9Iqyw7cVSAX/G8b3w7BBRAu3sxjCwgr5HCL5Y6?=
 =?us-ascii?Q?2inontv/DLp36UZkHHgNkA3c9akjOiAzbWrzRhuYVvZkGjzxsbQ/9jWZy3Iz?=
 =?us-ascii?Q?/Rs1NbQVPEvj1aPg9pMpBJloEMwDqUbY+Xy/nlKrVz9GcLVdvaE0+JOupiRV?=
 =?us-ascii?Q?/t/65Ng7TpgCIf6rnc34a5vuroPNg8x4lfZa7ksX/eYN+xaG6LTW0pfBPzTd?=
 =?us-ascii?Q?cacb5JJL9l5TvUqBxLqSoHtZ+9OrTUpUBqltlpJbmJSN/e+kzBkryE7rG3l4?=
 =?us-ascii?Q?Mp+JY5O43ap2rHL6ioJTa+8L2A7ozxRu+dVtnAhVf9UMI2B0LTHxjVzoMjWB?=
 =?us-ascii?Q?Wsumvd5vjfDBIQc0u2jsf0A=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5ea86e-49dd-4bf6-e0cf-08db8bdc0040
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 00:22:01.7459
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jpRNClB9poSV0lTFWmlIDe2SWpvluiRw0gjYuE2HHSu5hYjFdZl3NL052jQJPiIaXiRK2Gz0GYZRhwiK4qPl7/q//U4t/SvHfDCInw64L5jHnwn8eU4olTdbLb9QTtjB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11420
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To enable multi Component support, "multi ports" is needed for Audio Graph
Card/Card2, and "multi rcar_sound,dai" is needed for Simple Audio Card.
This patch enable these.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/renesas,rsnd.yaml          | 24 ++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index d9808b130e8d..13a5a0a10fe6 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -91,6 +91,12 @@ properties:
       it must be 1 if your system has audio_clkout0/1/2/3
     enum: [0, 1]
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
   clock-frequency:
     description: for audio_clkout0/1/2/3
 
@@ -117,13 +123,7 @@ properties:
     description: List of necessary clock names.
     # details are defined below
 
-  ports:
-    $ref: audio-graph-port.yaml#/definitions/port-base
-    unevaluatedProperties: false
-    patternProperties:
-      '^port(@[0-9a-f]+)?$':
-        $ref: "#/definitions/port-def"
-
+  # ports is below
   port:
     $ref: "#/definitions/port-def"
 
@@ -242,8 +242,9 @@ properties:
           - interrupts
     additionalProperties: false
 
+patternProperties:
   # For DAI base
-  rcar_sound,dai:
+  'rcar_sound,dai(@[0-9a-f]+)?$':
     description: DAI subnode.
     type: object
     patternProperties:
@@ -263,6 +264,13 @@ properties:
               - capture
     additionalProperties: false
 
+  'ports(@[0-9a-f]+)?$':
+    $ref: audio-graph-port.yaml#/definitions/port-base
+    unevaluatedProperties: false
+    patternProperties:
+      '^port(@[0-9a-f]+)?$':
+        $ref: "#/definitions/port-def"
+
 required:
   - compatible
   - reg
-- 
2.25.1

