Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A47164C1BF
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 02:23:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbiLNBXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 20:23:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236287AbiLNBXD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 20:23:03 -0500
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2111.outbound.protection.outlook.com [40.107.114.111])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E441E23175
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:23:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+0TJZ543sQ0iXbSPTYQPcZlmjijga62cYKbeG6qOkcz39osicQzhF6pYZXHXdZ2qOEHQ0rp9hl0vHtdmJRBARs2Yt9iLJ3mRy3LvB/yg6fFyWFrdkbVjr9nQC2BJSlQ2ewIbGzebl68iQfY2kUxmKI4T6MB2h08tGBuh59xopizM/mFEbU3T3wF1GuWDfzQd8T8C+uLePNYaLxVkFXnIm2xjsQTjCEfSCY1LmEbZ1OhVNnBLYA9shIjYy3zYLxKxNOr7CJpi7pcLxH/zhJWHyUmXis5+KWPv/XWcf2eHy34Ox0pbS93BwaYcVaST0I0PWZRRfmg37lKrSXMhbB3gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHkdBje2EH85OeW+sm3AncWADqF/1kCQOUIx0l0/Juc=;
 b=nR2zul00GRj3PhSthoyyWQZzUrv+WZHNEA0God1k3rcGOss/lQyM1g8MHiBEcGvbo0kA7P5KewPYBkGx12ZUMfMZPCsrJdDKBv7alC6/3b5KbmUnczpoeD40ESfxVWoouH5YKnOm15go7NvbyoIRih42s98v4oJiPBmeiosaVmGs2HV8srsq++wMe0AfRyyfZqPk/0SUs59mhOaeVBbfgkgVK0dFkdkOHfKmMEvZqKHUDNNE7iFJwKreua98uZnz0q3gjoZefMQDTXQSeV1VBdx7vqWPJkXpXOqYSev6iAYowLAJa7XX5bQ7F73CuFvLBZAleUEu/8dQDQ1V1IjFdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eHkdBje2EH85OeW+sm3AncWADqF/1kCQOUIx0l0/Juc=;
 b=HPHHM5ysD8Y+QcmBeBb2oLbcp0JBHMB2V2g09eH2erKjgIAw6qlNkTz/PDEn9iMls15ML3THZdX+Kbx3kS616ZRltkL/WXxIlB72enoj+ogWoWBmv/kGLOi3KWutuEfHMf5H1malVnbCq4zcckn+LCjgY4howvwqoBSfhuL1jYk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB9898.jpnprd01.prod.outlook.com (2603:1096:604:1ee::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 01:22:59 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431%8]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 01:22:59 +0000
Message-ID: <87pmcmpyml.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 04/11] ASoC: dt-bindings: audio-graph-port: add clocks on endpoint
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
Date:   Wed, 14 Dec 2022 01:22:58 +0000
X-ClientProxiedBy: TYCPR01CA0021.jpnprd01.prod.outlook.com (2603:1096:405::33)
 To OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB9898:EE_
X-MS-Office365-Filtering-Correlation-Id: cbbf3add-a25d-480e-df90-08dadd71bc9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9KsgRXxWb3eD+nhvlCY9pVuFHwpiRpBS+Ra2piOIk3Ob9DneOw/em+ZGmnfRRbDojOwFNc4fL5aSOI3LFuoDinzIuv273k1VQJ2koRsUYwTvBZgvRPqq/HAwFJQqh/5VioFMgpVt5biotDjqRdOIWd+42Bx1v7d40gweesIJCUNkHCH7qlTbTs80kOcUJJh8Q+81/Sn7lDImzMchKK5/mrOcTsLxvHmol1FrL9F5Ow1wEtfWShCPPvQ0tpkfE3+2qyitKeOfd4b6N2SdqkYL+8dfITdDD0EafPghuwyKBlQTBQwtsHhRTwJOhp5P+eIXiECxtxSnqMQGHUMuAp9jvNrjULtVe8SS6ik/o+7zYwbzPnMo3jL5IybLJTHUHL87pur/BFG6TwxTKmZRghj4IMTy2H3w2y0Akp4RIbWKO0O3b0haBHEDEELR9qtp08Bd3pJfXRlss9jmVNkWZ5eycZ2SEvp09wUYUTeEOF2o5OG/UapCC9RrXQeiP94cr6IijMCmJTKeclyS0T4Q+G7VWAuuN0ggSkaQo/BAOBef95R+aKUc75RW1+ocp01uBeoR56E7y81J1fjlEGyc83U1UJnl++E//ABCLEcx1qLll/7XWOSDxr9h/yJqxagqhCSgi2fF6Gc0BWGqshe4zL6lqa1cG6FHR7C2JAnoUYYoLn3s60tUVHiwyzEgb1C4Ch+XeAzFi3I1LCsjFLh/YMVnnQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199015)(110136005)(316002)(66476007)(54906003)(5660300002)(8936002)(7416002)(41300700001)(8676002)(26005)(66946007)(66556008)(52116002)(6506007)(4326008)(6512007)(86362001)(36756003)(186003)(2616005)(83380400001)(6486002)(478600001)(2906002)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rLcbZM1+/pc20tDiPxwWiauexjplnuqiip5LW6RSR5DGTK3awDknwiR0fGZO?=
 =?us-ascii?Q?Ue4KGQzM4aDfakoj8UAot72RgfbBWwwZt/ob55lKwngxrH36hCCMkyL6ZXsi?=
 =?us-ascii?Q?hrnGWPzg+es83ECADLJ/Br3D/WXDyTl+gjBuy0NAQGik1FWJuVbYhs+PXBFb?=
 =?us-ascii?Q?UQSmaMkLP+CSEIM9BBa0s2u9mcjJ30x136V/vUuczgjjyQDXqfh5sKq69cbz?=
 =?us-ascii?Q?KEXTskHskWrYU97rSz7SbCkX42LfcXfbMGqYRaO6M6z6cxbJD5rBX/UhCUI8?=
 =?us-ascii?Q?l3EVmZ7eT7E32EfpquzRmBVKoif58JhPFoQFauA3XZg9/ihf8Dqwq6mcHzuw?=
 =?us-ascii?Q?FDypVoTni9TchQYC2Vbwbc/Z/AuQ+2OfBxcFjFvAeYaAr7JodxS8yD6QpPkd?=
 =?us-ascii?Q?5Rc8PV0yPUBfSEyhVO2uTlyDDWNUWSaUMmtMRajyx6KGJOLiPCHonhYhfTd4?=
 =?us-ascii?Q?Da1eTANU0wmTuFmsbtpKUhutk93MscWRNwpBB7SCO3oEccuU2qbDidsKrJVf?=
 =?us-ascii?Q?Hqdp0QsUyxcG3q9CZNrHPNfY5F1V4zJQeNBCkuQ+dykA/pc4tiC6uj45Gp+r?=
 =?us-ascii?Q?sLfogPgbFTwujhKG5MI9214K/GN2NSvsDFP/fxovEhgaHxxIcsz7QJj0+wFJ?=
 =?us-ascii?Q?VC6yhgB6vjL78QqGa3j5lwvGlB/tJmffDDU0lR6KwlIib63dvV4qbO6X0Ztg?=
 =?us-ascii?Q?9q9U0HSL6e8a0EO7/wC4lQuJ4t1076yMXH0eOUn2ZkuyZOptkiQcHyBZtU7X?=
 =?us-ascii?Q?oJqvCGS43VCqFZVlTftQalSH9EGqZKNKKsXXmxilAIB6315tYUH4rahP1Drd?=
 =?us-ascii?Q?UYcdDC0mqc2W2YwXxe7vy9YJkRHg6xUOfA3zp3Sr+m42XgqnZ2wa2PXNBkmp?=
 =?us-ascii?Q?ZEYtgu9xy+SAoTqw50CPN+PwD/sYxGeecCp1qkp0t2hl3eWyoDzGGUBfQRTc?=
 =?us-ascii?Q?fnN05qfSQ/ur3npT5bIv32Tz7o72rEyAC0aBSw+bvkhs0vlGRdfTz//ArwLz?=
 =?us-ascii?Q?x4UFE1Bgb63WemVEch1lkcdKWbv+id4RAMNcLr7/o6dru02qTdAoYB/oGR30?=
 =?us-ascii?Q?GmXnEZCVaaPc4HZL7HZQGx3SQFYJgQFPwM9d7eiKZelayXGS69HxPbOKYsZg?=
 =?us-ascii?Q?pWfN+qTCzrisQHMKnToObj+xZNuUU9MoLWkagn9YPh0KJzO+Y78dVSltJtB7?=
 =?us-ascii?Q?aFFUy2Jkg6AjYURAYUdFZIRZsyCFH2XUimCTJ94jR0MhU85OIoh8gmoar6Ph?=
 =?us-ascii?Q?XQRLeacYU55C7D68v4OWUjrOtm/qmN8wfwLgcuyN/StEEAxbi9BLUUlrephW?=
 =?us-ascii?Q?rJeQqy3hBlSd0c6E76yWJb9IiBtuI383v7FpBw46YgvzkT/aXgD82xStY0rB?=
 =?us-ascii?Q?beT39Dx/VIpsohTWPXQZcTM8y8ZxvFh1iM+5rHVxIn0VBk0NqN3K/evkccqo?=
 =?us-ascii?Q?5kZ1O3Ze8a9BIXShuk56WZND80T9/vhJeuhI1UT6ZCX6TizXYW/Z/tfs0z8S?=
 =?us-ascii?Q?krDQq55sRlKicba4c3otxEmFLAWWSwlxuku3KmgXUl2uTX4RjdliP75P1epS?=
 =?us-ascii?Q?bQjFgtOCdm3ybaLyX1L5ETad2yKwavV+m6csoRm6MBl5g8GlSoMlrQxvpDPE?=
 =?us-ascii?Q?p9D7RKpIY+AePwA/Rw+9aI4=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbbf3add-a25d-480e-df90-08dadd71bc9c
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 01:22:59.2893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O8f9ggGer7p0Vwdcx2/ZUcpe9hd7onneoLNjaDKFRRipoENGBZpazOVXZfeGsTHAeMQtLiGHHqEuaBGJu1HVEXPQJB7cqR6hS7nVnr1ZE73NTG0Q2qNp5W/2equeMWWh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB9898
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

Audio Graph endpoint is possible to have clock, but it is
missing its releated properties on audio-graph-port.
It is already defined on simple-card.
This patch adds it. Without this patch, we will get below warning

${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-ulcb-kf.dtb: audio-codec@44: ports:port@0:endpoint: Unevaluated properties are not allowed ('clocks' was unexpected)
	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 25f7204c7c4a..37c20cc8dc36 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -48,6 +48,15 @@ definitions:
         oneOf:
           - $ref: /schemas/types.yaml#/definitions/flag
           - $ref: /schemas/types.yaml#/definitions/phandle
+      clocks:
+        description: Indicates system clock
+        $ref: /schemas/types.yaml#/definitions/phandle
+      system-clock-frequency:
+        $ref: "simple-card.yaml#/definitions/system-clock-frequency"
+      system-clock-direction-out:
+        $ref: "simple-card.yaml#/definitions/system-clock-direction-out"
+      system-clock-fixed:
+        $ref: "simple-card.yaml#/definitions/system-clock-fixed"
 
       dai-format:
         description: audio format.
-- 
2.25.1

