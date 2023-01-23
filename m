Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D00056774D4
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 06:25:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbjAWFZD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 00:25:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjAWFZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 00:25:02 -0500
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2134.outbound.protection.outlook.com [40.107.113.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 781824C22
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 21:25:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Be4gjVv3QaBvGnHv7v1DmLShEo2qehvj2IncZPoWimMRJx0B/UHq3PrccYppatoLDNrdFBvDscxCM1cFq36qphDI0RJvAvpbEsxB75BewhWgqn5uWxCiWf1vF8BdD0K2Ckxz2aKwu2AptDKAGZ77ylDZ47GlRvoGvlRBTb1jso3hWLK8xf88d8QB2RKpTm3AwCaFpde+LopQA7s7zkK9FpVx1IXcBOm2wEdqCsuJmzCYMvk2LR3JvhhPnmwtdH5rmnIjJtrG9LxsG5fWm689qIYp9EfhJXY2HmCQE62PvaaCo7g0Jk7jWyO/BSo9hmCWfStC8xqCVUtW6nCGm3dlwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JV4nCla2xM/Rev8fPRQB2AnRjVoX2Oyv/RfnPfZUhug=;
 b=Elq7EYk/m8gAWFylnqVCvEi6Tf+hnv89PqiQkxxhkm7jzC6c/GGmE0AgtgrJmV3KUcYI4ZysJD52NaxF/JZuHYh1/idU07uSI+OdYuqHWxcmoHgnvc5tybjIxsPJ+YLJFVbYLeVm+R6+07JIAgVKEOW4vI7Br3XfjZa4zh+xtPwuJjQ5yoF/flJ1kgbwJ7VNTCJCmdlOgHNnfx6rEpSTFArwaJAU++gcVfO6qi4auzLHmYPtNA8wq0HT9R6GnsUNjuvNKCy3yjIas/sfSu9k4TTMKUr50AigwuWwk+Pnlbt1fzN0URxl7BuJfeIeq+RXjiPjCY6KB6mNCs9OByobYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JV4nCla2xM/Rev8fPRQB2AnRjVoX2Oyv/RfnPfZUhug=;
 b=ITxbbGVonhWsGg0zWn3ItI+n+LwwoQvRoZOgElcERPd2vqmYQzzEwS+zgoYqOdIBRU6qZ4tlN5T2dwIt8wn/mtKbsvI8WBB0d0dulCkkLajnQZPn/bWs1MsxXrt82BcItkRMtGNhMSol/81jskaLs203w+zPvcQWmW5flhkw/Mk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYYPR01MB10497.jpnprd01.prod.outlook.com (2603:1096:400:2f6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 05:24:59 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae%6]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 05:24:59 +0000
Message-ID: <87pmb57rh2.wl-kuninori.morimoto.gx@renesas.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v3 02/11] ASoC: dt-bindings: audio-graph-port: add definitions/ports
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
In-Reply-To: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
References: <87sfg17rjq.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=US-ASCII
Date:   Mon, 23 Jan 2023 05:24:58 +0000
X-ClientProxiedBy: TYAPR01CA0235.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::31) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYYPR01MB10497:EE_
X-MS-Office365-Filtering-Correlation-Id: f93bf236-b4bf-4691-f68e-08dafd022b4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xcVHdBxVbyig/jbnsvlflAJm+CcaC+VGM1RcvuEpqjCBbXxlswyYja/rU7O14w87thbSVE3eqPM77sfSUt7ZPDEoOGpF3sZrR2LUEnZ1oWmVakmAx9OTxo+XFuYAr/pr2Hs1ztxlKXCxc9ySJq7UdPNyNei+ha7Gwh+aghHp/w8Sya/tzzbDkydplRjlZpW/UPrB8Xw08QKpq9pGJ+e0wRTgDCjlxaWZIU/nsbPn9BsbJzMxM+ma2pc8XFMcCzZT4Xb002WGXmjlmQl/VOMu9amhIfXmw6ZQvjTNWVaPylRwWpWcdI3/C2CcMem4i3FfIjhKomEYLFJJ1biTzgf6jaPeZ+LFEDIlNYXMz4ldNy1Y8i83zHUMVmzyNBcEkHGNv0yinAqt51t7cMTPTmx3l7ZioMbyV4nJ03QbTuPFUtCnEGXFgJaIPfX2uLUKhCe2a7+Ipn3WmD/GRMtvX3uJVvfrBkHEb2a1AjuVayc7phwkRNR9qdU3OMD2jrLWMqL1DbCwi711sR6S7WDxl6aDpYD5TXy+DMWbfo90cw8agdQ2OwOneaWgqYuLgyBf4ICS15uTbQ9HwbjtRwU96fNHfm9XQmclKUlVb9zqIHJbKj5Oo7iFe4eTE73qnmNIujw3oE615W8vOzT8ocCMzb/THH5Tl3Hb8oMgbENBYzMBgjqCxiiTz+D/6W42/dfhbnitj++6vvVxjzd0+2qu3+ZCwpQBKdi0NdCJEMFAtpGkZMY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199015)(86362001)(36756003)(316002)(54906003)(110136005)(8676002)(4326008)(66946007)(66556008)(66476007)(186003)(6512007)(478600001)(26005)(6506007)(2616005)(966005)(6486002)(52116002)(38350700002)(38100700002)(41300700001)(8936002)(2906002)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Nph8zft/kBfP8p0R3D19egFUycXvfYAyeqcY5tsoUXHbNZqmPP3EpxTKoWB?=
 =?us-ascii?Q?0zJntQuefA7VPtDHN1XbntEuAg3NewWKUV60eDoL2cCzTLStW/JYbuJuHOiT?=
 =?us-ascii?Q?Vtp2QY7l9YRpHCzGXA1ofpJ39vKRzLAvW73gEwDgX15Jowg6vcn//bwlrOY+?=
 =?us-ascii?Q?vsQtYJWh2OyKz84Z0/hsSKKGarVJmHnnbn3nMahALnJQurrXARGYHCb4wQi4?=
 =?us-ascii?Q?bDVASif5kRiTShVqKCTkTbwfoGMFhCcMW+WBBeNs5NbPfb4ho+P/Pw9rae/T?=
 =?us-ascii?Q?s2z0B+mEnWUJBHgjiu+TkA8/1LsTyV5/tv3q5dsLgnRm5njZ/CZbhg4hIEix?=
 =?us-ascii?Q?fQjhJrUe+TNc/W9rP5Lct4RZrnQ/Q8thGe8xK6E15C2otrlRJhgGoW2WbTel?=
 =?us-ascii?Q?C1vCVBbiUlFqbdCPP4dvjZOs/ApQplTCAcZ3gg7oBppd3c30wbxLCelTag1W?=
 =?us-ascii?Q?4v2OpbjAXDuXUFgVBK0YKz9A+cUwCAnc9frzTJzhimvEgDUxwhEDWRkh+kkx?=
 =?us-ascii?Q?6SKRNnj/xRrbscpg/1qkbKCEfQv7Rzau8r1kkViKW3TX7ZR7gHW2PW4BmrZq?=
 =?us-ascii?Q?RMxA+ATZ0emsQLIQwDz2MN32QdhJ9K88k2TUitIQZj87YjckJQGZ/T91Pvxt?=
 =?us-ascii?Q?NZsRKCEaiQ84WYXeOWKQwk+AdxRBTIlL7AA75Y0vkoVDFpFEt9SZfyHdjlWK?=
 =?us-ascii?Q?k/GJSFkhApYAyUkSRFAF6hAZqUjeox7NW0Fm38IsoU53oC/Kz8MBxBNYKV4P?=
 =?us-ascii?Q?yYlpX/TMtnxffnqTttJR1GHglJfhUr0pffdqbAAYn1snpvC1BVCaOgEwS7N/?=
 =?us-ascii?Q?SHVQxE0p8saXDVZmcN3map/4qY1qtBVC05w5guE05U6t8p/wLeugppt41jiX?=
 =?us-ascii?Q?k8Q8saC1m6JCQvYF74FTyNcIAeR+f4uUDfaJxFw7SH3/kWKsES/r4bXKnhwl?=
 =?us-ascii?Q?QZr8RunFEmdBVRhCPZeT9Dq6foCQx0ooLkCvcWDtN/WJ/Y80eCAFh/9io9NW?=
 =?us-ascii?Q?c0DN32jr6vdM+7WqAcJ0gscu+F/kIUQa7A6W3NRlm7+y94GSVgI2QWPSjgNj?=
 =?us-ascii?Q?hlLKnSisflBvUEmUp9zNksUat83/THx4dvp6kWUM8fJsWbiIcYQKvPG21uKF?=
 =?us-ascii?Q?6NoVasWwJiQLKK5qfe5QAlxmU7ipZXJ2okiCm4hQJyqSO43ZarklxB8B/f/X?=
 =?us-ascii?Q?9bU/HIwTfQ0C9+tYU+Eun9vmrg/+m0RDMbxJTymJrugwBrdf/zeUE2rR6H8E?=
 =?us-ascii?Q?ecBdw4jcR5d7UdCZub5SwK5TDQKJ1spUdQ2H5m0I6BOBG1hccS5rNuIjtP/b?=
 =?us-ascii?Q?+aDb7KZ/YI4MTxTCgTXVG1tWt0gTdG6sPIlDmpt1cGXeu3efOwMzj98zgVzk?=
 =?us-ascii?Q?ObchyeDSEKgP3n0Vwsfj7hO6mjw2VBh/Fgf6Dh3XYGEzN2zczpnIIeVOL5P+?=
 =?us-ascii?Q?N9DRYTAWd3nC+yBr+ziQGmgH20Ccmmtk1tvrF7t/rmfiG9EUCQFyZA0X5yTx?=
 =?us-ascii?Q?m5XvamhBhXd91cVOy6yRJGwxoMAaj8w/eIkQ+qrlmUq4SHFF9Unjg93KhZVE?=
 =?us-ascii?Q?LowmBweYj48zY2hvSgPKwc0wOPssl6jmEsuolonKysTvNzKYpuhAAz9PE14u?=
 =?us-ascii?Q?gw+L6mhfbbwoa1PkxUl7ETk=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f93bf236-b4bf-4691-f68e-08dafd022b4d
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 05:24:59.1668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DRP1a2aNkyWxne79NPINM+orRaFxcN9T89jytf8pN+cveWl8CPxW1IuujUiMK8gzZMQv9PfurAGkFNwdvW9f+6B2QPUW5a0Vl3TKYKHjhz4InrXUuUnRYIJWMTiCrqPN
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

Audio Graph user needs "ports" not only "port".
This patch adds standard "ports" as definitions to use it easily.

If user needs standard "ports", it can use

   ports:
     $ref: audio-graph-port.yaml#/definitions/ports

If user want to use custom ports, it can re-use
audio-graph-port.yaml#/definitions/port-base"
audio-graph-port.yaml#/definitions/endpoint-base"

Link: https://lore.kernel.org/r/87sfhipynv.wl-kuninori.morimoto.gx@renesas.com
Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml  | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index fa66b73abcaf..6fcf7f567424 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -97,6 +97,18 @@ definitions:
               minimum: 1
               maximum: 64
 
+  ports:
+    $ref: "#/definitions/port-base"
+    unevaluatedProperties: false
+    patternProperties:
+      "^port(@[0-9a-f]+)?$":
+        $ref: "#/definitions/port-base"
+        unevaluatedProperties: false
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?":
+            $ref: "#/definitions/endpoint-base"
+            unevaluatedProperties: false
+
 allOf:
   - $ref: "#/definitions/port-base"
 
-- 
2.25.1

