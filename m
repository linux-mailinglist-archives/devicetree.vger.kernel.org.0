Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A58E466B81C
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 08:22:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbjAPHWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 02:22:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231840AbjAPHWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 02:22:42 -0500
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFF60C650
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 23:22:40 -0800 (PST)
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197]) by mx-outbound46-13.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 16 Jan 2023 07:22:38 +0000
Received: by mail-pg1-f197.google.com with SMTP id r126-20020a632b84000000b004393806c06eso12383740pgr.4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 23:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gN3DM3KkWcZR5XsGbUD2vNQk/vk7I/JC/dpmGMxqX58=;
        b=oj4He+vCsCU4dfXcyxubUw1sPRC2jS5qQEd84QkWvSwjIEXVMda7QyJPAXCQxCfIT8
         2IwW9LmrqJtFTeD/m8hHz8XaYVHqga8Bi1egXTmS4/qQp+WgGNdZSEwsY4KkjCGPa7qw
         10lW6dRuEaGaUzw5yn4BMtoXemoj4oHwsFa/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gN3DM3KkWcZR5XsGbUD2vNQk/vk7I/JC/dpmGMxqX58=;
        b=gFPOn6tM7NyDMXG0GFrlEiC1aREL6AX3kVyNFTDKGajWrSLCBfIR+nPIF/wqOKt/7i
         5IItE6hKM3Fc2I4vDtp1J8auwrXmmI/hDqKgV8DaY9DHKwAWdObcbqJ4IBcDQ67XodRZ
         kX04CYZNlFRdDQld2kASOuANUUavNcxJdG7tSH34c2Y/VoUc4CMmb3z2ADu1XuKx33/Q
         Szh6gIur8ifk19uC0iOgGFj91wOS7c/dRg8P/MsGM5YGgDl/sTkMuwOqyPvTXG3+mz3K
         TYsB1m1JjH4rrJyc7uxQCHGN/rRmyHOYqnEmRsHGtRiSHP/i3KAV+Lf1CyUsrm4cnoQg
         9ABQ==
X-Gm-Message-State: AFqh2kr0MpSZxgZvbQ4M2pyzkVdNjVeaPDCmHAe1Mjvq34Ug51ulZi1B
        Nw+jlUEuHNSicD2T9h7eWJ/SD3Ke7ZhtrqUtnF3RjYj1s980XFpkq1tWZYlJWOrG1W6vE9cnJGj
        tiSq0DagAT4woYKqByLhCC8udqD1idKQR90n4qTRlzQ+zXiW1sNa3dT8Ugg==
X-Received: by 2002:a17:902:6bc6:b0:192:c36c:f115 with SMTP id m6-20020a1709026bc600b00192c36cf115mr49358207plt.66.1673853756988;
        Sun, 15 Jan 2023 23:22:36 -0800 (PST)
X-Google-Smtp-Source: AMrXdXslCdeI2RNGQOv8AsmNMfF7ptX28sff0KJkOJgLudJJeZm2XSR9wyNviNhgTtkS6S76wvHaMA==
X-Received: by 2002:a17:902:6bc6:b0:192:c36c:f115 with SMTP id m6-20020a1709026bc600b00192c36cf115mr49358202plt.66.1673853756717;
        Sun, 15 Jan 2023 23:22:36 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id d17-20020a170902ced100b001895f7c8a71sm1770346plg.97.2023.01.15.23.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jan 2023 23:22:36 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V5 2/3] arm64: dts: ti: Add initial support for AM68 SK System on Module
Date:   Mon, 16 Jan 2023 12:44:45 +0530
Message-Id: <20230116071446.28867-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230116071446.28867-1-sinthu.raja@ti.com>
References: <20230116071446.28867-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1673853757-311789-5470-460-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.215.197
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245498 [from 
        cloudscan23-233.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, BSF_SC0_SA085b
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter Kit (SK) is a low cost, small form factor board designed
for TI’s AM68 SoC. TI’s AM68 SoC comprises of dual core A72, high
performance vision accelerators, hardware accelerators, latest C71x
DSP, high bandwidth real-time IPs for capture and display. The SoC is
power optimized to provide best in class performance for industrial
applications.

    AM68 SK supports the following interfaces:
      * 16 GB LPDDR4 RAM
      * x1 Gigabit Ethernet interface
      * x1 USB 3.1 Type-C port
      * x2 USB 3.1 Type-A ports
      * x1 PCIe M.2 M Key
      * 512 Mbit OSPI flash
      * x2 CSI2 Camera interface (RPi and TI Camera connector)
      * 40-pin Raspberry Pi GPIO header

SK's System on Module (SoM) contains the SoC and DDR.
Therefore, add DT node for the SOC and DDR on the SoM.

Schematics: https://www.ti.com/lit/zip/SPRR463
TRM: http://www.ti.com/lit/pdf/spruj28

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---

Changes in V5:
=============
Address review comments:
- Remove the unessential comment.
- Remove alignment property from secure-ddr node, as no memory is allocated out
  of this region.

No changes in V4.

Changes in V3:
=============
Addressed review comments
- Removed the unused nodes that are disabled by default.
OSPI support will be added once the OSPI node is enabled for J721s2/AM68 in main DTSI.

Changes in V2:
=============
Address review comments
- drop the empty lines.

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-3-sinthu.raja@ti.com/
V2: https://lore.kernel.org/lkml/20221107123852.8063-3-sinthu.raja@ti.com/
V3: https://lore.kernel.org/lkml/20230110110052.14851-3-sinthu.raja@ti.com/
V4: https://lore.kernel.org/lkml/20230105151740.29436-3-sinthu.raja@ti.com/

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
new file mode 100644
index 000000000000..e92431250729
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include "k3-j721s2.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	memory@80000000 {
+		device_type = "memory";
+		/* 16 GB RAM */
+		reg = <0x00 0x80000000 0x00 0x80000000>,
+		      <0x08 0x80000000 0x03 0x80000000>;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			no-map;
+		};
+	};
+};
-- 
2.36.1

