Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A52663EE6
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:06:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbjAJLGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:06:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232970AbjAJLFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:05:30 -0500
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 765BD3BE8C
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:04:37 -0800 (PST)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71]) by mx-outbound19-51.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 10 Jan 2023 11:04:35 +0000
Received: by mail-pj1-f71.google.com with SMTP id v17-20020a17090abb9100b002239a73bc6eso9058796pjr.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6pDS+lOL7rDErHOmMEGS6n1jYlQdfcoBezd+fCzHFk=;
        b=Ka0N4V1fCQsmA9ZSwV+nz+Kv0UhZSJVtl4zzIQPY+8RMQF3Xnah/d2pOvgrDJM5CJt
         zPZEyrebMIj8uEY77vfqj63NtS5rAfXkgEljThcjE66JyfY/EIeryBLUDKkSww4nHsUC
         psWEgIcGMMUZxiT0xMdr3u5rYp4KTUXd/Z2Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6pDS+lOL7rDErHOmMEGS6n1jYlQdfcoBezd+fCzHFk=;
        b=cmolMQPGcAA6DVqLN1Wnxaw0fUcZkbPOxvdz4rm53lLGU24LZECgr+aPoAyIYxs0pk
         +BBenYa0laOCrrg6oCvG4zWpt8+192YM0qG6IMFh5WXhb1RUV46RXNVI8cjR/rnoqWvj
         IzWpkEI/yeXsYPZHBrslutHI1MG8w9fkQX9uGivGL9LvX3AtES2oa361GCqzS2QC/EAJ
         MuJWG1v8/EIdUv1D8Gb3w25deNekwoleQqT9o2/vj+2xLPGYMaY4S0GzEoN588dkpAJv
         hUxLL0GFKVRnerzkVLgjz/ltnhK4OdofmStaroJFYA+v8JEik/Jz+kxGA/k0ZYAJ/1I0
         j1Dw==
X-Gm-Message-State: AFqh2krue7KG/58j9okeTOjryhH8ZRQxt/0RpxF4n2FY86rGqlUk/PT+
        TruR/bjKsnYjOUDzDZvXhTGebQA+/BHkFk76Fh5Gy2FTeH7D5CjF8haPNqgmc7L56kZgEtPWUMU
        iDRFV796bzrFA2FFGT/WHbksnqwKtseUVRJQ4yAdGM62TTWQjUv1ZKOFTNA==
X-Received: by 2002:a05:6a20:1a84:b0:a7:89fd:884c with SMTP id ci4-20020a056a201a8400b000a789fd884cmr74400191pzb.11.1673348674215;
        Tue, 10 Jan 2023 03:04:34 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsV6yl1//5x9VBSZJuTpC1cOkaM3gSS2pCstisAhNjndwaBylse+Tncu258G1GX9pKzyFf6cQ==
X-Received: by 2002:a05:6a20:1a84:b0:a7:89fd:884c with SMTP id ci4-20020a056a201a8400b000a789fd884cmr74400164pzb.11.1673348673874;
        Tue, 10 Jan 2023 03:04:33 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id i7-20020a17090332c700b001897a8b537asm7840206plr.221.2023.01.10.03.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 03:04:33 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [RESEND PATCH V3 2/3] arm64: dts: ti: Add initial support for AM68 SK System on Module
Date:   Tue, 10 Jan 2023 16:30:51 +0530
Message-Id: <20230110110052.14851-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230110110052.14851-1-sinthu.raja@ti.com>
References: <20230110110052.14851-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1673348674-304915-5398-3484-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.71
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245372 [from 
        cloudscan18-223.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, BSF_SC0_SA085b
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

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
new file mode 100644
index 000000000000..c35f81edee8c
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -0,0 +1,31 @@
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
-- 
2.36.1

