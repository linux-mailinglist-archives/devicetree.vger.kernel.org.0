Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D10F578233
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 14:23:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233616AbiGRMXo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 08:23:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233564AbiGRMXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 08:23:38 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36EFB25595
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:37 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id a18-20020a05600c349200b003a30de68697so3272267wmq.0
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ayzM4tdWAxdTq2eOnCE6d3LLrIch4LIjhD1aFF0Ci5w=;
        b=XZRM+8LrS0cety/Lzz2poQgAE3k5Ct9J71Sm9Q/XSWRFUAWiI0CWayv7YfGHfXOlFQ
         CXiXe9/eshMH2Tpv1d+BaDRbqyqaXNmmvppsOs8rKecjlrjC/GqFjYGnd89hblHjPFJI
         D1haHigx6bBIaM6kayC7SD49BFihdLUew3zPogd8w8GaV24i7Hc6Fw0H5ZXTj3PkiheM
         df9XAXvplVqGTBSrAw9Y+a1wWvO2lfJAheeMnczEk562fpAtO2MKLa4taLqcXQ+qJFJd
         67bCTp+DuT6aqRC/VsN4gvTTzyW1byHjwiiw9ek0zm27NRX8Pc3EaxUnPx/U6xoPcCUb
         HVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ayzM4tdWAxdTq2eOnCE6d3LLrIch4LIjhD1aFF0Ci5w=;
        b=gRYb4pwKqeS7zcnj7d+eLXocbB6FP9gzjtmbEvNBSLrNOHEzdf44FvAkROBvZ5EMOf
         fEIq7pfZfpk0upJcQ2NZTXXMu0wZzGlj0RlTeS818H6L7ba5LTivBTFsy6gpnWO1RaJU
         EcA2Q1Yc/ngQa1dhA/6ocSmDhsidZhLJHUEelng/oaAD8aZ4tBfabBwibjzs8FDyb14P
         NRVZ4pZMtF+lvBw+xP2dtbZvOmd/Qek4f3EwAkFHn/hOe+Ov3jzrNE1+0xaygGzqr5YL
         1/QOPc61bIoXDLpo1rErP1VTqZ0AXnUqKPHdBrdJ1B8K88g8Ti6ri6qcnxqBGrwYnqEh
         /gfQ==
X-Gm-Message-State: AJIora/P5TkFwAlyPOT7Khrjvo9NtCqrOgWkC4ZDS8RYF2DZFWi/KktX
        GzO+zP1LITMnI8nbhWBpIduebg==
X-Google-Smtp-Source: AGRyM1voZzZlKWfCYH4VN5G3a7aKDDjOSYf5e5Yp76oUNtTbh8IdEkcqXotc6TrOUAZ45pmKMc+zXA==
X-Received: by 2002:a7b:c4c8:0:b0:3a3:1b77:61bf with SMTP id g8-20020a7bc4c8000000b003a31b7761bfmr4084148wmk.92.1658147015831;
        Mon, 18 Jul 2022 05:23:35 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:77d:8cd7:da25:e091:44c6:f87f])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d5189000000b0021dd8e1309asm8184929wrv.75.2022.07.18.05.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 05:23:35 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Julien Panis <jpanis@baylibre.com>
Subject: [PATCH v1 1/2] arm64: dts: ti: k3-am62: add watchdog nodes
Date:   Mon, 18 Jul 2022 14:23:27 +0200
Message-Id: <20220718122328.251602-2-jpanis@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220718122328.251602-1-jpanis@baylibre.com>
References: <20220718122328.251602-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add nodes for watchdogs :
- 5 in main domain
- 1 in MCU domain
- 1 in wakeup domain

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi   | 45 ++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi    |  9 +++++
 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi |  9 +++++
 3 files changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index 5b2c210c592c..7202937618b7 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -572,4 +572,49 @@ main_mcan0: can@20701000 {
 		interrupt-names = "int0", "int1";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
 	};
+
+	main_rti0: watchdog@e000000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e000000 0x00 0x100>;
+		clocks = <&k3_clks 125 0>;
+		power-domains = <&k3_pds 125 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 125 0>;
+		assigned-clock-parents = <&k3_clks 125 2>;
+	};
+
+	main_rti1: watchdog@e010000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e010000 0x00 0x100>;
+		clocks = <&k3_clks 126 0>;
+		power-domains = <&k3_pds 126 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 126 0>;
+		assigned-clock-parents = <&k3_clks 126 2>;
+	};
+
+	main_rti2: watchdog@e020000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e020000 0x00 0x100>;
+		clocks = <&k3_clks 127 0>;
+		power-domains = <&k3_pds 127 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 127 0>;
+		assigned-clock-parents = <&k3_clks 127 2>;
+	};
+
+	main_rti3: watchdog@e030000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e030000 0x00 0x100>;
+		clocks = <&k3_clks 128 0>;
+		power-domains = <&k3_pds 128 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 128 0>;
+		assigned-clock-parents = <&k3_clks 128 2>;
+	};
+
+	main_rti15: watchdog@e0f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x0e0f0000 0x00 0x100>;
+		clocks = <&k3_clks 130 0>;
+		power-domains = <&k3_pds 130 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 130 0>;
+		assigned-clock-parents = <&k3_clks 130 2>;
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
index f56c803560f2..f82e94def774 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
@@ -81,4 +81,13 @@ mcu_gpio0: gpio@4201000 {
 		clocks = <&k3_clks 79 0>;
 		clock-names = "gpio";
 	};
+
+	mcu_rti0: watchdog@4880000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x04880000 0x00 0x100>;
+		clocks = <&k3_clks 131 0>;
+		power-domains = <&k3_pds 131 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 131 0>;
+		assigned-clock-parents = <&k3_clks 131 2>;
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
index 4090134676cf..3c95ac3a0dd5 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
@@ -38,4 +38,13 @@ wkup_i2c0: i2c@2b200000 {
 		clocks = <&k3_clks 107 4>;
 		clock-names = "fck";
 	};
+
+	wkup_rti0: watchdog@2b000000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2b000000 0x00 0x100>;
+		clocks = <&k3_clks 132 0>;
+		power-domains = <&k3_pds 132 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 132 0>;
+		assigned-clock-parents = <&k3_clks 132 2>;
+	};
 };
-- 
2.25.1

