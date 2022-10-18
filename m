Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37EC0602CA5
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:15:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229923AbiJRNPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbiJRNPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:15:33 -0400
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03F83C4581
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:15:30 -0700 (PDT)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198]) by mx-outbound42-3.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 18 Oct 2022 13:15:27 +0000
Received: by mail-qk1-f198.google.com with SMTP id u7-20020a05620a0c4700b006ee526183fcso12139943qki.8
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uo+ITjhG9HDjqWHd8nAsV6QBhaSqq9cRpHoiwNcyW4A=;
        b=GDrWWocz25yGPOiU4gqn2W3P8RmJp4bJNXQAB2DWSHeMURx4Y28M2hjdlpKnVmiN6X
         Ho6ST12/VQa2ARfdV0M7LcWqMsOih8GEnMFnFSAiyvKKO2flJAhJ4fugnmAcxXbWUCKE
         rda7hbX4qmki3JQwilEsR9AMPigZ/TGYClPjg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uo+ITjhG9HDjqWHd8nAsV6QBhaSqq9cRpHoiwNcyW4A=;
        b=DuQpKPtGtF3/EG8EM9zlJMqlHr6DGZ1ifAcvu81rAaRtd0YrD2LorzG8Azllr3LUFD
         LZy2zzpOEBFJtr8A8tJcFTMgbq/prea362p4HnmL8zh1+mc/o/7zx2GArsgXOhA3fq0b
         spPlzeigjsLGrcO5g+BChVj+TGcpXzMJozey29ztVkI/zTgy1RPSoGZTw13PlJ5O+0zL
         uUC/oOE8yy5mJYIKQSnt+YXg1BzWZjhk7vPmligGEsv9ZN+vZ669NK7ZoGWDjTKMCF5L
         Rir5VaD9v5ypmuj4HZuuiCMD799cpkSv72ZkoktYmWov1E9MBCbkpHAkREbpp49Bni05
         ZSGg==
X-Gm-Message-State: ACrzQf3oYmQdjAN491scfCfszVJsEgc871nvtdI+tV9W30m7HjXx6EQo
        7oOhGSi2MH+YY9pu0QNDDX885PExPekCPfZoGoFvoYOw04Njl0i0HdHufChodyJ2KMduj0pjiRt
        EUUOqauMS4SmWLe471ePHrp8tL/fA3YHWYru4x99TL163+PZkFblg0LxJyg==
X-Received: by 2002:a17:902:be18:b0:178:b9c9:97b8 with SMTP id r24-20020a170902be1800b00178b9c997b8mr2766066pls.38.1666097110368;
        Tue, 18 Oct 2022 05:45:10 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM71L+HsrkzKiOgEuYMpJ3mDZCCKtP2QfVNMqkq8i4sBHb4vPaubsvPU8vSxY6UvKcJdGqQArw==
X-Received: by 2002:a17:902:be18:b0:178:b9c9:97b8 with SMTP id r24-20020a170902be1800b00178b9c997b8mr2766048pls.38.1666097110071;
        Tue, 18 Oct 2022 05:45:10 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:330a:c5d2:e90c:db79:45c8:3513])
        by smtp.gmail.com with ESMTPSA id a17-20020a621a11000000b00563ce1905f4sm9110102pfa.5.2022.10.18.05.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 05:45:09 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: Add initial support for AM68 SK System on Module
Date:   Tue, 18 Oct 2022 18:08:48 +0530
Message-Id: <20221018123849.23695-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221018123849.23695-1-sinthu.raja@ti.com>
References: <20221018123849.23695-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1666098926-310755-5580-11059-1
X-BESS-VER: 2019.1_20221004.2324
X-BESS-Apparent-Source-IP: 209.85.222.198
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243545 [from 
        cloudscan8-153.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
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
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 129 +++++++++++++++++++++
 1 file changed, 129 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
new file mode 100644
index 000000000000..734c13eb0490
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -0,0 +1,129 @@
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
+
+	};
+
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

