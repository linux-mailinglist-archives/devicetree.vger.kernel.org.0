Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 765CF5612EB
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 09:08:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbiF3HIp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 03:08:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232102AbiF3HIo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 03:08:44 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10FD42E0A8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:08:42 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k22so25809319wrd.6
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 00:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayzM4tdWAxdTq2eOnCE6d3LLrIch4LIjhD1aFF0Ci5w=;
        b=71/VDhbaQSupQXYHrFC/jsNZ3D60v/ZgSkvNe9aWH58blGUOZNhCiH9E0fnbWR3O+7
         tGezD/f9rZHNYSaLwhAJDcgSe2tdFW/z8Ybll36I3xVXdH85VYnJZkWam5TM3XMr/Sac
         wuUTnOaSiVTPitMCAKgNWhnB6V2VGAQOVEnoic1SzXHlOlrO9kaJ5HiRSCUzSjHo2kwV
         f0iIjoEfsXdWcm9BLyMNWTAvOfPVSm2C9JXqV+LIJ36724Tw86uMuiJy8f0PAiHdIp0g
         Ryqr7c8ufaryfqZNPFqYm37ZCBTN0yZmPr2pg5MVtJLPG9hKVt8QDTN8mnCyVfCV/fOt
         rXKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ayzM4tdWAxdTq2eOnCE6d3LLrIch4LIjhD1aFF0Ci5w=;
        b=mTMLJCPyBU/dH2P+ilNjyL3cgxxq1oLDhIL3tMfsUf2GrDh81/TyldoOQsWR4XznxY
         OiECkc6ToN8NMWVCatMp8JN8EkSqwYvOTsxAuH3Nq2gdDzt4qThgkE4ANGG7j6eDTICU
         Xa0AQqaGJjBCRU+25/OjZvQAC1YfrUhautjD0Gu+BmbuB9+oD4JOboOnGW0Mj8q4PMf4
         099bBZNJzpoWQAYGl5nKoP9hLY8XE45TDQ8vMe2RvidkHnW8qvSjvLZJa1goNT2Q2LRX
         r/Ye87WHDEQsyPyb17FM7xsvfPghwUCacc1qC7VrQVz58W5VcOvr3frC7s06IOls7lZq
         wV9w==
X-Gm-Message-State: AJIora8ybQIS970yC2hEYvUaIvM+HoQ7AICTe6Y8EXWKfrDDfWxPNoe/
        RlrOCbELSgtUsQSr084yreJbxw==
X-Google-Smtp-Source: AGRyM1uQlTw63DMb8FdmLCF0nOX+VkDo2Bx+oRykHs0C6C6jifuUrkDqjXKm/mEHjiF/Sc9XTsJUig==
X-Received: by 2002:a5d:4b04:0:b0:21b:8640:273f with SMTP id v4-20020a5d4b04000000b0021b8640273fmr6917973wrq.195.1656572920550;
        Thu, 30 Jun 2022 00:08:40 -0700 (PDT)
Received: from localhost.localdomain (120.205.87.79.rev.sfr.net. [79.87.205.120])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0039aef592ca0sm5397421wmj.35.2022.06.30.00.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 00:08:39 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Julien Panis <jpanis@baylibre.com>
Subject: [PATCH] arm64: dts: ti: k3-am62: add watchdog nodes
Date:   Thu, 30 Jun 2022 09:08:26 +0200
Message-Id: <20220630070826.11074-1-jpanis@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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

