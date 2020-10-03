Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 927C6282404
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 14:07:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725770AbgJCMHC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 08:07:02 -0400
Received: from mail-eopbgr00077.outbound.protection.outlook.com ([40.107.0.77]:47079
        "EHLO EUR02-AM5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725777AbgJCMHC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Oct 2020 08:07:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWbdjwvicO3PF6yJIAqEsv5lO5tRiC2LhflghtQnza4w43WF2Jv4PV8KtJjYnUkM4N9wXIVJO36+mP3lW+KM1BAyzRS988JNOHQdZwSYljxPlZrwYnZDYzeziOgnOEnfxSSFiwo9OiybIFYtxtqjr4efbqYvovdepwnA5oTHwRBgv3Tdr8Kra8fmddd+BWBrgCsneqcJbfFFqhNL2KeXbz5PnodI+6MV8X+34Tm/E4uxEqTPH7L15IMxfju3LdornmnQEj4h1h9qDtKzqmHlcIcvC+DliQYH6mGCZ8iw5bWezvx8yUkWEpu3olaUbmULynB04fVLayWS48OTN0w0Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7MmFEOtu5+G2iEkzYQmsqtqumlKg/r+5HthT29d2vzY=;
 b=EpNYvttwdFFi/1hn/XRNzhVnkx7NxcRQczQuCxkCjYGMCIdS0X4ssoqxJ6Kgex0WZa7KfwgfWzxfcbB4KXPs1PMOHFVdkdiRxAknec7mu53X6AsQDnGIPey274lLs1asveliHUqrMsVMOQ15gE7IdkW6BVfOf3spRDmyy5olUpLzQ79rHo6o5g8CYrd3u8I9Me3qETTmrZ5kqB01bxTREudCYw96rAHHYFY1OaoGzwMa35myjRD3L1y+lGjkfSW7PrtWD85Lm5LVcwRHFkvGaAa9+NtWxT1ai+49+mz1V4DjGbJYFJJf+PvBF2YSfHNytlReKao5dXUBm6PEhTGK5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7MmFEOtu5+G2iEkzYQmsqtqumlKg/r+5HthT29d2vzY=;
 b=IY3lyWvCv+E/cJ2GZMb/wD4K/6vgQcS9QYgnDKa4tIDMxHERbtwHhW1HktwKYyjqbbW6XO2kOf0fjTCtOewL6M22K9THqfAFjVAMGuUdULi6B9/vtPkctX0Lu5g5yNoaDUB7Q3mxsAqX4ggZMvCjr+3fmgYmhJbsDLw6utEV2p0=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VI1PR04MB4064.eurprd04.prod.outlook.com (2603:10a6:803:4c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.32; Sat, 3 Oct
 2020 12:06:45 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::acd3:d354:3f34:3af7%4]) with mapi id 15.20.3433.039; Sat, 3 Oct 2020
 12:06:45 +0000
From:   Li Jun <jun.li@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, balbi@kernel.org
Cc:     krzk@kernel.org, gregkh@linuxfoundation.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, jun.li@nxp.com,
        aisheng.dong@nxp.com, peng.fan@nxp.com, fugang.duan@nxp.com,
        horia.geanta@nxp.com, qiangqing.zhang@nxp.com, peter.chen@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/4] dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3 glue bindings
Date:   Sat,  3 Oct 2020 20:02:04 +0800
Message-Id: <1601726527-23326-2-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28)
 To VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR0601CA0018.apcprd06.prod.outlook.com (2603:1096:3::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3433.35 via Frontend Transport; Sat, 3 Oct 2020 12:06:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 408a422d-4ea8-4427-2f40-08d86794cc07
X-MS-TrafficTypeDiagnostic: VI1PR04MB4064:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR04MB4064C035C9D23E898FD86C86890E0@VI1PR04MB4064.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 331VghE5M5yn6f6o3FReehCY5e+eNGx0WX9rQC9rz6sxVbtDY/0hoMDyFyZPJcxwvruAGdhfrALShw34wrVvLcoJJv2MuwJJdV2QLpFNq90/m49NAp/2fJ2T3+diA0pHxwQUyzXw6BVdXz0WrL+ZiPsJ+IEbvLzfaoSs6pH8lg36pkE0zlhZoUswRe8EuGYVfA/hi1THftwdA5kcm/rFC8ZEZPCM9/jHPCA59J62Ixm6e5XmMCfdqHy6vKD9ex2t6PEXbz4T7i5SE80+L10WEf8rbpQ39A5p3OS0O73AGgnREuOr/etRPvebJhtCc7JLd7pLjEIsqkB2tUb4+O2nuahxP2A7M9mjexjmIMUqyRAnVkR2PGmMGexsP9UOGWRsi5/rLlpoq1f4GjtS4mYj91D3+ahfubpOWVaQAbvLYQBVwxFyFuy3m4lNJtytlELc524BZeeGLTQZg1N0nhPz7leE0zbsv9A8HDva36tJxhw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6528.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(396003)(136003)(376002)(346002)(2906002)(8936002)(16526019)(66946007)(66556008)(66476007)(186003)(6512007)(6486002)(8676002)(7416002)(69590400008)(83380400001)(36756003)(26005)(5660300002)(6666004)(83080400001)(52116002)(478600001)(966005)(316002)(86362001)(6506007)(956004)(4326008)(2616005)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: AafdMzbWjUKt/2rQnQWfzeZdTHQI4mYk3S3vTT78lXtwaOAkWGtqKUngxkAStCFZxhnvxtD1xt1I2SmzC0F1G0lKlHOEpGkHE5EB9OdnKmCeVzIxlYtMBzgPBZvlXPMTMHU8FtzDlfrxd7F9RykzkIY1t+k1SAYdL0/uYA+Gg2S5J7QbxsiL+Lu8wln9A9MogHIbRKhBtLznIX5+oDqfZUGMqyCSBeuwSzz4kh9ilO996NS49P5APTqxRZ3nhKEevr+9Rt8Huii6BhKaYeSViYjeaEluhwn7mPKjj9z3rIQ9zGziOvQmhUK1fLq3HeCK37BT/kS3Vn71xGv6iwgoxnw7+mx57nS1ihkk3+jbqobf9zfikSFnGwy2LcMJK28d+wouozBRoC+5j0B+qtU1Rdi/29N2r+1mlFPpLH/bq9Y6OTdWKHCbGV0sjtvhvWq1INZuKVEuh3rZJ0jgFQ2GUrytNKBJ3wnfQrgFYG/VUOun13RS6/LHYGTlPBzVXf3aqApyxsDjhBUbkes9KMt2Zh951E1V6czzTmxpQNviySfa8KK5chLdLvkxXP3ih1bTEANQCrfMZJ0jMxZoDU5gL1AHHbvReyZRg9j0zarsDkn6GBMVptTAAMVWZJl38Dz17lq5tCN5v9sCWoLhG682Dg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 408a422d-4ea8-4427-2f40-08d86794cc07
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6528.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2020 12:06:45.1807
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lx9I0gxEzmGVtlvxSzPO6DXRqF5pHAQ4GaTcgZeleyKDRNS8UMZTcaHzvqIfdwje
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4064
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NXP imx8mp integrates 2 dwc3 3.30b IP and add some wakeup logic
to support low power mode, the glue layer is for this wakeup
functionality, which has a separated interrupt, can support
wakeup from U3 and connect events for host, and vbus wakeup for
device.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 .../devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml   | 105 +++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
new file mode 100644
index 0000000..cb4c6f6
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2020 NXP
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/fsl,imx8mp-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP iMX8MP Soc USB Controller
+
+maintainers:
+  - Li Jun <jun.li@nxp.com>
+
+properties:
+  compatible:
+    const: fsl,imx8mp-dwc3
+
+  reg:
+    maxItems: 1
+    description: Address and length of the register set for the wrapper of
+      dwc3 core on the SOC.
+
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+  dma-ranges:
+    description:
+      See section 2.3.9 of the DeviceTree Specification.
+
+  ranges: true
+
+  interrupts:
+    maxItems: 1
+    description: The interrupt that is asserted when a wakeup event is
+      received.
+
+  clocks:
+    description:
+      A list of phandle and clock-specifier pairs for the clocks
+      listed in clock-names.
+    items:
+      - description: system hsio root clock.
+      - description: suspend clock, used for usb wakeup logic.
+
+  clock-names:
+    items:
+      - const: hsio
+      - const: suspend
+
+# Required child node:
+
+patternProperties:
+  "^dwc3@[0-9a-f]+$":
+    type: object
+    description:
+      A child node must exist to represent the core DWC3 IP block
+      The content of the node is defined in dwc3.txt.
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - dma-ranges
+  - ranges
+  - clocks
+  - clock-names
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb3_0: usb@32f10100 {
+      compatible = "fsl,imx8mp-dwc3";
+      reg = <0x32f10100 0x8>;
+      clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
+               <&clk IMX8MP_CLK_USB_ROOT>;
+      clock-names = "hsio", "suspend";
+      interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      dma-ranges = <0x40000000 0x40000000 0xc0000000>;
+      ranges;
+
+      dwc3@38100000 {
+        compatible = "snps,dwc3";
+        reg = <0x38100000 0x10000>;
+        clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
+                 <&clk IMX8MP_CLK_USB_CORE_REF>,
+                 <&clk IMX8MP_CLK_USB_ROOT>;
+        clock-names = "bus_early", "ref", "suspend";
+        assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+        assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_500M>;
+        assigned-clock-rates = <500000000>;
+        interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+        phys = <&usb3_phy0>, <&usb3_phy0>;
+        phy-names = "usb2-phy", "usb3-phy";
+        snps,dis-u2-freeclk-exists-quirk;
+      };
+    };
-- 
2.7.4

