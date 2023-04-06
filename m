Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89BE96D9427
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 12:32:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237207AbjDFKcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 06:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237166AbjDFKcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 06:32:04 -0400
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (mail-am0eur02on2068.outbound.protection.outlook.com [40.107.247.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C01E61AC
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 03:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQgk1MzW723l1hqrjGJ7bug/ZVWDDGt0j+76qli2FzITWWGa2wi6IcaMQLDEczzyKwSpt+RgdswfzCD5LL3iSUWKTQhVL1ie/UHN7bwD6GNJLojH/rEvN5cpaDC8Lr08Ppcw7zEcQChamtkblky+1KiAYfIw9quOQx4sknEaDioS21KssjCVnJP8jvp/RtxMqxEEZeNkkIgLxuX0UzqzjTR1jjazT+gyryB9v2BKR3+S77OmQp489EQCrSOq8Hbo4oROZoZC0INYOWDdc2sEmoYNQxc3tFrGF63WV5SvUIcwRvqrkWtIxUGgFbIwo1oMeoUdOuxBG4LAtfOUqAvVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/IwL5NHNeN96h44s+VqDGMOwiJJmqWZJlv/9s5eROLU=;
 b=CN55OY77wVkH3y3S9RfUNsClGvw+2wof8i8/9LsmIw6LCmEuMEINHSdK7qPBo47dlxRj1a01ixktQknlx7oiy6kcx4Q3wy7uvoMSzuyh4H6fUOBxJvMPLOqxlAv9Z7bGqGTl3qb32987GxEWFV9RNf1g1yEwpzgdhe1q7jA+3LxCAFF9F0gxyGcTdYmQHew2GbOXLJpnHY8b2CdYUGlU1KEEyQJTpHJklmRcu4fka0FPwvCBPyBWer1emCMiXqiAKxjHQkp+h9vkxbxFRIFd/XMy6l9H8eTEVnjbXEQ3rnoWtx6J+XtLZlnm/c9Q0FwDZ6ufSrxK8ZMxM9G0h5wOgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=chargebyte.com; dmarc=pass action=none
 header.from=chargebyte.com; dkim=pass header.d=chargebyte.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c4c.onmicrosoft.com;
 s=selector2-c4c-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IwL5NHNeN96h44s+VqDGMOwiJJmqWZJlv/9s5eROLU=;
 b=cpFMPfb5iwPr0p3XkQAxtsaEln0+wpwDr2lnfiuy/235ZhZ1RYoWPFIWSNs6ststGhHubhWt3NPftVkbpeIjqsYxpH/4hkciKQso5XVNKDBQ4PC+kqEDVC4msB6hPwj3X1VpoToUk6vqaJ0BYH9YXaMOk3jjuhcFgsN25nKHuec=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=chargebyte.com;
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:33f::5)
 by AS8PR10MB6363.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:56f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.28; Thu, 6 Apr
 2023 10:31:53 +0000
Received: from DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7]) by DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::bb8d:725e:2ad6:ade7%9]) with mapi id 15.20.6277.026; Thu, 6 Apr 2023
 10:31:53 +0000
From:   Stefan Wahren <stefan.wahren@chargebyte.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        stefan.wahren@i2se.com,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Subject: [PATCH V6 1/2] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W bridges
Date:   Thu,  6 Apr 2023 12:31:36 +0200
Message-Id: <20230406103137.6092-2-stefan.wahren@chargebyte.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230406103137.6092-1-stefan.wahren@chargebyte.com>
References: <20230406103137.6092-1-stefan.wahren@chargebyte.com>
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0107.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::10) To DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:33f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB5211:EE_|AS8PR10MB6363:EE_
X-MS-Office365-Filtering-Correlation-Id: f155de1c-7197-4c4f-9f59-08db368a23b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U1GnsjkJx5sxWeb7TEOeEXSpRKRZW/aAK7q7pMh4LGN64or4E+n3AqCRfDNQ2+qh4cQOxRYOETdlXsARbLj6mb9qEJULtBoY6kSDq1U8G0BUMgpWXXJLqJbu4b3HASqpVCO0ezA3pVVlgjMD2nvcd4E5zsxyBUuCdg3i86O9C92Oz/rH0bZRB14TnrmN2I3jQUkVJQvoofpCm2UvLMIUE4ajNefh4Rs+V3uOuo3Xf+b06xD1teOYXvKcmdBhWQBpmVsoj/ILlnm82Vd91IDsat5kP08GfwC4GDjxLAK/M/tQFeNQafubw/51cRe07sBLszJyD8UTa1IlbfgapS4Eou01+G7Chttesssf7FtawSRUiHBIvH2uqGRa2jKiW6umfH49hiTU1zlY7W6tRhYzVG55edqBQ589ZHBX3VXFtuCAo3sNnTqwFha9cvar/gyuESkMRGVu465rEN3oEYf9P+grdPZeHUJqJS2KMj/+9+e4wzNERk6H2uQ+Yo3j2SxIzVQyKGrdPoAdsLyxXjMQa9EoEbcLRfa2K1Ppd1dRmYMMyB+AUftd0Fs6t8cWbBf+eOPbVALBh6SBkuEzT5VHQ9A20bmoIcw7QktwfEqa+3c=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(366004)(39850400004)(451199021)(86362001)(2906002)(44832011)(26005)(52116002)(41300700001)(5660300002)(478600001)(8936002)(6486002)(66556008)(36756003)(6666004)(4326008)(107886003)(966005)(66476007)(316002)(8676002)(110136005)(66946007)(38100700002)(1076003)(6512007)(6506007)(2616005)(186003)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xGtd/EwaJDugFrXFh0JeQeLPmUKRXehg1b+PmB7r+4spxppyPxgPc/l83QMa?=
 =?us-ascii?Q?Q1TycIWWxoEZ213uMNw6COoAOaJACcJ7eQwyqF8NhmqqHPsnm6554/rSFaUG?=
 =?us-ascii?Q?DImRRam/kGZlkUVOED4a3XucENXry1aPpC8Nw1Y6bKtNxPREodgwCtKBNnOh?=
 =?us-ascii?Q?d4FnTbZa7/Wt12u/tLefiwCqdOIvWF1To/z0xvpMUQconU/nJng/w+dGYkML?=
 =?us-ascii?Q?IGld7K84bdM67EPmB0eQamuGcqpO5ORi3dRcPUtAY5OuMmE+KXGMdviMJ+TH?=
 =?us-ascii?Q?pm4hrCazNnkffU6NpdyYw/LBfsG4e88p/5p9CWlLaJtqR4jZtTizOGCdRdhA?=
 =?us-ascii?Q?1LoA4fHpjyory4aAtmoMAxOVx0cI4Ldt8Ooxnxl/CoermI3LVS+qdYAUhq4A?=
 =?us-ascii?Q?ZEZec7CCEFgK5gDyQwhHK2GMTB0FnhHCgDKAfMoYTi5jb+P9/VSWUf/DWu+w?=
 =?us-ascii?Q?EOfVetk/FBFrJ85pOY2iSkIHN0Est8pqpVKADZ/AgemaKjVEd/FERMYTHjJT?=
 =?us-ascii?Q?y4ZSWjJbc9i+e88zwd7Il5V2cLybv0AB4LF3gQBLeEy7QAmQe3WglMKuxJZk?=
 =?us-ascii?Q?VLMu/8Bl+MmRM5IhEYUhhSktKXd8QEWuTk7KeYaeWPXbZASE+QzvscA8AX60?=
 =?us-ascii?Q?8xrfzxrmA+ErxW9owW04lvaPiKTsdfZh66v+dojrocyL3FOdYGjcVo6eCD4H?=
 =?us-ascii?Q?Wc9Jj/TlojMD7B9B3uH+BnenIp5kg6eXGXKnnII8U8RNZru3XuIPu3+M8aj8?=
 =?us-ascii?Q?neHk2mwi5z78fFLhh9MGW7cg848tPzJILexKKKrG5AR23FdU4ziG0qj4VXiI?=
 =?us-ascii?Q?rgfx4pI3DrHI6IM2tVce3pNeIY/TbkmAI6/obt+bvZve39ailHWj2HBQSA6A?=
 =?us-ascii?Q?2cfmRDEWS+3PTdml+kChSET4eYbtV+MefgRykmH1kkkz+7OZg9c+p6tLseBp?=
 =?us-ascii?Q?HJpJEpfB7yZDVMLDh0EXSEoH5UcLvnZsl2GPks/QhfZ58iMpqvrz2mxKSzZS?=
 =?us-ascii?Q?hSilFQWuT7yZ7giqidi653v4JAstPGrcMgIXvDKgTURW/TCmlbemh3OaKHqN?=
 =?us-ascii?Q?Z3k4E7XVjvp6f9fWifomHrK5siqPxDDa4MW3b1ZjgWm/W/VbBbZKKFTde+aX?=
 =?us-ascii?Q?4uIiduCXg4R6HTVE+IoA8bROcfkdfp/ytu4F2kNKgmIdbm2j9KkxQufOz6q9?=
 =?us-ascii?Q?70RI+eMfVljZ+HDKsk1UKN6Aas52W62TksT3L+kRHboDmXxaJVw3DyQmtVXF?=
 =?us-ascii?Q?wVTajEtFtCmlxMw/r9/hB4Aona21ZId3Tb4sObh2sQbZRZ5qIvC5q2yAa7Bh?=
 =?us-ascii?Q?D4DJEO9bOugIzDKNSpfJsbYMYK50mDyhdrVMCREsrxyjJ7RnD0qYeLvOkKTs?=
 =?us-ascii?Q?7+y3dmjZeNNBMgNCJ1j24MPPTPERobAZGtcAMVHPntkJe7UbHy8WdzTl/SAY?=
 =?us-ascii?Q?xYyxaNhWS78YM9auNR1qNKhiV1qtTicoVaAPoSRfEGrWdth4RsIassv/NlJc?=
 =?us-ascii?Q?Up/2efTAZI5gv4XM4gmnnjviigaFi5Rc9k9JTsIjZhzspJYjqTDIqT2BBQT+?=
 =?us-ascii?Q?wJh/b5zQYdlVQN6ZXV3DDgvUrbHAcyIHI5WNnmo7siZUNZCj4ibvP/HZZikV?=
 =?us-ascii?Q?bw=3D=3D?=
X-OriginatorOrg: chargebyte.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f155de1c-7197-4c4f-9f59-08db368a23b9
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 10:31:53.6920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30547194-0d55-4a2f-900d-687893d3bdc0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7YM344G9hF5m3coeksWs/4SAHXRbrbElmRB8/BXmBrypYEMAF1AIqp+l5HHfW5b3J1t7BrkCyNIoTL5b+m7LHj+h5R+jCEcmhFs3rbMyJg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB6363
X-Spam-Status: No, score=-0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a dedicated devicetree binding for the Maxim DS2482/DS2484
I2C to 1-W bridges, which can be extended later for further features
(e.g. sleep mode control GPIO). Since one wire is a bus, child nodes
needs to be allowed here.

Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/w1/maxim,ds2482.yaml  | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/w1/maxim,ds2482.yaml

diff --git a/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml b/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
new file mode 100644
index 000000000000..422becc6e1fa
--- /dev/null
+++ b/Documentation/devicetree/bindings/w1/maxim,ds2482.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/w1/maxim,ds2482.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim One wire bus master controller
+
+maintainers:
+  - Stefan Wahren <stefan.wahren@chargebyte.com>
+
+description: |
+  I2C to 1-wire bridges
+
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ds2482-100.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/DS2482-800.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/DS2484.pdf
+
+properties:
+  compatible:
+    enum:
+      - maxim,ds2482
+      - maxim,ds2484
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties:
+  type: object
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      onewire@18 {
+        compatible = "maxim,ds2484";
+        reg = <0x18>;
+      };
+    };
-- 
2.17.1

