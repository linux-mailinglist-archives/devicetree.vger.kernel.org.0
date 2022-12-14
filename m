Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3F2364C1CF
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 02:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235771AbiLNBYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 20:24:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236427AbiLNBY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 20:24:26 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2094.outbound.protection.outlook.com [40.107.113.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCBC727178
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:24:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KAFL9BwPBiHwkniQAe237X0311x5aNLkVXStrZbYi23hik1fpAVcGfJtmhuuwkqbxwGAlIZrac2qriEDisPivUQFKMU6kwn3uo/Lgeb/cv0fx37FAp2BvBMUGpLiXkX31j4aGEJMkFtEL5j4pwIA7SgiXDiYKwMMsUjQqsuLG6HV/zMPZJ07atQbzd3/zBKfoJkkGEeTiBBPvWkOt+hGCYx1ma3ZkokrnMy5AV+Pf0NfXDuIq8BcYHkAMrTmJWn6WTHqZcCPznDbhIsgRgC2ZSV+qmFaME+9EDS12fQ94+qOZFwpGVohFt9UDLWH0Ao36FRES3dbv1pWb9wSpqgQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FLyrGKF3fBsJfBKt9lMB85CMOXSG7+CtjnxlhmuU5fo=;
 b=fwuML0zwZ8nrKgbaKT+dHCs9D0Xd/47R/KWecEMdmIrkD7gtxVrN8D7up0iHNBJok/8pPOh4AoGiD1tbss0z/k/GeEJK/JH4ektmDrzlK8p+214IhOt5oPB+gQqwUQMfD0uQ5oPph+kXDFJeNlFJPxrf8wgKTfQ20/i/Df5s1kgDxFtQtVh7iDXJ0GcseEn2dbt6AOrSDJcdjoZORaXC7kLWUAKYZ4X7oV0Zxxmd6biEtgU59ffDju3h8GKweF+Sbd0aQzzoi/U86JHhlKmsy98O9XYTbH9Rk5RUKfStouRzMoLpRleemIf60rsLlTP88MnbjYqkWuwQG8hddfhzVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FLyrGKF3fBsJfBKt9lMB85CMOXSG7+CtjnxlhmuU5fo=;
 b=T9MfJu62b4oJzbq8EyVKjQp7RVEqIoYSor/86+TV5EZBLd8uXvMyRiRIjpOK0G/eJPT3BPr5ihb9Jf9+vLT4MQCYf3KUabqyW/tvg2DAxR4Z6BTIC5rKxeZ7/Cpp8xz02hy46HnwxZDrbpMWkJRNkR28Ug+fbfCxcq7grPBwjIs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB7783.jpnprd01.prod.outlook.com (2603:1096:400:116::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 01:24:21 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431%8]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 01:24:21 +0000
Message-ID: <87iliepykb.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 09/11] ASoC: dt-bindings: renesas,rsnd: add missing playback/capture
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        Mohan Kumar <mkumard@nvidia.com>
In-Reply-To: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
References: <87v8mepyoy.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Wed, 14 Dec 2022 01:24:21 +0000
X-ClientProxiedBy: TY2PR02CA0066.apcprd02.prod.outlook.com
 (2603:1096:404:e2::30) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB7783:EE_
X-MS-Office365-Filtering-Correlation-Id: ffb4ed76-a282-4f92-442d-08dadd71edd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tiFaQ2BfPOvGt9Ug7Zljjs6ZQOziSxXdiMA5OUH1a6+6DwLukxKcJkFSpij8aFTli/+EGZARQKWQzvusR7CwZhK5AEqtjzfMaUxvUVYNNHlHSkbJlyoKgI5G5f5zrJuyAoMJv/svy91/VSM1PO7M79CLlDPtUyddYYG/ESZwhW8kZ9hx2SX++C+QgwsCvvyCNNIGFKWUPI04Vg/uIEE+ex3n9OEwSdrnsjqqXmx9g1lOIL4cpcHWPPi+CZqAdG6xcA5ukKHL3gXlHP0FwfWFC54BetQQbV0rk5LUg1HI4NtR6n/M/0wFn2eKd/4EU5AlH2x5GNQOzTLeRVkyiROXoO/dNyGR0nqlv4u5nPW+ZPIB7t7U5muFraW/4Ptqdncdonxj20gK87CebdPjL/0FPLx3fTG18SycMB5YddZSodTXUXYDze9HLNZympWdSqWk/sEZWz/LXtHAHNulSKM18RiBDxS4jH/VRvl9tXmzDEd4uFnA/ow7rwWv7nWzT2JFSF9QD4BFwsG8IqEY0Cux9w9IjtX4EfAwvbgmW4q8FbwcVzyhoTCpwlhtBekMONaZ2ERzSUkO8sdF8A6G4OSdxWAm9l5qF6G8l54N281RjKB76843yJVljYy933zIeY9u4IqVyEBsN+RUEeRmGB7l6G6IfPzEIr8tPkbGlRoJCVnTn4u2VgAUpCjIYoKpAUTcMG55/ZcNjXLS/IBNorwpPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(451199015)(2906002)(2616005)(54906003)(83380400001)(186003)(110136005)(36756003)(86362001)(66476007)(8936002)(66556008)(7416002)(66946007)(316002)(8676002)(5660300002)(4326008)(6506007)(26005)(478600001)(41300700001)(6512007)(52116002)(38100700002)(6486002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lkqbJfB5jhC0H3WrLPB1XVD8zhNqmSf/jLae6OK4Ovb1jM0IuGv5ryxx4ejy?=
 =?us-ascii?Q?xSnNqSEz5XWnvAMrit52MDVmk3RG4rs7a7J3BIASbwMAYK1x2alW1KKGTIAu?=
 =?us-ascii?Q?OZnGmN/xAzRUcq+jrBJl5k9GZ26hFwtTGAn63xPNrCZiiiYuWsQJL/rEDAAv?=
 =?us-ascii?Q?NjmMZMvAHcxgPFE2mmQ7puh/i8m+tc5f6rxKb/JUUFmjjSBqDCWqLqTJMjXU?=
 =?us-ascii?Q?fEZilCzJ9QKMDLjC9lsFbf5zpra+Y3wTGb/bpFSxvU+C6wBhxbV0RSPgwdmC?=
 =?us-ascii?Q?GLEET/v5rjqCYiAe2YtLiYIQKeye9veVjH7beGnSELk78N7FkzW16zbsMGio?=
 =?us-ascii?Q?iMP7uw9mOiHelQFYBF3VEZojIoMCZvzjFUJ1OhEVmO+a+8esdnv+VKWRqdxm?=
 =?us-ascii?Q?b5S3IKMVjFWLB7hKTlUpbY0bO/YXNsc5IselIeCpaE3XO2yMkrSVAhVJjfKJ?=
 =?us-ascii?Q?mRikhZEW4J7dMvIh6RgIsut0+viBjUnUszhAcms0whfvsdjlvtAi/0OvBllv?=
 =?us-ascii?Q?hq7CZPzydRVkD5faucEtYpUZWzW00YWcRBK+U7lxNo9TVawVnEs4NqNJd72U?=
 =?us-ascii?Q?FtaBpdov2QJ+Gr5qWgFrtvXVZMlLZFOrKy0cWVYOLbm3GxZv3zWRETTYVjYp?=
 =?us-ascii?Q?h3GGeSs97Cejrbodqb3WWsfBKptT8aERy0bEQ8tWr1h9T24/BUNS3AH0gvEM?=
 =?us-ascii?Q?NITbvgiz5/1H+yP52gfS25t90AnltGCJI5H52B3lP/9+pANiCXm3IxHAePNZ?=
 =?us-ascii?Q?SIhN1PmsJUn7JbQM25GHGKVn3tVvENCabfc3HRQ0YIdiNhJOZZf6/6jtr4Wu?=
 =?us-ascii?Q?x1ozZZ+jF5TBlJ2ntWomseL1b82doVcxMDlfYbrtW/NTtJ7PFfYTVM1yQLoU?=
 =?us-ascii?Q?+HwjtMmXPTDXuphCcF15NrCitNm5YxQ+JuhvhrSk7ZxExbUh3JdWdMY5swKC?=
 =?us-ascii?Q?KWdW0B9qY6M8pClqzR+taniozK5buvS6WnoYO3xwmpMrqu5F44ywwC5j8Q/2?=
 =?us-ascii?Q?1o5Mr6atG0XbupG2bkfHpKXse9xWmmsLJa0aM4CssmJO6jrgB46XIMhyQ62a?=
 =?us-ascii?Q?FoqAZJQ13hxraqIJ66v08Zdf5RScpPv9G6ZAUUlaKU3N+wkuvevJFw39QsMx?=
 =?us-ascii?Q?m+CfI80AM+r82ji/2x0980D0aCsXEYXgZyowtG69XcDmulMzuncCq1rslvQ6?=
 =?us-ascii?Q?jtzAVPRf0I/zHs9N//APm/PpBCz0az+o9DwXxjgrqMOfXry9Gh1JBwRffEid?=
 =?us-ascii?Q?fMa72W+ApFx7yfQO5uXNZsE2fO0Aa/ZBiFkNQEnRx7CV5aO+2dlMzEZPe9hV?=
 =?us-ascii?Q?Cix4tUbdR2hkoRrfUhri+00s1N1RPvTeIiwZgdQ9lAIZqpuzEF56dR6P+FTo?=
 =?us-ascii?Q?N1QgTujkgg5a3lH+E9+lzJDUumzFixNNuQwe9uWq9KFlzf6oXft2VTwvxY+3?=
 =?us-ascii?Q?MI8vc1YxlTH6KmtFa4SoZsH9pTYoRtEsg6lL1aFEybjNbLtrKxQIkaP+aPeE?=
 =?us-ascii?Q?UqrSnMXquZYb7bPbvWKd+BA6FbEbSZvAdNUv6cLFJyj6EZ4+JMTmPIqnG7yH?=
 =?us-ascii?Q?292eQSBbaodxt6cTMfvTMZWMBmDDafKcd5jD1kZFqeQTBTTP4XLGDjLZzHuO?=
 =?us-ascii?Q?lWZdODc6QsbbwP9o8k0sQVY=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb4ed76-a282-4f92-442d-08dadd71edd6
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 01:24:21.8410
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8re/7aJlHiJeIB3EpLZZE9WHLYDfiv8hV3H2HgMDJOKUzpX9djMIaIC+QCwXIh6IBA4KpuFxg+AqG6Gux+xV0kUVms1cgNoSLegu5HjG5U9pFgYNCvSybILffdONI2ah
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB7783
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

renesas,rsnd.yaml is possible to use ports/port/endpoint if it is using
Audio Graph Card/Card2 for sound. The schema is defined under
audio-graph-port.yaml.

rsnd driver needs "playback/capture" property under endpoint, but it is not
defined in audio-graph-port.yaml. This patch adds missing "playback/capture"
properties under endpoint.

Without this patch, we will get below warning

${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dtb: sound@ec500000: ports:port@0:endpoint: Unevaluated properties are not allowed ('playback', 'capture' were unexpected)
	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/renesas,rsnd.yaml          | 27 ++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 679a246dd666..637130b7c307 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -113,15 +113,34 @@ properties:
         - pattern: '^clk_(a|b|c|i)$'
 
   ports:
-    $ref: /schemas/graph.yaml#/properties/ports
+    $ref: audio-graph-port.yaml#/definitions/port-base
+    unevaluatedProperties: false
     patternProperties:
-      port(@[0-9a-f]+)?:
-        $ref: audio-graph-port.yaml#
+      "^port(@[0-9a-f]+)?$":
+        $ref: audio-graph-port.yaml#/definitions/port-base
         unevaluatedProperties: false
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?":
+            $ref: audio-graph-port.yaml#/definitions/endpoint-base
+            properties:
+              playback:
+                $ref: /schemas/types.yaml#/definitions/phandle-array
+              capture:
+                $ref: /schemas/types.yaml#/definitions/phandle-array
+            unevaluatedProperties: false
 
   port:
-    $ref: audio-graph-port.yaml#
+    $ref: audio-graph-port.yaml#/definitions/port-base
     unevaluatedProperties: false
+    patternProperties:
+      "^endpoint(@[0-9a-f]+)?":
+        $ref: audio-graph-port.yaml#/definitions/endpoint-base
+        properties:
+          playback:
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+          capture:
+            $ref: /schemas/types.yaml#/definitions/phandle-array
+        unevaluatedProperties: false
 
   rcar_sound,dvc:
     description: DVC subnode.
-- 
2.25.1

