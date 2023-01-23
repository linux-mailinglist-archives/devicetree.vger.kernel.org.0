Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAF2B6774DA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 06:25:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230072AbjAWFZx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 00:25:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230040AbjAWFZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 00:25:51 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2105.outbound.protection.outlook.com [40.107.113.105])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CD5B4C22
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 21:25:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCp43zsyGjEPu3NDThtBt5lCeqciFEkznIeh8p9f4zeQX0ph85QtJvho7sFcrFp98rWCoCWE8kRJPFmeXyIethAOtTRk9/T9HYeqmBJ4urKlllkVz+IF+FKJT8O3BfAnyTdpsHP/MERDYd0uTLLX32IpPY854ipNnUrW6kE79U1RwwHUGQdQfk48vBS7BFJJNziZCW3hWWhMFelw93LuNmxrt/sfUz15oJOMaN5euHBdzOKlzsabqEFVEEBW8TRjIhFOUrG/DzbL4qZUDtVdALFvpKhw0j7jVeZATnDmpFtq/lX4L3lQRLzJNaz+lc8JqmT7ABzDy+vDSGMoG+wnmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRgm++DGcGMR/XBHPihqtCtqEqDlu0vKgNaaecP1goI=;
 b=UuGxbj6cIj5tsPj/yRE3fbefipShpJyj3iGEQhptMDBAukW1lMJbKtKIfhua7jXpU7+fbOwMW0TlsQttRzj9ytMzwqxYNLprR66ugccvsWI6nnSVbMRh5anBmcwOug+d8tD9o0LatyepmAoJ1s5dI1ax/yqe/Sw6nLmQqGvp48AEvjtRZherf4+OHHIrUqWcWuTHS/b/z3I8V13bWhGQRRr3txL7RkjAFgYYy9+Q+77+b4qrKd1OICGqXKFmZRnnAusICAOGrcVgrIYqQ/IF8D6IMp9IJccasCqRFN52y6aj5AwpEExqjQdVRORgKXy6KMTQZuegNpBxgtCYi/ISAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XRgm++DGcGMR/XBHPihqtCtqEqDlu0vKgNaaecP1goI=;
 b=Cr8d/LB+qlUSTKJ6aT0014ylo1/oUjLRTYWOr2gfZkUuYjbtv1P08IgAxVonN2D2+ZWWW3Xyr/btAAuIZvnALgJchel9HF1q5GObRa3Y/dpLDIhobhmPnpe4kr7TAvJnmpIM+zVcm1wsy6DWag/Lgu0vwjq9WsdyiDUKurR5VA8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB10497.jpnprd01.prod.outlook.com (2603:1096:400:2f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 05:25:47 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae%6]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 05:25:47 +0000
Message-ID: <87ilgx7rfp.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v3 07/11] ASoC: dt-bindings: ak4613: enable Of-graph (Audio-Graph-Card) style
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
In-Reply-To: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
References: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 23 Jan 2023 05:25:46 +0000
X-ClientProxiedBy: TYCP286CA0129.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b6::17) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB10497:EE_
X-MS-Office365-Filtering-Correlation-Id: 2feeb7e1-1aac-47df-1c06-08dafd02483c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bVNDfGJXBSqA4Kxc6pne3bkMtEti7Lxpzvh6h/V5dcfwOr99+MVwf8hMi/Pf/kz7BhkjuDBfUmDSDebqXB4m5aa1tv8aV8JprgQX8+fvDMlrz9uwJxuUiEZ24YDGRZ75wBilLIUleZlelVADzIyBDQTgMlibLBAETajZaAbuiORblQyy20BnhmemU4WCZ5UGkYx/hdQy9oHjK2MwQjtLfLyBWN7hutBCHXO7ioB7NFMeTu+kTsYfrgnY7YC4DYaaUFPh7uF5/EqynsS/txqcbSkptuPguj2gTkyRMZs4g0/RlpsNFiuJFytkECiLsB5OUaLH+ah/ML6aJ6HIjbwmzX0LzwGaR1Gba9HVVpNDMyQKW0B17PS812bLEZaIc6VhzkNOH5+cf3O6DgERoQDWImhQRF12zmjD2VVoczH5TM5iNzTuhdJ6H7jUmG+SljVM7flHUSXWgPSoE/otZvzM+RAlmvyZ2Qp7EdkCyrUTuhK/DTFNdHnoRjsdwZF3QqzxytLxFSzNXOv4bMo0HuirpnepeR2MVQpqkw41GYCEvEsPPFxt1scOSQPkxoNg9jZp67YK0bSnioDQVSuHsyi8X9rCQ01OP0ysyMYVeolEYkBqwl7+991P2Eq3BJ/SYvQDu/hIGCMDJ4+9H/N1HFFKILr30naSkUOqqUa9aerUOU6QixVUI3Okuu8yyYDxuI3Z7VKBiV9WOlKmP43fbSrSDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(86362001)(36756003)(316002)(54906003)(110136005)(8676002)(4326008)(66946007)(66556008)(66476007)(186003)(6512007)(478600001)(26005)(6506007)(2616005)(6486002)(52116002)(38350700002)(38100700002)(83380400001)(41300700001)(8936002)(2906002)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U406SkRvVzflnB+ChUq2dgV3hGhkVLcREEOZ6zXpgg/5wp+bQLd2lYfw5lwM?=
 =?us-ascii?Q?vIg4KBNgeqq/1iCs/HPhJhNRaV68mxHpS0znp8RHfkcV3MgiTVSzrhMHaqzE?=
 =?us-ascii?Q?LSyftTNXOfHKQt4kT6HUGsMVKrftvBjt+eTdreAsv9Icp1NPyJDahWRDm/gy?=
 =?us-ascii?Q?W7QmJ22AoudGWagtkLXl8L3vP5HcJfCtHPnbc/cdKV896jyd/3YE3LTYw2am?=
 =?us-ascii?Q?UPus85Hg8M1e8kbMTIvljCfiZq07RryNOiD8s81lIGHHjauvCGbJpA3a0gIH?=
 =?us-ascii?Q?LfQIrShVuU5GZUFQACVpQPbv2Zb2IqMFJhpv7mdMlTWU3oofznBBZjIB62b/?=
 =?us-ascii?Q?rDXblLQdBh0ewfJFBVxuEE7Rck/tjvtqkFn0avkxmZUfDW4Yvk5RdiwAR2fH?=
 =?us-ascii?Q?OcMDQxveXxihu5lZ93oAA86N3a2yB5VXEMCEg6MfOdvUhtOUm6EpgbD2j3GV?=
 =?us-ascii?Q?2HdqTBdNWomUBPvNNZ//sXDMh1IHc2jYE2JIYCgjmPw3+0ts/QMxbAcOUigI?=
 =?us-ascii?Q?rvEAp4UNVvYbmvw3QsREk4+o1tnkMrSfG1sxUbOTa7Mlk0J5+/b4yTgs2sFO?=
 =?us-ascii?Q?iFc0wbVmvzSUf6/KhTkDgmOmig+rCvJUTRfYNh+xZ5ZfakDj042asMvil/Nz?=
 =?us-ascii?Q?HDloIggSuaTECDYofyODmzqnpg6WJWksTSliNxqzBv0schF3Mm16q9LNLwdn?=
 =?us-ascii?Q?lFNfEZk7sqa1Wygmk1Ta0/OByyAij/Eyr5LyCV52diorNHxxJsKL5Iw48464?=
 =?us-ascii?Q?dDbdnbxqLaJZnD13lc6cKzqwkszcLnFPGCqzvwWZvpa+Pmxql1llvslVcTMt?=
 =?us-ascii?Q?zpCRk5DdzSct9JgKmNfHsGW9IO8DkhgK5h5gfKTDOCGruUyjh49p/RRWiKKF?=
 =?us-ascii?Q?JpoO8Gyw1NC+26mDzxch1COhzb+phre9d4aSAJE0UpIlRIZG1DE+Hk066p3B?=
 =?us-ascii?Q?QezD/FPCOHEwj3IJ4a5kDic59C2TERsI4fALBVvIbAsSW7x+QqFEDH9BygLE?=
 =?us-ascii?Q?tzhrZEfhdvV6ISICNBXW7mQgKDvRNGmLqSRZOUQxrq8bHxdBHqPtYSm80dIt?=
 =?us-ascii?Q?Tl2HkqpAs3MagI2StHAqLUxPESHbLQ6jmrCW8mIUHO5tDazAp/MBhmZzu+Fc?=
 =?us-ascii?Q?bSUDrENCbbgqy8I1M+vTrfTbnwv9c+asPMSWgsSc6s2Ofe78R2jV/W3hE3mx?=
 =?us-ascii?Q?k3lmQAGgS0XRderZ4VsRqSt3gSV/rATrG7j5tpdGPYpY/8tXYKUNb2CgarWv?=
 =?us-ascii?Q?U2tIy7K0lbCZzDJWxlNf8YfbZQrQ7Re9yzkUkpl5jC3aao7fwwn/pxMSy/tP?=
 =?us-ascii?Q?FzI0rxNDt1pBj13/0UTL+DZRJG2C6VH1p0T93C8mccu5oBp9ssXb8O+0GlUa?=
 =?us-ascii?Q?a+kkzLG8Wm/smbcSDngdu3c4P+BvO3qDmZjlBU4ZDBvs4OkYK5BOdDAuK6L6?=
 =?us-ascii?Q?iypQIHUwsYRu8VS/p5SoK1XsOi3Gcw+rf5Bak/nrYnWt6f7klDIaGc5/A8Ck?=
 =?us-ascii?Q?tQSHvn5po36h42FpUepObh1J1z8+lRk2eCqKqxQAGVukX8h2Sbwz9YqIqgyK?=
 =?us-ascii?Q?xZvGGSQRfkRULxCRGYNZn0z2hd7cYOHzuLXHAvmDywQgcLN7fyTfjxRaIgVG?=
 =?us-ascii?Q?irZBz/0uSKcZGjMZjJGiCVo=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2feeb7e1-1aac-47df-1c06-08dafd02483c
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 05:25:47.3600
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 95EdePd+hZKLeAoItRChBK4wLZgejiEUwA7gl2PFc4E336QpSubUAWeIYdwSC8wUd0FCQO9t6bxDOvjTbp4n25PiG+PlHJLNSyZnWvNxZqkoa4epU2ipmk6432JNXtAW
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

ak4613 is possible to use Of-graph (Audio-Graph-Card) style,
but we need to indicate it. Otherwise we will get below warning.
This patch add it.

${LINUX}/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dtb: codec@10: 'port' does not match any of the regexes: '^asahi-kasei,in[1-2]-single-end$', '^asahi-kasei,out[1-6]-single-end$', 'pinctrl-[0-9]+'
	From schema: ${LINUX}/Documentation/devicetree/bindings/sound/ak4613.yaml

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 Documentation/devicetree/bindings/sound/ak4613.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/ak4613.yaml b/Documentation/devicetree/bindings/sound/ak4613.yaml
index 010574645e6a..75e13414d6eb 100644
--- a/Documentation/devicetree/bindings/sound/ak4613.yaml
+++ b/Documentation/devicetree/bindings/sound/ak4613.yaml
@@ -25,6 +25,13 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  ports:
+    $ref: audio-graph-port.yaml#/definitions/ports
+
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
 patternProperties:
   "^asahi-kasei,in[1-2]-single-end$":
     description: Input Pin 1 - 2.
-- 
2.25.1

