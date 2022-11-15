Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADF55629EC5
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 17:18:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbiKOQSf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 11:18:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238649AbiKOQSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 11:18:16 -0500
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D992FC06
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:17:44 -0800 (PST)
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70]) by mx-outbound17-245.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 15 Nov 2022 16:17:42 +0000
Received: by mail-vs1-f70.google.com with SMTP id k4-20020a672404000000b003aeef5a8714so1905933vsk.12
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16/D8weInr46BUN2uMYmBIehz1z+vucYVIUCVLBwWhM=;
        b=olwLgFED+5Tll1Z2AaiIEjrHfJbXbITyFodtmUMnIJ/Z/tJ1qWs8rlVKzrYqTYtGnO
         P8vFu2LB2XpkJbSUpGDlWzzawr0iQdg9gyBa3iyowiDQntJUkJaAW5jsAbcDscITtKOp
         4PR3PEDzNLiX0c8ZlnMYa2isjaPMPvxCt5AS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=16/D8weInr46BUN2uMYmBIehz1z+vucYVIUCVLBwWhM=;
        b=BqtAKp88Mc0jVb2ReVOD8nV6nbYgBESfUhqMTPJzpVDmpmQcw+NIqPmhW8X7+1Olf2
         b+U6V4tS9VDH0dNMqJgBdMo83rGBucC8Wh6euSKIhxY5w7q8hgfwLDv94vTqOTglVzQu
         ajvxWzCE3mMKlNjvYz4ldQBJPhIjvCShhCJ/9zVp+NhIi3BaMO/oou6ABItubvklVyEE
         dZclEgV/v7Oc2Yk4fykwGStMVzBWjrxorC+sCmI+r9kPek12Gp97v3Gn/zHS03UI/JR5
         kHS8q1iSE170Sko5KHMIddDrcHZVnq8ikIGIqEHugD7P8Eb1DEcI7vAiWFs6GY669E5b
         MIFg==
X-Gm-Message-State: ANoB5pmREiRxTL8f87U3HfXhr8kbpGAbj4VNpTc07Awg77udeMMmH8Xw
        qVOerGKGx04pqHdhrBWUeApINeqBXCXt2n8v8EYJnzAwa1oCxPgfz91iBGaQr5oPCz9q/+mpkrc
        Zo3HnCxQH4gvPfGla5S9nqGAa8w5P1Wf5H3Jq03YBdQg2utsuWlxjdQ+AxA==
X-Received: by 2002:a05:6a00:180f:b0:565:af12:c324 with SMTP id y15-20020a056a00180f00b00565af12c324mr18836792pfa.66.1668527445920;
        Tue, 15 Nov 2022 07:50:45 -0800 (PST)
X-Google-Smtp-Source: AA0mqf47ugEEBt8P8xx4wBS2RqHDp1R1XfXmYQNzbeDdx7p8eYYICZZ8AsQCfAyNt6QT61oeDlxKLA==
X-Received: by 2002:a05:6a00:180f:b0:565:af12:c324 with SMTP id y15-20020a056a00180f00b00565af12c324mr18836768pfa.66.1668527445561;
        Tue, 15 Nov 2022 07:50:45 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090264c100b00178b6ccc8a0sm10018478pli.51.2022.11.15.07.50.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 07:50:45 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 2/3] arm64: dts: ti: Add initial support for AM68 SK System on Module
Date:   Tue, 15 Nov 2022 21:18:31 +0530
Message-Id: <20221115154832.19759-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221115154832.19759-1-sinthu.raja@ti.com>
References: <20221115154832.19759-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1668529062-304597-5377-191-1
X-BESS-VER: 2019.1_20221114.2026
X-BESS-Apparent-Source-IP: 209.85.217.70
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244168 [from 
        cloudscan14-111.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_SC0_SA085b, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
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

Changes in V3:
Addressed review comments 
 - Removed the unused nodes that are disabled by default.
OSPI support will be added once the OSPI node is enabled for J721s2/AM68 in main DTSI.

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-3-sinthu.raja@ti.com/
V2: https://lore.kernel.org/lkml/20221107123852.8063-3-sinthu.raja@ti.com/

 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
new file mode 100644
index 000000000000..e282eaafcbd5
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -0,0 +1,31 @@
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
-- 
2.36.1

