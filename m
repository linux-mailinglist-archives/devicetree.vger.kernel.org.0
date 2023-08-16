Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2714577DC4B
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 10:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241216AbjHPI3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 04:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242947AbjHPI3V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 04:29:21 -0400
Received: from mx08-00376f01.pphosted.com (mx08-00376f01.pphosted.com [91.207.212.86])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A3E62D55
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 01:27:52 -0700 (PDT)
Received: from pps.filterd (m0168888.ppops.net [127.0.0.1])
        by mx08-00376f01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37G7Gh4g019180;
        Wed, 16 Aug 2023 09:27:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=
        from:to:cc:subject:date:message-id:content-transfer-encoding
        :content-type:mime-version; s=dk201812; bh=m6CKlzn0ZuZnil/cYcqAA
        gs6UXBHDnhvNUqeqmhjsKM=; b=js56CJUJUVGPYVp/bfc3LAlHME2aMMkUp0Trl
        CaDoAPkVJXRi+tb001n+8mpLjMr4kxR//J/JAbKIxWpQj1uXwtuLEVcTsCqEFZA1
        z/kPCp9N6/VnjLJ4ICm8AEmJewr/U+3J5O69FeUAO3AnvLz1ptc+41+wKlV+0i4n
        8DMd6fDICDwc8OOTcAtIs6XN8fMMcu4Teuft6FXeKwTIKH7fuJ+gwS7/0aeEJ7Kd
        wRP/ZwcXm4VKnd8/cMOfw3qHsKyzoJjFz8bPkFVSF8fpcww9hCY/6oiFmuBeAXii
        oQxyZ25wZvBGFrfveajOKQJAYRCTdykPL5lFRFlXKjy7rjEpw==
Received: from hhmail05.hh.imgtec.org ([217.156.249.195])
        by mx08-00376f01.pphosted.com (PPS) with ESMTPS id 3se0brawpa-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
        Wed, 16 Aug 2023 09:27:44 +0100 (BST)
Received: from HHMAIL05.hh.imgtec.org (10.100.10.120) by
 HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 09:27:44 +0100
Received: from GBR01-LO2-obe.outbound.protection.outlook.com (104.47.21.57) by
 email.imgtec.com (10.100.10.121) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27 via Frontend
 Transport; Wed, 16 Aug 2023 09:27:44 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iGLQqM3KYhr5szqC//Y58TCnP2DVRQ52bGQ3BSimN8Q4Y+tx0Fud5IGTGYWQsU5zX9d7wihlYHS371I5JTOvaORrrto8n8FLiB9qaJ9aUe8JWO+ItjWkXJu0Ih2LMVJVN6ThTq7azf6V23cCGebi9UH0C2Qhna3NzljGUEFEMssITqd1lpOXV00MZXBiW4DS7kPZg7CXCr4fvZehst7Fu+zoDfS9DzYC6N0PCa0iIQFLN6ET2p55QKQUFG/ClUyKWknlTeaHGeDPb4LzA+ku+bFmKTIsNf/C5jUd04kZJAgmOmMoZItsV7mDQUUVCN7emkhx6JRYXGw17ciXQ72DZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6CKlzn0ZuZnil/cYcqAAgs6UXBHDnhvNUqeqmhjsKM=;
 b=j8Os++g549Kbijz4MLFxOtbW46bPj8MtyM7o5oS5yC4qv5sqdLCMpTImL37feN2BSoovHXHT2wSfyFnIuufNTZgxwT39/IIAv8AbiBuszNHRTuLGmhxm9CKWPEPK14p3UWmyStgsxMk2QwwkivNfVNXUwZNh0ZxTwVnZf+fPZCVdFmt4hChFnz119r9zQ/v+CtbB8fNglvgjUezY8gsNFy46QabhqSWg2qLW7/zIZIyrAfCPjz8OQpvWMAJHBEoPCRKXBVoj28HtSannZuWxMwgdfp8ycpsUyBNEg8nxLenT/ZNCOZ00pUEoE7HXEk8+WwW81cLqJ6Z0b0cNXi8jPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=imgtec.com; dmarc=pass action=none header.from=imgtec.com;
 dkim=pass header.d=imgtec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=IMGTecCRM.onmicrosoft.com; s=selector2-IMGTecCRM-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6CKlzn0ZuZnil/cYcqAAgs6UXBHDnhvNUqeqmhjsKM=;
 b=LlaPff47iEIJ4VD1tz1gXcOGkq2vCt89xL1/DHg3OZdxAUexXpUFY9tKnb2BeczlCS/MbadlA/5h1sS8dRF68bok+yrWScJtmIelSk9k66t401UV7VPB312pt1Xub4d81MJLODI1KVRz28kr4hgwyUVaYqdaQ9/wM28tH9yFEL8=
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:170::9)
 by LO4P265MB7032.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:34f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 08:27:37 +0000
Received: from CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::ee4f:2d71:fe8a:ffdf]) by CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 ([fe80::ee4f:2d71:fe8a:ffdf%7]) with mapi id 15.20.6678.022; Wed, 16 Aug 2023
 08:27:37 +0000
From:   Sarah Walker <sarah.walker@imgtec.com>
To:     <devicetree@vger.kernel.org>
CC:     <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, Frank Binns <frank.binns@imgtec.com>
Subject: [PATCH v5 02/17] dt-bindings: gpu: Add Imagination Technologies PowerVR GPU
Date:   Wed, 16 Aug 2023 09:27:25 +0100
Message-Id: <20230816082725.164880-1-sarah.walker@imgtec.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0090.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::11) To CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:170::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CWLP265MB4817:EE_|LO4P265MB7032:EE_
X-MS-Office365-Filtering-Correlation-Id: 65da6065-c8e7-4689-68c4-08db9e32a63b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PVdU+CeOcA80xBTPF1hUVbDRn3GJ6AXnk3Bl4NV4GkMKvtlG0fQAdxM7IcVinntmRAmK82TRGv/WZac7/6LvFqV5qDkUBGtKQk0QN3A8Q+BtWx43jLicjRlwgJngfmcJ44smKSD47//yBMsKa6ti8eHiRJRtM6cw82pDZZj/laLebA3av2Dx3Yx9ZS9IhuMq4wi4d+vgI9XuictWQ+YU6bUlaatQgnE50iZlogtRsSDneV/ZM7cG7C9VJQBUfIoXvwsWV63jpWm8PsG9VLiXUbg+FCuv5ZqEtgjbpvCxgsrGOnNxCiZZiQ7JJ05IV8H3vrNWSYSai5+B/BMepXAOHB++2epSO93jKaMLf4HZ9y7bBVU62yC8EFCMhFlZVWcQzUcOZA75wk/PohVQske/G9yWyeaNtME5EMAdcQt6GC4W+p4dyVtswc/DwGB5rE4dGqGO8VTP7+jp0K+v/52Nnc5Nn4DO9lIOdAZkR667+OoBUsOFEc0KVsRsbqkqh9hPDK6gBopXhwZ10gWWo9orNRnAkgEMwwFLgcO2lrW5Io3Hy3v+ACMJX42xRypHKV6qxVLtFYhrkDu8oiuyVq+QbPmcIZwuRGeX9y1NRzpjNIk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(136003)(376002)(39850400004)(1800799009)(451199024)(186009)(2906002)(83380400001)(86362001)(478600001)(36756003)(2616005)(6486002)(6506007)(6666004)(1076003)(107886003)(52116002)(6512007)(26005)(966005)(5660300002)(44832011)(41300700001)(6916009)(316002)(66946007)(66556008)(66476007)(4326008)(8676002)(8936002)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WjQtF9HEETO3G8XeDFPmi5kMDdRQlzCabfGuXWIa+yBX53hQEuqbTOQM7JtG?=
 =?us-ascii?Q?LtC3ECR7LcIHeaowMzr+gm4necNDq8KvXqrjdfjS7AbD5ehfhsnDL6W5+WET?=
 =?us-ascii?Q?W/5MGazQbI3fHylsNDF7GtcUCzeC7hHzBEUt37xIQNpgjKVha/WR+akXZIMc?=
 =?us-ascii?Q?H8WD0gWktJ9EooswYi/Z7oLfcb+4i9mSit9l2NOL63qpw6JXU46QBDG4m/lr?=
 =?us-ascii?Q?o5ZWSelWgMn3WxoGlF+cXWUeuUzxfbNd5bR5KkXO54ivio6di1DPT/ikUDl6?=
 =?us-ascii?Q?WKFdJ5sd9cHJmbQM8pfmncXldfvH9Py6XS3Si+f+wzKWApmlZk8Dp4Yulc2G?=
 =?us-ascii?Q?Ut1A4DUnD4XczeUZNGRz24PcIwtsYmsMbX1KxC/Lw8NzLQWYAYCnMf6Fmkxn?=
 =?us-ascii?Q?5YMHk/rG/tFGmRfZ60ML/ruX8g6oXIEXNv+WSlHIME1LnYSMXEQPzvG/uacd?=
 =?us-ascii?Q?gh39jhplzwVJ2FKVPswxoEoGbdDHkJhYcAb7tNXlVDJAW89U7j3bw9eAd6qX?=
 =?us-ascii?Q?JRWAzzfNfI3b5AHzes4LoEv/p73kVpbGF8azOPrSTQU+IPD5HowjI6T+m28k?=
 =?us-ascii?Q?hKaaB5UQjiJ16U67pohcWffkETX3E9UACyfAUiSxyoTVrvkEvo/6f6simEcC?=
 =?us-ascii?Q?zJyAhs+5rQ4UeNtKht/CjHbu3u+xRmU7dsXGnX6EfWl9ykQAx1WymqbuTNe/?=
 =?us-ascii?Q?y/LkmRjbJNNe9BJk+ebdABBPF/Zo6h9ctwA4xfiYPG+VA0Nsz7SNNJhDdClF?=
 =?us-ascii?Q?NOr+8BcxtNGdmlPcu6yOjgneln8i2XtzfDXZUuVqs+kphxNABOExqKEBJRD3?=
 =?us-ascii?Q?WB7aS9hz2CU6CpfJZDjd3DQcHfwMHOwvWbAUy/JmWMmhISZU8EpVFwkcChss?=
 =?us-ascii?Q?sQ7dVPNjqxMFGtguv6H1tkNg5x6GnwhfEImSmHSAWplwfZ7Z2LQ20D+6reC1?=
 =?us-ascii?Q?zJewlAjI1aL8v7wCKjq7ys22RZVUeUZRT6y4Z7iXND6UCFGHoFoX3gJlr5WW?=
 =?us-ascii?Q?Ew1/QG6WjiqN4o5e/5aLVJbZKR5VWiEbWg+/ktweFgXM3aOAYi7Rq/FSnNOs?=
 =?us-ascii?Q?26Wg+guLZ4vpcmFgPFgBp28u5EAI2pqqcM4yn3qA6CYMmosDZK5gggPdtnlS?=
 =?us-ascii?Q?RDkaW1T+6L8UyHeCrnZuk5UaJl1GEXzlwf6YybvYivb8hG7VSKW6UlOKFNPp?=
 =?us-ascii?Q?8EhqkIjnXnT2D55gucvHMOCxP8CUlerqZvxWe3jYDATfHfcCCiTLciaoPRtj?=
 =?us-ascii?Q?6kvoTTvfT6iOkpmkK4CN5T3HA/yeAn+38MrGHQ+t7MWlGpK4YWZqYebC81e8?=
 =?us-ascii?Q?2D+SyDDHmbnZXd2uVN8vvQLRoDltv8tiVxdzfhb8EM+eFaYj39SO+ECoDKNR?=
 =?us-ascii?Q?TfISRINjmaqnvD950oj7H7beO5elNC9bnDOlCVF5VM+/WqeBIM+swW+syUig?=
 =?us-ascii?Q?fRjihhkW9L7N9mSmuqLGlL/AXA5isXbMuDYK6SPrVH7z88hiriB99sw0Qfgf?=
 =?us-ascii?Q?OdUNqt551xr47jSFlKWPYN1Z617C2PXcMSS2bR3IX2kSOvHnFnmQu4kuZ1Sx?=
 =?us-ascii?Q?NhVyFVkhI1p9C4Gaxyi/Q/dY9BpD7QH4YAposUVEO12kXgWKBNokLPJgjmZV?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65da6065-c8e7-4689-68c4-08db9e32a63b
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB4817.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 08:27:37.8524
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0d5fd8bb-e8c2-4e0a-8dd5-2c264f7140fe
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QkQt6fZy8Ks3voUQxvPfGIo/Z1eTS7p7s4FqFxM9UlYHzjIzZsmnfHEc6w+mzZnSLB0XfDF24obVHkKdlenZng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO4P265MB7032
X-OriginatorOrg: imgtec.com
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-ORIG-GUID: NpFCQ_eGF4NJOCX_IoRf8duXTGtSdQSH
X-Proofpoint-GUID: NpFCQ_eGF4NJOCX_IoRf8duXTGtSdQSH
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree binding documentation for the Series AXE GPU used in
TI AM62 SoCs.

Co-developed-by: Frank Binns <frank.binns@imgtec.com>
Signed-off-by: Frank Binns <frank.binns@imgtec.com>
Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
---
Changes since v4:
- Add clocks constraint for ti,am62-gpu
- Remove excess address and size cells in example
- Remove interrupt name and add maxItems
- Make property order consistent between dts and bindings doc
- Update example to match dts

Changes since v3:
- Remove oneOf in compatible property
- Remove power-supply (not used on AM62)

Changes since v2:
- Add commit message description
- Remove mt8173-gpu support (not currently supported)
- Drop quotes from $id and $schema
- Remove reg: minItems
- Drop _clk suffixes from clock-names
- Remove operating-points-v2 property and cooling-cells (not currently
  used)
- Add additionalProperties: false
- Remove stray blank line at the end of file

 .../devicetree/bindings/gpu/img,powervr.yaml  | 75 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++
 2 files changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpu/img,powervr.yaml

diff --git a/Documentation/devicetree/bindings/gpu/img,powervr.yaml b/Documentation/devicetree/bindings/gpu/img,powervr.yaml
new file mode 100644
index 000000000000..40ade5ceef6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/img,powervr.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023 Imagination Technologies Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/img,powervr.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Imagination Technologies PowerVR GPU
+
+maintainers:
+  - Sarah Walker <sarah.walker@imgtec.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - ti,am62-gpu
+      - const: img,powervr-seriesaxe
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: mem
+      - const: sys
+    minItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,am62-gpu
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: core
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    gpu: gpu@fd00000 {
+        compatible = "ti,am62-gpu", "img,powervr-seriesaxe";
+        reg = <0x0fd00000 0x20000>;
+        clocks = <&k3_clks 187 0>;
+        clock-names = "core";
+        interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+        power-domains = <&k3_pds 187 TI_SCI_PD_EXCLUSIVE>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index cd882b87a3c6..f84390bb6cfe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10138,6 +10138,13 @@ IMGTEC IR DECODER DRIVER
 S:	Orphan
 F:	drivers/media/rc/img-ir/
 
+IMGTEC POWERVR DRM DRIVER
+M:	Frank Binns <frank.binns@imgtec.com>
+M:	Sarah Walker <sarah.walker@imgtec.com>
+M:	Donald Robson <donald.robson@imgtec.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/gpu/img,powervr.yaml
+
 IMON SOUNDGRAPH USB IR RECEIVER
 M:	Sean Young <sean@mess.org>
 L:	linux-media@vger.kernel.org
-- 
2.41.0

