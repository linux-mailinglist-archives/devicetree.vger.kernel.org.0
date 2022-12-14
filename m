Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 742BE64C1C1
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 02:23:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236608AbiLNBXO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 20:23:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236149AbiLNBXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 20:23:13 -0500
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2092.outbound.protection.outlook.com [40.107.114.92])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD55717A91
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VtNWio3wQiHR7sMpuzqZq/D5SMbXDKPWeXrn1tanma1zInScC9OHaGMPJVfljVW0PxV4ZbUPPmvfGRU8kSRwJnvai3lOmiEozf0om45z+tYBstl3J0v+2EeGPzLs7VdDGKArjqDcpXCEpdKLUlB4I3x4v2aQEeKu2NzooKFrjFuiRgelzr973zivbfQmgedu+3ofrGv0kR3UbkPRPNr/MgI0Un+1D3/6w3NqqI8ICwS4lQwC/fnXHGV64lbpJLhqJMEOd+hqEM8+VSWm/4bIlgs91HavX6gmEv6cVtBvLgXmEDxZLc5rfln6JTBOJWLHUxDk+NCxsu555VLxUdwcUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pAK24HmgrpC6eVCRtO8Gzltwrvwlsnm1Eg9N0Tusp1w=;
 b=UL0PHTbSKmIE9M02xY0bjZxKGiaohQy6Ps9YcNoWPQTQXd3HWcGdtR3hbvTQWvW4ros137870ENRbKNWugxrO/4m32gCIYOjSsRI4+fFSzrGTLc/RMj+CKQUfN7cmw5b8u2kmpz12+cAv0syQAPySexssv+LPgKUvxD389SEeE4vDHPnXVKV9C2I8GWexC2yNbvSVa7eMNezWANp7ziETu99J/6Yx8TW9fmNGuspNmYwZI1C4Fva1Svv3Ao2mZsO8uXPwe0CKyjMAv4PRMeMBVx6AB0FhG3vhSxMeCy2yozX0oS3KEo8REPs5PSFW8YQSnnPQEO1xgwBPo1g0C2I8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pAK24HmgrpC6eVCRtO8Gzltwrvwlsnm1Eg9N0Tusp1w=;
 b=e/XQdqmyHtqQRfjclPNJfKG9Xh/jXZwN0uDG1D3rApcjQWLWN3rzk3H2VwUl5RVrSiYVUrzBt8y31w9x/bLM9um92smwZmZX21EaBjB3qWy5iCr4GRvwtV9VMQKJpot69JUS7giv3fu3FOZ7sB7rUwexA4T0r0Ps1DFSAHWpeuw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS3PR01MB9898.jpnprd01.prod.outlook.com (2603:1096:604:1ee::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 01:23:10 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431%8]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 01:23:10 +0000
Message-ID: <87o7s6pym9.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 05/11] ASoC: dt-bindings: audio-graph-port: remove prefix
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
Date:   Wed, 14 Dec 2022 01:23:10 +0000
X-ClientProxiedBy: TY2PR0101CA0003.apcprd01.prod.exchangelabs.com
 (2603:1096:404:92::15) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS3PR01MB9898:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dc49748-aa96-49ee-3f30-08dadd71c36a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gCHMHfHl9KcaZZSnkBnofVtKdl5IGT5wtzWAmE/UZrYSEWkffHK37Y/5XcMyZ271a5nYOUCHKXle6b/ggyJN4xyh83Th/P9a99HvYLrKLqN58UE+vuAb1gPHunTBOYTF+ZPQg6iK1/wM+MCvpu/q/niAWi7mz/QWXo5uWIbkRMEU1Pfw6EmVviXuModE+S66nH5/p5aFMOUY29nnoMGaXlw3dD1J0G+e/l10IzCjvM/l9uqS7DVpvZ1Q/ZIp7IpB1YWFn/jgd3QcuXKZ5JL2StaAZAcui/gyAH0XuMwJlLbF9TOoHaFzkYePyhRWsKPCQOaJAQsZNLlpTZXRgmYUYJqSvMhY2ZRAC4syXxAxpCljKWIlPKIHy+woGKUCI6y/rEqPZtpMe9cCIQ6lBDhw0iXDmy/nrmDcSCHTPQMUuiYSY7DmWpqzMKzhRk4Vu5eoBcIgKDvo/v8GFx3Y+yI/3ECaEbZ3U1RapLcv47Z0gSvpogfpetRc9DK0V+A37LtiYbFVUEneqSbHCG4ypLOjO1DmZwZHocZaVXlCJjYKja1i8Xe9T8BhJHZpDzdn0fU1FIt2rsT+1xKjLumU9PGpYgmh/dEpnXZvWj5eIZxjNcLW0IlRXlVuWV88P4IIdsYoeYWYhl6HhkbephsV9+JQazf8vq0fjFVXjYxdqJhqS44WkZE9Hlqduuzqw+1Fc6YuxmPgRgT0XxoFJg9n/2Clbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(396003)(376002)(39860400002)(346002)(451199015)(110136005)(316002)(66476007)(54906003)(5660300002)(8936002)(7416002)(41300700001)(8676002)(26005)(66946007)(66556008)(52116002)(6506007)(4326008)(6512007)(86362001)(36756003)(186003)(2616005)(83380400001)(6486002)(478600001)(2906002)(38100700002)(4744005)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dpCrMolE+kRcOKUQcopWeQsl7ktB+bly8vM+Gu3gD5xMMQNNZjB0H0ZZR410?=
 =?us-ascii?Q?MFaDAkB+TMUkhy5NDANhFJtt7WoJsr2q1wgnDmdxDBjdY7BPKHwZww1ZtdtB?=
 =?us-ascii?Q?ZJkdrCNqlWQdpEpkt5/Zuuh9k19Kg+oJvTgQUebwAksOI8EZv4xKsT48Kwfv?=
 =?us-ascii?Q?SvxKbQpHjJIfiaCc9cA1FjDxyF2HU5aUhkh7tkdlkji1nRCxoGlLFH55SASR?=
 =?us-ascii?Q?SjZPWjx8jMUam7497K0toiPJJNYOtT2pGZa1CuEPM8yPx072llJjtNSSPhPa?=
 =?us-ascii?Q?P+OK1mSnuvlJUX9MRK/TY4y8PdfrCHLYoj709I+41xDwmoWLfvj5ks4cRz8q?=
 =?us-ascii?Q?JAKUHOQWWgIOMJD8y6KsvCw6PcZBAnKLd6j/rWjpcxguYZsNbJny+uWxM7L3?=
 =?us-ascii?Q?LEtvyc275O0W3HBrFVAKn2TZKPDXvuidmxYZlUVUzZuEzBbytmGErr6uq7j8?=
 =?us-ascii?Q?fNmqVJdc2AMO7UjNZBdDQihKUcaCp6LV10sDaEueGDEVakKp8NQfyWTWYBpk?=
 =?us-ascii?Q?MmsDJ+0RF/evlCGfMpzPTqIM8i3rQEJNwWc6LUzQJCJ7RkH9YCWZtpwnTUtT?=
 =?us-ascii?Q?zYEGRx/JTlkg+hFKJneti4t3KdkpXa4tjddWPCY/8cN0akfBJIt2RFMh4fPL?=
 =?us-ascii?Q?1zHE6YfLmBzZ0hfkQ83wMsSpUbXLOJsivwZ2v+7zpRIcOVIMbV/jXyYF5Z6F?=
 =?us-ascii?Q?yX9sdvHdTiwJWKNqe9yBDg6BfD607dYqic67d4BehSbusWJ4yKXctEE41pUE?=
 =?us-ascii?Q?62wrZNP+M+ui+tsnWjq2xxRETFEdPeuIjr+Kt6ZOCCP6OYyE4sr3Xe8qz1ZE?=
 =?us-ascii?Q?BnQlne4TerRq8adySrbeH5XhiZs5z8/F/dNk8i0qEYZbkCDfjhZtwu6sOX75?=
 =?us-ascii?Q?AbHtnigqEVzzcPVMciq/lF5TW/CAOQH51062n4a6kGhURsYNH39NmNR2k0eq?=
 =?us-ascii?Q?AOx+elyfD11YJUYVN8GCsO6xNibBomnIl0CdbyoyvNr3mJ873/Gtdv/KQbMf?=
 =?us-ascii?Q?73T47C4m2ZL1MTAezGS7GtoUoUK3JVEsc1tgvYops6JqU+dkgcKynZKrEsom?=
 =?us-ascii?Q?ulW42eBdLbsXwwf84EHHqhkRN2qHTh18oT4SbtnQ4ffYSi4pKd8onP8pPFls?=
 =?us-ascii?Q?vrAyZT1Yg7JMLMgI6ydY6nOjPDDONtzfubBw/yEzn0uvRXN2g2+5g5RXP/Nx?=
 =?us-ascii?Q?hkx8Zv1OzGvlguJ58C1oih0ebFhFv3Zk+UKhi3UcoQ8Tf9/vqedPbO2hL3k6?=
 =?us-ascii?Q?xTNrzglMe//YJ7k6ljDCpt9hFvQ8hKOgFLQCLszh+i3RIpdQ/QjU/vyLpu9R?=
 =?us-ascii?Q?b08cr7At2IJ0hplq6lNbN4FyjWCCCKuUlmQuZ7iETVjrEbicVga7KfCJEj03?=
 =?us-ascii?Q?+WrgbspSEXeqNlAZAwmOTS65nOVzguKRV0LnFARMrlpNiDaF5Aub1Fz3GNtg?=
 =?us-ascii?Q?zc+HdtMtAMCDMwQ62vWUaRp19veJ82wKuDIgDdky/Mgv2cHFgPOCOS6hcH/6?=
 =?us-ascii?Q?PV/JmmIU66XHB44aviuuSNJjPrUqGB8Vx/v0hHKBBk+K1OJxWNXT38N9ka/S?=
 =?us-ascii?Q?7/QadlYLB6bu3kC/TK1aRRrFkbHfwem3Wu69Caf4goLsd1XT8cFoCEmovDFk?=
 =?us-ascii?Q?Wp+FFIJcei3hD+EVEtXIEVs=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dc49748-aa96-49ee-3f30-08dadd71c36a
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 01:23:10.7003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ds8qoPlrzJ6z+mBhFEh/YyZTuugLDfoG3MdCq124ee15w75c1l2OmvonmGjRdL5KjAdU3C729V5Ot0VaKwM7kGgKny+jz8sn07Lj2o83Sh54WVwC0KRt8YMw6hsm6X/W
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

Audio Graph port doesn't use prefix.
This patch removes it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 37c20cc8dc36..25e9fe9b0df4 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -15,9 +15,6 @@ definitions:
   port-base:
     $ref: /schemas/graph.yaml#/$defs/port-base
     properties:
-      prefix:
-        description: "device name prefix"
-        $ref: /schemas/types.yaml#/definitions/string
       convert-rate:
         $ref: "/schemas/sound/dai-params.yaml#/$defs/dai-sample-rate"
       convert-channels:
-- 
2.25.1

