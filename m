Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4FB6774D6
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 06:25:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbjAWFZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 00:25:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjAWFZO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 00:25:14 -0500
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2139.outbound.protection.outlook.com [40.107.114.139])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AA4A5C1
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 21:25:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PtM2bwg+lOEqvpGsRy8wZzp1zqIlzqA9IGOtqW31O+MO5U2bXlhv6WlPYGfuNzRscqmPlXg5QJd7oMERRyiWyGaZFT6xMIYCgF8wGWr42yKXmh4H3sefNySW7kf+nbh4bZWuLmnH31Q0/sX8iHTT8UY4KxjR2yHWcfPDWVZv4V9wGPtKnxowhPy71Z/wjxEShAI4oGlXZQ+JoG6SiGiscUjnVQCjeJmK5jlmKz9E6Y/mbKE2YMDlEttQTPQggJtyT+RXAxzvKDYeNPTzZVHloyxwuKHLtcq5bDimSeru59bifbZcV1kNl+PLT3glxHG6Jpi1qrJEtW63RbR6WwlWzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X5MPLlBbFpmwgjurwiBp+DrnAlVxl70crzXxOWKoz88=;
 b=V+hiBR8pPs+tcq9xuGS8U/umbEKZ9BMOFOiAoKcE4TMHa99piHJD+SbnoEpWR6M1OcDaWozDkT8elmhbHHAJHXijwWaUicUs44APuQjjMMHkTfT1z72p/kJpfqKWNjVxmmVAwGWrXoMj7608KxMxkpu6ebocoQj8O1G7FMA+uUyxdlq6xff8Mu3IlaP3Cx0y+dGT8JK3zlKF6h6MRMqOOliUFNpxeazvUgcOPPi0dME984g08EUGJLnKH57I+RGfJzC0bfs/kdLLM9yiD3E3ItNStviK1vu6Ae9+GxXJLlQtLxRkRL5tQ020ySoDUJNVJq3b4FoEN/uLYuynJzjeFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X5MPLlBbFpmwgjurwiBp+DrnAlVxl70crzXxOWKoz88=;
 b=KLUb+ycnJ2X0RnTOhjdCwd6GNcQi+aSdhaL1hAzhD/fmjp8YaEhsCkIgmuEjYfo1T6/1EOK+Nk53DCTV/eDrgD/dCkuyE/VM1h4ZRQdtmgYdK5HuypSOANn9/EUTbJ1EBqv6lQJIjQLUTiWIQf1Az/TQiSxYzxjgal3+L9FKcUc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB10497.jpnprd01.prod.outlook.com (2603:1096:400:2f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 05:25:11 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae%6]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 05:25:11 +0000
Message-ID: <87o7qp7rgp.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v3 03/11] ASoC: dt-bindings: audio-graph-port: add missing mclk-fs
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
In-Reply-To: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
References: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 23 Jan 2023 05:25:11 +0000
X-ClientProxiedBy: TYCP286CA0209.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:385::12) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB10497:EE_
X-MS-Office365-Filtering-Correlation-Id: 659c4fcd-2f67-4328-8a8a-08dafd0232d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7qYCMUkrvZV02VtbQ+fTSfAdCU2M4NliOhAA8VebbMlCelvI2g4LG4QKT9B79za2N9YNYy3D+TlF2CGsNaK6sFTM7p9TmQT9zpgKxujYiDLGhB14zXLn2ZtrXl4Ta2ylO2MLtNhLPr2V4mgenpO+Gsfegl8Vli4Pq4aggxwTW4q3DgH76yh15/NnELdRMOjnSIn6VLSkRS4YSYEY+MdEDKoCmM5e6sG6TqTrIFHphe6iblkuY75TwA31qxjItyvOCbGz4n6x/g4mqczfd0ZYsViZX+jyGZflFJiFNpTWOsL3e1VQ8J9NuBc/G2tjf+4xQnxdGF+ITAJDyLVPV+JCwUUYK/a5zE001qDvIo4Bg6byLRvs/ev8b9AA57DZodm3OlbQzLter4lBcDHDw9/rxPiu88n/d7OZTVGaDw7w9pDk88VR0vS//afRxLAKIcVkXVTKGzmPDkFuO3wkyvGLK4zSOYLV6YAypnRoxiFjNtiVjbSEymN/54K8XgEXqUB30K+sS8TjRQjoTWH7RSMvJltScu5X+oK3f/zrVP8qjkHt/u1XtYH95b+VDu7N+KGpB0TF651BC12cNCNWNQGiBG7w9h6+kKESlEmwRZKsoe0VjbERWtYBCwzqqR/aXEn1S8zdf4U/qScQtzyvQBMnTizNt2WrS3yR02JdwaI4gJZ6lvfMrs/IqlAfGZP1fuHzG1Hk+6Sko6HnX7EPp4RCFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(86362001)(36756003)(316002)(54906003)(110136005)(8676002)(4326008)(66946007)(66556008)(66476007)(186003)(6512007)(478600001)(26005)(6506007)(2616005)(6486002)(52116002)(38350700002)(38100700002)(83380400001)(41300700001)(8936002)(2906002)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mUJFKnjhPilMwdmK/N8hDL+Vzt0y7NO2O4muIUT+utSp6fHVQwCOHDX65K2V?=
 =?us-ascii?Q?fKgYBZjx6cazp01MQ1sWMYvlYW6vZV5p0H3vqE6ANJzw+H1cFgQatFUQYrKG?=
 =?us-ascii?Q?zd/r2mznODTBROj55KNPvueiXhdz4ULSKUhvPLuUCUm96y2Pv4TH9YAULm3m?=
 =?us-ascii?Q?EdutEOE6maSWHL6LMkBAmkNkS/42lEB7UhjDQqSuGxna9hJM7AwVHjBybhCj?=
 =?us-ascii?Q?+k4MOVP56TuvAdyKAWPrDPwRsyygVDnk4lLkMYR6jv7cz68jCMUreTZwWlYB?=
 =?us-ascii?Q?DHFFTfbQV/c/qR85FsfDiqIns9jD+RkshxBoYBeTWLrpyr2+zrrs5TkBMH3J?=
 =?us-ascii?Q?5ueCOcNVYn8bxvGpzeoDQhWhhxTYKoWSBjUReONqqxE+ho9oSY2xlr4dsWo5?=
 =?us-ascii?Q?ve44avlyL24WN/hZWLtTDz59HFzA0b8ZF51NwmaHBblfcj1N91fYriOXY1Ng?=
 =?us-ascii?Q?U/0WoL92pOzXWiiVQrIhf2762Ge3+36dq47iKBCLB8MLN1L9t7RFRsMFz7JC?=
 =?us-ascii?Q?aUwKtHrzX970suu5MO6YtkauE0n05UwXAFiVbIPt76fbi0ujK5jtpGCmVxWI?=
 =?us-ascii?Q?5n8wYLzeBMDhnAnXeXs34jyvxYt0l3+0Ggmn6Zdo1R1SzMvRt/bfiGaYCaaN?=
 =?us-ascii?Q?qs3TT3QsUcqkKnJ9Y9midX66OrDI/DewukmUlTMwf/zLd7MCcKOUCh/EA9Re?=
 =?us-ascii?Q?TlhMnh9Y4vpz9Y6apkzyDR7rmMbyH8xY3aEg1WSADAfcmkEkMpb0NQ8kMqbn?=
 =?us-ascii?Q?BnBFLvXcK1GknGgtNH57OvIAzKpwr8RoZteuap/h35nh1oqszkEA1f9DXfn8?=
 =?us-ascii?Q?jF8bfGPxi5t2WWuMFN4lHY11KQb2dUj5ub58YjeHe/AAo3+uqHBie2d54baM?=
 =?us-ascii?Q?i/WrB7ZNLKZzvaKC+zcwlNwgj3SfxyGsHSOOvoNPlo/Obh8AXK2Bwiii1Pcc?=
 =?us-ascii?Q?s3Bap8iJA63vFMSACUDPlnAMlaR2qARa5AANcGVw/fd1Okjvlazjy0F6Z65T?=
 =?us-ascii?Q?NAc8wS+NJZhCiiqp41CDwa0bK30657Uoxrv1EnC4uxnrabJMxvbFK4rFVlGK?=
 =?us-ascii?Q?07Q8sBRLgohJAFTBQlnteqKyxQAiK8qsvcWrTGz+yr3OL/I4NQ/EUnt2LtPn?=
 =?us-ascii?Q?fnHP22qoyptTJ/FjYEaC8VGnqMTAGMfn0rznULLxq0JrP/EbDfCIPcsdAXTK?=
 =?us-ascii?Q?RRZ46HDQFTYaUCnunyqDyZjElK4SBrE6ijUaqMI3p3rBjpXzWMlEB1XjmKST?=
 =?us-ascii?Q?tRkjps4QqOsmcv71bc+a9DMCI7BVk1RhysnPXCv+vdQ2KjxuGm/bX5s3ZfIr?=
 =?us-ascii?Q?oSFMeX68VvPhz8e4kIQulSfL7FIo94DkdolKyb37Qlbvm3KWNo/I21xVGw0V?=
 =?us-ascii?Q?VOoQ9wTqLdfRj+jaMkeVKor9utRDwgmYiA+c5vvOiz/7Ekhh5GcsoLYfLU68?=
 =?us-ascii?Q?WJLKyecE5soTFs79hvJyP6FHqMtjMXmWZX/Z93qySSiQzVvgfncmXgy44JO1?=
 =?us-ascii?Q?UfbqBSbN3OlOC80nm+e8uaqrT1XvTtD0RY5vtTEbQTaNq8y3mwZHc7beIIIt?=
 =?us-ascii?Q?bBbsEoEXpKNO6nWttc/VxRFuADCbyi3a5dYHcbhPBwFtjJDO17K1nprWZeCv?=
 =?us-ascii?Q?OSCkOvUdpkGJUIwZgsghCz4=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 659c4fcd-2f67-4328-8a8a-08dafd0232d8
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 05:25:11.2566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xUXZFORxKdk6GcG2oA51TF9JcSJqQvPKiVdigLLouclyNig+ZDwYVY8bLjmWIkmgIbe9Q72KXpedsycUf11IUonFmD9iz4q2UWg6m3tD3o4bn71gos9h5L0QIJ/VB6r7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB10497
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

audio-graph-port is missing "mclk-fs" on ports/port,
it is used not only endpoint. It is already defined on simple-card.
This patch fixup it.
Without this patch, we will get below warning.

${LINUX}/arch/arm64/boot/dts/renesas/r8a77951-ulcb-kf.dtb: audio-codec@44: ports: 'mclk-fs' does not match any of the regexes: '^port@[0-9a-f]+$', 'pinctrl-[0-9]+'
	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml       | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 6fcf7f567424..036682e55b2d 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -24,16 +24,14 @@ definitions:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-channels"
       convert-sample-format:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-format"
+      mclk-fs:
+        $ref: "simple-card.yaml#/definitions/mclk-fs"
 
   endpoint-base:
     $ref: /schemas/graph.yaml#/$defs/endpoint-base
     properties:
       mclk-fs:
-        description: |
-          Multiplication factor between stream rate and codec mclk.
-          When defined, mclk-fs property defined in dai-link sub nodes are
-          ignored.
-        $ref: /schemas/types.yaml#/definitions/uint32
+        $ref: "simple-card.yaml#/definitions/mclk-fs"
       frame-inversion:
         description: dai-link uses frame clock inversion
         $ref: /schemas/types.yaml#/definitions/flag
-- 
2.25.1

