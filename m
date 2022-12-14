Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA1F64C1D1
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 02:24:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236427AbiLNBYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 20:24:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236404AbiLNBYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 20:24:44 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2134.outbound.protection.outlook.com [40.107.113.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C832715B
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 17:24:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9e9jJIk40eCr5tPa6yORNNVzGqcrqLQJyyfMPZjp4DdeJOXM9u7ZgFQ3Saavezx4FFlT7Fl3Gzm2ntZacTDPXGSA9X3bXrzrIxcPJPqiSNwmweWYsa57EVX+2kStAkYVNAilsjxPVtnZ/G5sw3zyNy0uY0Ai9EKItwXShtEKUZ3rl9HCIGdTt2w/TZJW1Br+JibIu4Xr1ekfdENnXhztUdE3/ZkN43Qzq2/D+leWUVoLD8QhspzR6s/DeGppvOpQn16sXw4rZXj3h09mEhfv9cTpcL8wZTi8oDaSrkEkpLP1t0rS5rv6NnbP2TMEtLpNrFu6IE5smPNFymIDLBwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fU4G3lvHqKcHde+yGMcbmrVNr+IPIDZNr4/bdSJq6BI=;
 b=g+D18RjITvj+Vr7Dy1tWP5MQsRRZxbtQSwv6Y6QtHIp+P3Ws7LWlZ4LONue8EA3MB+4tCrkRatTXDOIyGShZPT7/hqjd1Df6USJiC2Vrn6KKQMBzjGDuoqmrCfqDbaJxSYq03efTDLMy5Ng3tv0eUddO98R7TC13tvE6/aqOi0d25NLkX4L2wUUQdJJTYCK2gobJvKR3B8nU6LtF+LaW9CEMjObCqcVfTRsUfck8PNysEMtZq0rt8735u3kEmEkHNtZ7X5nxqCFF8cB0vVO5Br6TP9LmPUlWwlhpGMUlcwZLaT3+v0UWgBftehdsOkfEdEdAGjbPZe1MBuDJN6KKkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fU4G3lvHqKcHde+yGMcbmrVNr+IPIDZNr4/bdSJq6BI=;
 b=fjzviKa2IeAJFwmIxtz0XumGSqU1d0c29Y+UMssOtrrdhEpO/Ya+5+hfJmNjwipCJYBYv000YlkfHcmiuMq2eHqtdkH2agr3AqQXmrG3frK6WqZCvxJOcqdbGYQqfTZbvlEY5MV9F30EOeUuFqVrnWev+e4TNSpfzlgkgBd5X/g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB7783.jpnprd01.prod.outlook.com (2603:1096:400:116::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 01:24:40 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::a5a6:2344:db9:431%8]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 01:24:40 +0000
Message-ID: <87fsdipyjs.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 11/11] ASoC: dt-bindings: simple-card: add missing #address-cells/#size-cells
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
Date:   Wed, 14 Dec 2022 01:24:39 +0000
X-ClientProxiedBy: TYCP286CA0192.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:382::18) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB7783:EE_
X-MS-Office365-Filtering-Correlation-Id: eef51fd5-86dd-4c2b-4cc8-08dadd71f8b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FEJH4qCsdVCbOVQicUsiiVphDlHkzxGMlBjDS7+Qj5SIU8/vc3JMLE7Q5+jYsgoyNpGy7k4FHgAoWs4ZynBPXRHa0SyAjVNysLJcenPhrPsgsaDGAi6mp0RkS7jmwru32NLH9Ld7Ziz9/cQjL6LrjT/+eN5CDs498aQpg5HhqpmPZ5NEiLb/7nBLslS6RIQ6Z3Bz5JHWKd/1Kg0tPa6cWFz1Ln3iiaIpvY85u5Fz1p6ca0/A/PQnpD+tm0qf3a4PFA2jiLA9uqXaw5r0dtIWpma3w7KJ8ZWrvUKr7S0v8DiVOF1VLcfW6/xAx2tjvZPIPMxrjH71YHQ9LIhy5WcsEIoCN1sBwi/AGJhHAFguFktGyGe8IDZ+KXwoG7rAZDsJ5hGBT0qI2+b8qMMaGQIp+B0hajOZeCSsjABo5nm38g0ZerMwv7qqVz+FdIeFigmgDb31rt6DzFk8FTL5vgViaFycIydwvXVvtAi+XI9046d9OPpAlmVa4dfeEodzFsTaPnS7MWATlU2acMUeBukmUnRxyXYocUWEwXxxAbk2f+IJVI8/LXbzbFAB+QM/e8TzSZsr848RrYSk0Ua96CneJdnE0VswKqXxwFqWkynYgOiFMdbAXrF8N7MiLg0MT7GoFfGtkYyRmjcvuULYbHjB63edroaKYskwIzL58LbgD0XDbPpG5v7IWfITEw6gcq4ZxoC1on2o2JzW4qxE4VUZOBgweLUa8MPo8SsTwVl0HTs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(451199015)(2906002)(2616005)(54906003)(83380400001)(186003)(110136005)(36756003)(86362001)(66476007)(8936002)(66556008)(7416002)(66946007)(316002)(8676002)(5660300002)(4326008)(6506007)(26005)(478600001)(41300700001)(6512007)(52116002)(38100700002)(6486002)(38350700002)(21314003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oxxizVjqjLSr4aTbAxs5qU+6hH6S6FonKuuDH/XSVI0zoO+3FGEykwD0kNyY?=
 =?us-ascii?Q?zd/T82SIUFkOqiqvefpIDSnC2+S6RHGI+E9FLHp0+FttfXis9Yh/lgLO/bfE?=
 =?us-ascii?Q?B7pR2vOdT21YHDNlwvdKlHLC5H5G355mGY53FDQmtZmKU1pANtIZ3kmttAvw?=
 =?us-ascii?Q?MtyL8oTKaLaDZ4Fwz/FqW5npywlcfwXNw6MMd+Duoa29ijWOwqCokzTritYu?=
 =?us-ascii?Q?9GdzfsjKtcGKRiDXkLnWKU2bUTdnPH5guXEtw+wwZ0FmLqo7iGj0JpobRcXY?=
 =?us-ascii?Q?uy77pnnA+VQwqzG5aVcwYsvBKrREmBE3C4sRqEYELWTO7oRcat+M49mfSWlV?=
 =?us-ascii?Q?HlB752IvFpM4bs3yIbEahgreLQ1tRLq7jWkmOXSHZk2+ZL1QNknI4AiWqp51?=
 =?us-ascii?Q?Avd8f9hknM20XAKrNXbNcEjplnrhU78Y/rc9s5yLPEyXBkUi/eumHs9ExfMb?=
 =?us-ascii?Q?W0Y3CkcSg5NxJxdyoVZc8BrBj3vBpz7rdURFvQMuXnZx5FSsD38n4cqgd6me?=
 =?us-ascii?Q?5116l65u/y8PMTEIdj7UBN2vMalhs9XwtcKQPgLEbPgFeZGAXGEgkYO3zg1b?=
 =?us-ascii?Q?2OrNmz3yISYU/DUy555sFMV7P0tyZDmk88u1Pgo8nem14rSHNTmcOx2t+RPp?=
 =?us-ascii?Q?wNBM9NzR/bomQPmbp8eKHE7ea8RxDmYiF+fg5qXY3TLdAzcfhjK8pUkgShF7?=
 =?us-ascii?Q?8XRlzd/fbr50jM7bfPadpR+ec1P4hVh8OcBM22+ZJM9jMjUNP6oMzVMzCZE+?=
 =?us-ascii?Q?Vto9TJPsLeqBeR/A8IbHmgs2TDvwRTv9ewgmOIv/1gOdgtRRY3nxt8xS/OEr?=
 =?us-ascii?Q?X6IVaj312QMf4FwPEsHAFhY04DSc9Z3w1IFhPSDioGCH72y1YPYe3fgYj4As?=
 =?us-ascii?Q?XmFLQVA9Gt/LErJhWNHQAkFS24N+NvJk0RrfSGfO9jdD2TKEmlYyIbG24CCG?=
 =?us-ascii?Q?uBt+Nb/v7BsZmcXp6vkLFZMRi/+31jDDyL7CCwLabg5DwWeb/5ygVpJdaZl9?=
 =?us-ascii?Q?xybw/EA1hnni+etYFWFQR2z1j7B7SzSnAyo+dO8JuVIDsM8YTHgW+EEv4Q9J?=
 =?us-ascii?Q?ALzHtR+VBmXpWJr88hBiWL0z4CsgDEhJ69kcxBRka94NMV38w5dY+64dlks3?=
 =?us-ascii?Q?NW1QExefsk2iqP5d+tCHA1GkJq9S525s9DHdIEidC3DjaGYw/PdxgnnsUHmG?=
 =?us-ascii?Q?oLc0ttH0g1QtpFamUlVhR0lwg/AVWbLUqDu4qMcT8yTSupPWgR7vf9U/cwVD?=
 =?us-ascii?Q?jfWhphoDAnW/9J2m4NtII4omHqsrVV99wRffu3kXpgn2oPSGUBfCgOSc6Oe/?=
 =?us-ascii?Q?M1L4+c/RspUmAHO1Z6sUS/f7cMm+nLfX/96EFaLteezcybpSPheMjI6F1GbT?=
 =?us-ascii?Q?vdS68mx1igdcVQHHJHR051ayyZ887BIZOzDXuf5VXCb6GONePl/3hbfXh+54?=
 =?us-ascii?Q?Bi+Atb65Lhpe4s2YsvD9RsB0FCgxdzJrIcACRsSPiDMIFL6Saucco0/JfrtY?=
 =?us-ascii?Q?zyCvhLSXt6tmLB8qlzJ3MsmIjMsWpychjCiwPAdNHydNTBQCVBe9djND/GhP?=
 =?us-ascii?Q?aizPUEb8NpNqLiuhM66095m1Ti6Yvib6rauOiN9bLV1Zcat+B6dhWRLKxf8H?=
 =?us-ascii?Q?d1o8Qk4jFgTw6jOdZQLEau0=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eef51fd5-86dd-4c2b-4cc8-08dadd71f8b3
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 01:24:40.0983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: faE0zpG0d4Wwdv6YOGKpDz1wKoa2SzL0GOxu/4r4HFccjfx904AsXU795EEqZjG46TWGO0kr92JKkjB8opuaKAh/1239J4MeIHzSG059s4wGMFV2PdQkANiKbmToP+CR
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

In case of using MIXer with Simple Audio Card, it needs below DT.

	simple-audio-card,dai-link@1 {
		cpu@0 {
			...
		};
		cpu@1 {
			...
		};
		...
	};

This case, it requires "reg = <xxx>" which needs #address-cells/#size-cells,
but simple-audio-card.yaml is missing these. This patch adds it.

Without this patch, we will get below warning.

${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-ulcb.dtb: sound: simple-audio-card,dai-link@0: '#address-cells', '#size-cells' do not match any of the regexes: '^codec(@[0-9a-f]+)?', '^cpu(@[0-9a-f]+)?', 'pinctrl-[0-9]+'
	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/simple-card.yaml

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 Documentation/devicetree/bindings/sound/simple-card.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index ed19899bc94b..a3d06e96205e 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -215,6 +215,10 @@ patternProperties:
       reg:
         maxItems: 1
 
+      "#address-cells":
+        const: 1
+      "#size-cells":
+        const: 0
       # common properties
       frame-master:
         $ref: "#/definitions/frame-master"
-- 
2.25.1

