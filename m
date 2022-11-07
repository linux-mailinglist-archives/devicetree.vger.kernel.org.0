Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 577A461F3E0
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 14:02:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231998AbiKGNCH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 08:02:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232349AbiKGNB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 08:01:59 -0500
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DFD41C41D
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 05:01:57 -0800 (PST)
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199]) by mx-outbound22-4.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Nov 2022 13:01:53 +0000
Received: by mail-oi1-f199.google.com with SMTP id bf10-20020a056808190a00b0035a0a5ab8b6so4500377oib.11
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 05:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AVRDz2BIo+vmNYU+2ymb0qBib0aSJsJ1LoD/KgL4ZhY=;
        b=oQra8D5uHhgvvN7RUxYjCSzUnPqEwxEl9q/kPqap8IDgXiFjM2WftZT8kcl9/4xTZS
         75/Z+m6UTUB19KlyQJ8cM7fzGyNPDqB+PRU2vrtrQTNCxc+sZyAP+NIhnkXIaH9nsBwU
         pvI5KI/ZaLBZdIclGwcG62U6BI6bbUQMdcgrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AVRDz2BIo+vmNYU+2ymb0qBib0aSJsJ1LoD/KgL4ZhY=;
        b=CaV+OkY1M6wI9y+q264YxaHWjxqrwHtzSGAHsxoAkc81bE7sf88xw96zIkgiHZR0DG
         gV1lUNVTDqxDbvDWrryN5tBftKbhv1cWRTG2pivcYU5N/qg8ym4+WCcFDP3vjY8HDdkm
         v1Ce8sU/JaquqM73o0JnV7auFQEuV8KfcNWA7s3LjGK3FI/VLablmm3I0wZr/AvIAv/9
         eRfq3wSaIFdjqmQ1RasS3/BcCdrd05phjWLSfmEpgCZEol7KgpY+kIjtJBzKntbJm/jm
         cLCyVnr3P6UF4r+QuX6Dtev9POfh1IuD65wfgVLdBzFoIj2iSlobhOQjWcrKotQjrf/l
         AlAA==
X-Gm-Message-State: ACrzQf3r5zlMuzdv44uoiuMj9hDE/sca3Jp4XMkkbugt6+uynZwdOPU4
        0AHyjWrsy3AUE8j+EfFTxoCMNV60Xmhqh6bTAsQDzDji0n35BBRRsMg/kD5XJvqwBYZxsa5xjG9
        VcFvR0tMJwqKN3ao9fQt8xoO8YmpSt1aAei5E0JlqBHAMcjkw7fhGbjF8UQ==
X-Received: by 2002:a17:90a:a017:b0:213:ad3:4d1a with SMTP id q23-20020a17090aa01700b002130ad34d1amr68063346pjp.120.1667824753854;
        Mon, 07 Nov 2022 04:39:13 -0800 (PST)
X-Google-Smtp-Source: AMsMyM4TTSsfFziJCllZGBfyEZ/toK2qoprAte6fwqyQTRKfdtKRXzVrMwO3hGPHhJAtCFRn3y1TaA==
X-Received: by 2002:a17:90a:a017:b0:213:ad3:4d1a with SMTP id q23-20020a17090aa01700b002130ad34d1amr68063324pjp.120.1667824753574;
        Mon, 07 Nov 2022 04:39:13 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id x11-20020aa7956b000000b0056bbba4302dsm4400423pfq.119.2022.11.07.04.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 04:39:13 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 2/3] arm64: dts: ti: Add initial support for AM68 SK System on Module
Date:   Mon,  7 Nov 2022 18:08:51 +0530
Message-Id: <20221107123852.8063-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221107123852.8063-1-sinthu.raja@ti.com>
References: <20221107123852.8063-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1667826112-305636-5386-13189-1
X-BESS-VER: 2019.1_20221024.2147
X-BESS-Apparent-Source-IP: 209.85.167.199
X-BESS-Outbound-Spam-Score: 0.90
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243991 [from 
        cloudscan8-52.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.50 BSF_RULE_7582B         META: Custom Rule 7582B 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.90 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_SA085b, BSF_RULE_7582B, BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter Kit (SK)[1] is a low cost, small form factor board designed
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

Changes in V2:
Addressed review comments 
 - dropped the empty lines.

V1:https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-3-sinthu.raja@ti.com/

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
new file mode 100644
index 000000000000..cb1c58fcd154
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com/
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
+	/* Reserving memory regions still pending */
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+};
+
+&mailbox0_cluster0 {
+	status = "disabled";
+};
+
+&mailbox0_cluster1 {
+	status = "disabled";
+};
+
+&mailbox0_cluster2 {
+	status = "disabled";
+};
+
+&mailbox0_cluster3 {
+	status = "disabled";
+};
+
+&mailbox0_cluster4 {
+	status = "disabled";
+};
+
+&mailbox0_cluster5 {
+	status = "disabled";
+};
+
+&mailbox0_cluster6 {
+	status = "disabled";
+};
+
+&mailbox0_cluster7 {
+	status = "disabled";
+};
+
+&mailbox0_cluster8 {
+	status = "disabled";
+};
+
+&mailbox0_cluster9 {
+	status = "disabled";
+};
+
+&mailbox0_cluster10 {
+	status = "disabled";
+};
+
+&mailbox0_cluster11 {
+	status = "disabled";
+};
+
+&mailbox1_cluster0 {
+	status = "disabled";
+};
+
+&mailbox1_cluster1 {
+	status = "disabled";
+};
+
+&mailbox1_cluster2 {
+	status = "disabled";
+};
+
+&mailbox1_cluster3 {
+	status = "disabled";
+};
+
+&mailbox1_cluster4 {
+	status = "disabled";
+};
+
+&mailbox1_cluster5 {
+	status = "disabled";
+};
+
+&mailbox1_cluster6 {
+	status = "disabled";
+};
+
+&mailbox1_cluster7 {
+	status = "disabled";
+};
+
+&mailbox1_cluster8 {
+	status = "disabled";
+};
+
+&mailbox1_cluster9 {
+	status = "disabled";
+};
+
+&mailbox1_cluster10 {
+	status = "disabled";
+};
+
+&mailbox1_cluster11 {
+	status = "disabled";
+};
-- 
2.36.1

