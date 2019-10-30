Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 33D6DE9F3A
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 16:39:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727185AbfJ3PjJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 11:39:09 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45800 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726476AbfJ3PjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 11:39:09 -0400
Received: by mail-wr1-f68.google.com with SMTP id q13so2815638wrs.12
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 08:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8jtYHN2w57bBPv64kTlVVyOj6ouMIp9dIRnStIJzlbQ=;
        b=faCZh+97syf7wKj4m6iG5COA8f+bCcpMIBWkd0p+YZGm9ZZApv1yCF8QRb+yZHjSiX
         J9gkBPZEMaZ9FRoNRYL1GIxTdtrOqYTmi9NsVzlRnT51M7U6pkGBdplTQ4+Dlb2XSd5j
         jv+h7q+EpZ0gaXeLCHdcuzSUrKqZmyuo1AzY9J7UXGfjAcoj8dfsDrfnOg4X/TlnQEKU
         bVBvUQmbpL1UcWqoY1WLwMzT9tQpiyuzPfEaRDXWb3LUauuBcIyolSgCZ+bQs1D8Abj+
         kclLzOfI4z4s6EgMMs80SiFGJE4KoK0IDHwq5/GKPtm2/vy0ISe3tdPrxgGL3A47Emxa
         G32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8jtYHN2w57bBPv64kTlVVyOj6ouMIp9dIRnStIJzlbQ=;
        b=nlz31aN6RCIhO9nGj01Gp/VBg6r4HxG2KWvUpi6MX0iXWOcI7oqiGHHrNxPz3sSB+E
         0X6Oqs4eJkYa7zjkmlTFyjd1+o4twSr7P/HtJP4se75HxocLFoVddt2sPjpj3rve4/GS
         PKHlEIITvXIcLSbC3rE101mYRcYqfqLkbks2Kzojvp87tXhZwqHX+lEQ16nAWRxbo0iu
         eBgYboUK6BtooJLFDAyxAXCFBIcDTGvSjWCGWKWFNRe6wkgkpVjHYhtUXrNjMc6sJzLI
         iO8BodNDJJmgpeko0DMfnzrL0itbuqMA3LGV1Fjl/UGRa5ztDkeNsQrJv5K198g6Ut9d
         l04g==
X-Gm-Message-State: APjAAAX+tISJeZe9+XHGLyvOWoXsCqJpDqzbqEvPqkTaxDBpNdnH0Ceq
        6pFKmuErp7L+izltMZ7ny0Y+ww==
X-Google-Smtp-Source: APXvYqxIJ+3IV7ixjBEghbOUaBYr8J2msKnnPMdJEZB8JzIPVgMPtLLtnnOrQEzqiul+xNutPORzEA==
X-Received: by 2002:a05:6000:1048:: with SMTP id c8mr415112wrx.349.1572449946898;
        Wed, 30 Oct 2019 08:39:06 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id o25sm725524wro.21.2019.10.30.08.39.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Oct 2019 08:39:06 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     robh+dt@kernel.org, linux-pm@vger.kernel.org
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        evgreen@chromium.org, daidavid1@codeaurora.org,
        vincent.guittot@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        georgi.djakov@linaro.org
Subject: [PATCH v10 1/3] dt-bindings: interconnect: Add Qualcomm MSM8916 DT bindings
Date:   Wed, 30 Oct 2019 17:39:02 +0200
Message-Id: <20191030153904.8715-2-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030153904.8715-1-georgi.djakov@linaro.org>
References: <20191030153904.8715-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm MSM8916 platform has several bus fabrics that could be
controlled and tuned dynamically according to the bandwidth demand.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 .../bindings/interconnect/qcom,msm8916.yaml   |  77 ++++++++++++++
 .../dt-bindings/interconnect/qcom,msm8916.h   | 100 ++++++++++++++++++
 2 files changed, 177 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,msm8916.yaml
 create mode 100644 include/dt-bindings/interconnect/qcom,msm8916.h

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8916.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8916.yaml
new file mode 100644
index 000000000000..4107e60cab12
--- /dev/null
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8916.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interconnect/qcom,msm8916.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm MSM8916 Network-On-Chip interconnect
+
+maintainers:
+  - Georgi Djakov <georgi.djakov@linaro.org>
+
+description: |
+   The Qualcomm MSM8916 interconnect providers support adjusting the
+   bandwidth requirements between the various NoC fabrics.
+
+properties:
+  compatible:
+    enum:
+      - qcom,msm8916-bimc
+      - qcom,msm8916-pcnoc
+      - qcom,msm8916-snoc
+
+  reg:
+    maxItems: 1
+
+  '#interconnect-cells':
+    const: 1
+
+  clock-names:
+    items:
+      - const: bus
+      - const: bus_a
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Bus A Clock
+
+required:
+  - compatible
+  - reg
+  - '#interconnect-cells'
+  - clock-names
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/clock/qcom,rpmcc.h>
+
+      bimc: interconnect@400000 {
+              compatible = "qcom,msm8916-bimc";
+              reg = <0x00400000 0x62000>;
+              #interconnect-cells = <1>;
+              clock-names = "bus", "bus_a";
+              clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
+                       <&rpmcc RPM_SMD_BIMC_A_CLK>;
+      };
+
+      pcnoc: interconnect@500000 {
+              compatible = "qcom,msm8916-pcnoc";
+              reg = <0x00500000 0x11000>;
+              #interconnect-cells = <1>;
+              clock-names = "bus", "bus_a";
+              clocks = <&rpmcc RPM_SMD_PCNOC_CLK>,
+                       <&rpmcc RPM_SMD_PCNOC_A_CLK>;
+      };
+
+      snoc: interconnect@580000 {
+              compatible = "qcom,msm8916-snoc";
+              reg = <0x00580000 0x14000>;
+              #interconnect-cells = <1>;
+              clock-names = "bus", "bus_a";
+              clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
+                       <&rpmcc RPM_SMD_SNOC_A_CLK>;
+      };
diff --git a/include/dt-bindings/interconnect/qcom,msm8916.h b/include/dt-bindings/interconnect/qcom,msm8916.h
new file mode 100644
index 000000000000..359a75feb198
--- /dev/null
+++ b/include/dt-bindings/interconnect/qcom,msm8916.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Qualcomm interconnect IDs
+ *
+ * Copyright (c) 2019, Linaro Ltd.
+ * Author: Georgi Djakov <georgi.djakov@linaro.org>
+ */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_QCOM_MSM8916_H
+#define __DT_BINDINGS_INTERCONNECT_QCOM_MSM8916_H
+
+#define BIMC_SNOC_SLV			0
+#define MASTER_JPEG			1
+#define MASTER_MDP_PORT0		2
+#define MASTER_QDSS_BAM			3
+#define MASTER_QDSS_ETR			4
+#define MASTER_SNOC_CFG			5
+#define MASTER_VFE			6
+#define MASTER_VIDEO_P0			7
+#define SNOC_MM_INT_0			8
+#define SNOC_MM_INT_1			9
+#define SNOC_MM_INT_2			10
+#define SNOC_MM_INT_BIMC		11
+#define PCNOC_SNOC_SLV			12
+#define SLAVE_APSS			13
+#define SLAVE_CATS_128			14
+#define SLAVE_OCMEM_64			15
+#define SLAVE_IMEM			16
+#define SLAVE_QDSS_STM			17
+#define SLAVE_SRVC_SNOC			18
+#define SNOC_BIMC_0_MAS			19
+#define SNOC_BIMC_1_MAS			20
+#define SNOC_INT_0			21
+#define SNOC_INT_1			22
+#define SNOC_INT_BIMC			23
+#define SNOC_PCNOC_MAS			24
+#define SNOC_QDSS_INT			25
+
+#define BIMC_SNOC_MAS			0
+#define MASTER_AMPSS_M0			1
+#define MASTER_GRAPHICS_3D		2
+#define MASTER_TCU0			3
+#define MASTER_TCU1			4
+#define SLAVE_AMPSS_L2			5
+#define SLAVE_EBI_CH0			6
+#define SNOC_BIMC_0_SLV			7
+#define SNOC_BIMC_1_SLV			8
+
+#define MASTER_BLSP_1			0
+#define MASTER_DEHR			1
+#define MASTER_LPASS			2
+#define MASTER_CRYPTO_CORE0		3
+#define MASTER_SDCC_1			4
+#define MASTER_SDCC_2			5
+#define MASTER_SPDM			6
+#define MASTER_USB_HS			7
+#define PCNOC_INT_0			8
+#define PCNOC_INT_1			9
+#define PCNOC_MAS_0			10
+#define PCNOC_MAS_1			11
+#define PCNOC_SLV_0			12
+#define PCNOC_SLV_1			13
+#define PCNOC_SLV_2			14
+#define PCNOC_SLV_3			15
+#define PCNOC_SLV_4			16
+#define PCNOC_SLV_8			17
+#define PCNOC_SLV_9			18
+#define PCNOC_SNOC_MAS			19
+#define SLAVE_BIMC_CFG			20
+#define SLAVE_BLSP_1			21
+#define SLAVE_BOOT_ROM			22
+#define SLAVE_CAMERA_CFG		23
+#define SLAVE_CLK_CTL			24
+#define SLAVE_CRYPTO_0_CFG		25
+#define SLAVE_DEHR_CFG			26
+#define SLAVE_DISPLAY_CFG		27
+#define SLAVE_GRAPHICS_3D_CFG		28
+#define SLAVE_IMEM_CFG			29
+#define SLAVE_LPASS			30
+#define SLAVE_MPM			31
+#define SLAVE_MSG_RAM			32
+#define SLAVE_MSS			33
+#define SLAVE_PDM			34
+#define SLAVE_PMIC_ARB			35
+#define SLAVE_PCNOC_CFG			36
+#define SLAVE_PRNG			37
+#define SLAVE_QDSS_CFG			38
+#define SLAVE_RBCPR_CFG			39
+#define SLAVE_SDCC_1			40
+#define SLAVE_SDCC_2			41
+#define SLAVE_SECURITY			42
+#define SLAVE_SNOC_CFG			43
+#define SLAVE_SPDM			44
+#define SLAVE_TCSR			45
+#define SLAVE_TLMM			46
+#define SLAVE_USB_HS			47
+#define SLAVE_VENUS_CFG			48
+#define SNOC_PCNOC_SLV			49
+
+#endif
