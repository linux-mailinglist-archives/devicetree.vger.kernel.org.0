Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 115587044DE
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 07:50:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjEPFuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 01:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjEPFuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 01:50:03 -0400
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2075.outbound.protection.outlook.com [40.107.255.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA59C3C33
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 22:50:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dLiBn0hbqCVQmHatrq453Seia7iFxMKHnE+EesTMHsLi0U/M55O3+t2cL8339f2Fm6K7sHHrztZ9MOvbwMCpEdw4Xok1p8Rg/lhHSMM1f8qopYAnDkkn8I6PyTpBvMqIlxfJxi8+Ug4kaIfWLiZPTJNxgvz3/t+V+mxNFr4g0xTS+wBhIob2t9ngcoMr6LS5zEyLeSU/FNtO3dftKS02ANSxsjRY544r9M34bSPVZCm65l+Cnf7ch9NBTUHjT6dDTG+AwlrjOxrDV9udBIYnH7bLrL1NDVw6zk6FHmoFr+jJVaQrMJtQwEpu1R7tRTbblgLLN3Riynhw05owuOkJkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5SJJnp8S07Y1zfSldL7IZSSs1i+CsgC02YwQVxyq8Ks=;
 b=ZU+rmeT+Hg50qRdQ1z/mmccCa0wx6/HuADqezbn/uLYt9bP0Lt7s3MXpknPJiJC0IdA6cICvgXizK0GE4zLskGkllYAnbU7hHGcoE+HGm8zeFfZ2O1LiBrEYK3wBRe7cifE4ByTJDGJYOUbubYpJHFB+ELLho2fsFST/t0J+rs8tQLsZZcpO59eaiQ+dYpb70/fN7bggZJwmZqnBGpsLwh0HZzmS93IzmoYH1XS3vbYVQRFmOrd+sJlaIdSCXfy1vlF9pc9I0Seog/GzWOVdm/kY8E/Ax6XUQA5krt1xayO0tmAyIuAInuFG1o0f80Fo3bftR/EFOoZ+djLFvgpaKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 175.98.123.7) smtp.rcpttodomain=kernel.org smtp.mailfrom=nuvoton.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=nuvoton.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nuvoton.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SJJnp8S07Y1zfSldL7IZSSs1i+CsgC02YwQVxyq8Ks=;
 b=RnQbbyPKa/yRkgPpMrNo9vSvLHrORlAScqK7Z1sxot33sk+8IfSdoJSE97H2W7KKvglGUtdagivlF5dTr2frhH1Q/lLMtm6BZrYRhkD+gj1+rglIog7Ml7n3BI3IMRDOCVkgbYRayP1wk7+xFLfDZhFyr2SjNBf6m5e6J7f/fbE=
Received: from TYCPR01CA0159.jpnprd01.prod.outlook.com (2603:1096:400:2b1::15)
 by JH0PR03MB7344.apcprd03.prod.outlook.com (2603:1096:990:16::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.31; Tue, 16 May
 2023 05:49:57 +0000
Received: from TYZAPC01FT053.eop-APC01.prod.protection.outlook.com
 (2603:1096:400:2b1:cafe::1d) by TYCPR01CA0159.outlook.office365.com
 (2603:1096:400:2b1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30 via Frontend
 Transport; Tue, 16 May 2023 05:49:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 175.98.123.7)
 smtp.mailfrom=nuvoton.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nuvoton.com;
Received-SPF: Pass (protection.outlook.com: domain of nuvoton.com designates
 175.98.123.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=175.98.123.7; helo=NTHCCAS04.nuvoton.com; pr=C
Received: from NTHCCAS04.nuvoton.com (175.98.123.7) by
 TYZAPC01FT053.mail.protection.outlook.com (10.118.152.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.6411.15 via Frontend Transport; Tue, 16 May 2023 05:49:56 +0000
Received: from NTHCML01A.nuvoton.com (10.1.8.177) by NTHCCAS04.nuvoton.com
 (10.1.8.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 16
 May 2023 13:49:53 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCML01A.nuvoton.com
 (10.1.8.177) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2176.2; Tue, 16 May
 2023 13:49:52 +0800
Received: from localhost.localdomain (10.11.36.27) by NTHCCAS04.nuvoton.com
 (10.1.8.29) with Microsoft SMTP Server id 15.1.2176.2 via Frontend Transport;
 Tue, 16 May 2023 13:49:52 +0800
From:   David Lin <CTLIN0@nuvoton.com>
To:     <broonie@kernel.org>
CC:     <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <YHCHuang@nuvoton.com>,
        <KCHSU0@nuvoton.com>, <WTLI@nuvoton.com>, <SJLIN0@nuvoton.com>,
        <ctlin0.linux@gmail.com>, David Lin <CTLIN0@nuvoton.com>
Subject: [PATCH] ASoC: dt-bindings: nau8315: Convert to dtschema
Date:   Tue, 16 May 2023 13:49:45 +0800
Message-ID: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NotSetDelaration: True
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZAPC01FT053:EE_|JH0PR03MB7344:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b87b23f-d112-46e9-5032-08db55d16125
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ib7PmWmqurV7FKhavjD4Q5umNj02eETA1CddOOjpu5jPZCrmXqm5vnnnxLmZnfOSHJh3CuwrwkdgEVizzATWjNvZMofuXXchg3Yqg/DctdhA5N5gCCa9wEaH3vZeuAfnzZpQhbH37qJzTIGZPd6TLn+DZW/n3VP5ncOzFAmaNh1u9z97HElGeAH+mn1X+Hv00G+SkI+lEi/+5Jcvzaf9mAmvJiJj4yonhSwjKS66UuHAY8PkgalnEAqupwvc37qcH/iTOv2WKKQIm4uf7OzH1lFSN3Ow7Cn9jrCVN18oxHO4JsR+rgGkVhzmp9sG5vJxoWYbIFzFNvLnCPUv0w3AimxYvagt6Q4A108PNTwcm1xW+58HfnZK8pcYEN7nIPfzVp6NMMdUwEHt/C80o2CvyBFoUEynHtH/l/j358s1URKddDXcXumiArZH5CqX8//N3HBo5Mc5qDgzFNAUhR//p5HssXCjZPsyvB+KCGmFMYs4kP+PZB2TBIThKdMyLEJ30XsxYV2vh4IAuPeg7KzrYl1k1yXNGK8WSSQAJpwZGHLLdFXQufY13iNMlvtGUi7vwuQHx+bKzNpGuDmq6pneTv4nxvAmI6kmdjFDdLUSrKP/6qUcuwuTvh4hfCQRczi6zoqNZrSZ/3quLYE2QazqY0Vkdq5MlRVYE5XRc5mRdVWPAc528HfoYVU49UC2M/QswIMj2w1AkiXyOjW9OqyBg+9q93zw+iuuVdWHzfdCMtrYGEl5Bi8hNPK0iwoDJuWp59+6w+0KT+vmrCqjQ90FOw==
X-Forefront-Antispam-Report: CIP:175.98.123.7;CTRY:TW;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:NTHCCAS04.nuvoton.com;PTR:175-98-123-7.static.tfn.net.tw;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(376002)(136003)(396003)(346002)(451199021)(36840700001)(40470700004)(46966006)(8936002)(5660300002)(8676002)(36756003)(2906002)(6916009)(4326008)(316002)(41300700001)(478600001)(40460700003)(70206006)(70586007)(40480700001)(33656002)(54906003)(36860700001)(966005)(6666004)(26005)(186003)(1076003)(107886003)(82740400003)(426003)(2616005)(336012)(47076005)(82310400005)(81166007)(356005)(83380400001)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: nuvoton.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 05:49:56.8637
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b87b23f-d112-46e9-5032-08db55d16125
X-MS-Exchange-CrossTenant-Id: a3f24931-d403-4b4a-94f1-7d83ac638e07
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a3f24931-d403-4b4a-94f1-7d83ac638e07;Ip=[175.98.123.7];Helo=[NTHCCAS04.nuvoton.com]
X-MS-Exchange-CrossTenant-AuthSource: TYZAPC01FT053.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7344
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the NAU8315 audio CODEC bindings to DT schema.

Signed-off-by: David Lin <CTLIN0@nuvoton.com>
---
 .../devicetree/bindings/sound/nau8315.txt     | 24 ----------
 .../bindings/sound/nuvoton,nau8315.yaml       | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/nau8315.txt
 create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8315.yaml

diff --git a/Documentation/devicetree/bindings/sound/nau8315.txt b/Documentation/devicetree/bindings/sound/nau8315.txt
deleted file mode 100644
index 1cd94517d45e..000000000000
--- a/Documentation/devicetree/bindings/sound/nau8315.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Nuvoton NAU8315 Mono Class-D Amplifier
-
-Required properties:
-- compatible   : "nuvoton,nau8315"
-                 "nuvoton,nau8318"
-
-Optional properties:
-- enable-gpios : GPIO specifier for the chip's device enable input(EN) pin.
-        If this option is not specified then driver does not manage
-        the pin state (e.g. chip is always on).
-
-Example:
-
-#include <dt-bindings/gpio/gpio.h>
-
-nau8315 {
-	compatible = "nuvoton,nau8315";
-	enable-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
-};
-
-nau8318 {
-	compatible = "nuvoton,nau8318";
-	enable-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
-};
diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8315.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8315.yaml
new file mode 100644
index 000000000000..24006e9dc501
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8315.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/nuvoton,nau8315.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NAU8315/NAU8318 Mono Class-D Amplifier
+
+maintainers:
+  - David Lin <CTLIN0@nuvoton.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,nau8315
+      - nuvoton,nau8318
+
+  '#sound-dai-cells':
+    const: 0
+
+  enable-gpios:
+    maxItems: 1
+    description:
+      GPIO specifier for the chip's device enable input(EN) pin.
+      If this option is not specified then driver does not manage
+      the pin state (e.g. chip is always on).
+
+required:
+  - compatible
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    codec {
+        compatible = "nuvoton,nau8315";
+        #sound-dai-cells = <0>;
+        enable-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.25.1

