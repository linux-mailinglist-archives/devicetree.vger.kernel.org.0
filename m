Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBF4F1A319
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 20:45:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728004AbfEJSpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 14:45:51 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39016 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727952AbfEJSpv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 14:45:51 -0400
Received: by mail-pl1-f196.google.com with SMTP id g9so3229637plm.6
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H82q20L1aKXqNAtIH0Eb2SbfOdSZqnQm58Vm0JnT9D0=;
        b=jvfe1T+wn6nLz6baqZjEiJRUdTe8jBDiqtDZIU6lueztNU0Y2Mghocharb/nPRfIP8
         DE7bOxChVNSEdNTdPNjOe9JX6eyqgggMziJJADTk6aXWw85AZ2erQ9hGOFMXkWxXIy2z
         +fPEfQf7B7DsLGsI32WaaWzGmJOgZ5G84o0NjHWcYz90O1F/lIa2pJUl02FC6wgBnWfb
         9AHek+kjBStyQF+l4FluHdlDuvvMY9j9t6p7b08sviPX/KqEdGmGkV317JTrn0yWMr6i
         sSFt7wyh8sPZft4ran/9JqtTkqkJsPbJXEGURW/MIEGEFj7K94l/YlnWJbmTQRnF1T5C
         GY0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=H82q20L1aKXqNAtIH0Eb2SbfOdSZqnQm58Vm0JnT9D0=;
        b=Lrkjc1/Rf/8h1MhdFkaKzwL9FS+ZeTOK0Yi4ze+SthiqBgzluVVDSV5eIT0i7haWXk
         BBKHEZMHs0/ehQEPKJvgq66wCqq0nl/e+8aD5Cj4PBdanGUtZe4dHphJ6aQg7hMvQhUG
         //Nsj7aDS2iKq9FAUIlY1W1ARpYDn8OmZvWdn79WV1+DvmnB95xQm/o/EzSbPr3eeeya
         4yART14YONdQSF3VXJEPvLb9WvvJxllZUMwAyQK/jibUHH/zmf9rYDryuLu9lB9T0a1A
         FGaaat3xXkE63mc9FFmVljft7ccFFD0RGxVoG4jN0ObAty93MKrwoCGBtCJibME0ccYN
         WT7Q==
X-Gm-Message-State: APjAAAVIyEmMFow7d7byuIRyVk01n2hMLnXoJMf/E0Q20eXWcJVf5MpG
        3AsAmP7s3v8QgoPgEb83YGmu
X-Google-Smtp-Source: APXvYqzgLh8oziITJmYrfo0oAWdVE1RymvVNXRGjYIOASRWqA8BB/3AnvviuQ4u1+j27uNeaI0eudg==
X-Received: by 2002:a17:902:968b:: with SMTP id n11mr15213080plp.118.1557513950351;
        Fri, 10 May 2019 11:45:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:73c1:9991:95b6:5055:2390:bf9b])
        by smtp.gmail.com with ESMTPSA id g188sm8652049pfc.151.2019.05.10.11.45.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 May 2019 11:45:49 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 1/4] dt-bindings: reset: Add devicetree binding for BM1880 reset controller
Date:   Sat, 11 May 2019 00:15:22 +0530
Message-Id: <20190510184525.13568-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510184525.13568-1-manivannan.sadhasivam@linaro.org>
References: <20190510184525.13568-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Bitmain BM1880 SoC reset controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/reset/bitmain,bm1880-reset.txt   | 18 +++++++
 .../dt-bindings/reset/bitmain,bm1880-reset.h  | 51 +++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
 create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h

diff --git a/Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt b/Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
new file mode 100644
index 000000000000..a6f8455ae6c4
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
@@ -0,0 +1,18 @@
+Bitmain BM1880 SoC Reset Controller
+===================================
+
+Please also refer to reset.txt in this directory for common reset
+controller binding usage.
+
+Required properties:
+- compatible:   Should be "bitmain,bm1880-reset"
+- reg:          Offset and length of reset controller space in SCTRL.
+- #reset-cells: Must be 1.
+
+Example:
+
+        rst: reset-controller@c00 {
+                compatible = "bitmain,bm1880-reset";
+                reg = <0xc00 0x8>;
+                #reset-cells = <1>;
+        };
diff --git a/include/dt-bindings/reset/bitmain,bm1880-reset.h b/include/dt-bindings/reset/bitmain,bm1880-reset.h
new file mode 100644
index 000000000000..4c0de5223773
--- /dev/null
+++ b/include/dt-bindings/reset/bitmain,bm1880-reset.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2018 Bitmain Ltd.
+ * Copyright (c) 2019 Linaro Ltd.
+ */
+
+#ifndef _DT_BINDINGS_BM1880_RESET_H
+#define _DT_BINDINGS_BM1880_RESET_H
+
+#define BM1880_RST_MAIN_AP		0
+#define BM1880_RST_SECOND_AP		1
+#define BM1880_RST_DDR			2
+#define BM1880_RST_VIDEO		3
+#define BM1880_RST_JPEG			4
+#define BM1880_RST_VPP			5
+#define BM1880_RST_GDMA			6
+#define BM1880_RST_AXI_SRAM		7
+#define BM1880_RST_TPU			8
+#define BM1880_RST_USB			9
+#define BM1880_RST_ETH0			10
+#define BM1880_RST_ETH1			11
+#define BM1880_RST_NAND			12
+#define BM1880_RST_EMMC			13
+#define BM1880_RST_SD			14
+#define BM1880_RST_SDMA			15
+#define BM1880_RST_I2S0			16
+#define BM1880_RST_I2S1			17
+#define BM1880_RST_UART0_1_CLK		18
+#define BM1880_RST_UART0_1_ACLK		19
+#define BM1880_RST_UART2_3_CLK		20
+#define BM1880_RST_UART2_3_ACLK		21
+#define BM1880_RST_MINER		22
+#define BM1880_RST_I2C0			23
+#define BM1880_RST_I2C1			24
+#define BM1880_RST_I2C2			25
+#define BM1880_RST_I2C3			26
+#define BM1880_RST_I2C4			27
+#define BM1880_RST_PWM0			28
+#define BM1880_RST_PWM1			29
+#define BM1880_RST_PWM2			30
+#define BM1880_RST_PWM3			31
+#define BM1880_RST_SPI			32
+#define BM1880_RST_GPIO0		33
+#define BM1880_RST_GPIO1		34
+#define BM1880_RST_GPIO2		35
+#define BM1880_RST_EFUSE		36
+#define BM1880_RST_WDT			37
+#define BM1880_RST_AHB_ROM		38
+#define BM1880_RST_SPIC			39
+
+#endif /* _DT_BINDINGS_BM1880_RESET_H */
-- 
2.17.1

