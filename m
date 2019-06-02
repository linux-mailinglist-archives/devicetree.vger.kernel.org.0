Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 12670322A7
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2019 10:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726818AbfFBIFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jun 2019 04:05:15 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:33115 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726720AbfFBIFM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jun 2019 04:05:12 -0400
Received: by mail-wm1-f65.google.com with SMTP id v19so9309924wmh.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 01:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QmaqjHAcXNQW/qmNDVGvURxfu0pBpsioEB7U9HBButg=;
        b=c5AyJHJQQn97Ig9xKz8VpCWMryghMHrJJ5H1EhXWar+zpiY77POV6FQ/f0W8sQe2JJ
         euGG9MOHa9sn+CCDz8+DTOz1jBhPKK6oIP1h37OLQAJYYppanEEku4MHBIYPwKx+qM9U
         XHTaoe1VYB8AUcH4I+aGlsAMTVjY5Yfu6x9QA0Z4dr76lV3znrqxsyQIoMxbu4q1XJ24
         7UVQCB4ltN02xRMu0o6R40KsJwZlS7uAXHkh0fppA9y++QOt+q0dpcDASZH7MSqH9xlH
         iHb558RaW03WzD6ukiB54q+sd/SU4uARYNhCmqPcJFFYZiW43pFDmmIejBAttCUJY09y
         +5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QmaqjHAcXNQW/qmNDVGvURxfu0pBpsioEB7U9HBButg=;
        b=AYDucsHYn+8gtGzy5Ye9Dm5CtOO+aa6U9GtaVzWTnCHx+9sXHrK5bccifMf3d6NhPp
         pvhzQaMALLbTKVZsY5g+9tncEhoFCdGcpIFcCuk09u4SSGcWwCrSBMwXt49NFb6iyXBK
         umKo+jt0enQOImbyjeOl8ZTkzwdufBVZoTuVf96iXPOgnq+fT/S87NBNpoV1NrqR/oSI
         8XV7hfT+8bNFK2xpc6X6NxFCP+tUsPzWq7eFfXwRTGG1M5xcS5dRrq4nNAUxEfVEVCJM
         JyioAtTBqhqnpug7EhBk3K+mMC5Sw8OvaitJzW0rThkxjV8ntMnaNSBXsA3u7sVfpUG4
         uKeg==
X-Gm-Message-State: APjAAAXRQxP2YnXmb03LLQsDRzxatEsIqJH4Amq9zpwxF6nVvCg2l1Ny
        +281/CrkEuQlhw5Cd1jY//3iBw==
X-Google-Smtp-Source: APXvYqyq4F0fqV/E/88Xn12tEzosdIbLtgNGXWvBnpTrS21K0Ra87wwMdUCctRh2AeEUjHEwTgjF9g==
X-Received: by 2002:a05:600c:2243:: with SMTP id a3mr10379885wmm.83.1559462711525;
        Sun, 02 Jun 2019 01:05:11 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net. [217.76.161.89])
        by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 02 Jun 2019 01:05:11 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
To:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Paul Walmsley <paul@pwsan.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Subject: [PATCH v3 5/5] riscv: dts: add initial board data for the SiFive HiFive Unleashed
Date:   Sun,  2 Jun 2019 01:05:00 -0700
Message-Id: <20190602080500.31700-6-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add initial board data for the SiFive HiFive Unleashed A00.

Currently the data populated in this DT file describes the board
DRAM configuration and the external clock sources that supply the
PRCI.

This third version incorporates changes based on more comments from
Rob Herring <robh+dt@kernel.org>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/riscv/boot/dts/sifive/Makefile           |  2 +
 .../boot/dts/sifive/hifive-unleashed-a00.dts  | 67 +++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sifive/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

diff --git a/arch/riscv/boot/dts/sifive/Makefile b/arch/riscv/boot/dts/sifive/Makefile
new file mode 100644
index 000000000000..baaeef9efdcb
--- /dev/null
+++ b/arch/riscv/boot/dts/sifive/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-y += hifive-unleashed-a00.dtb
diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
new file mode 100644
index 000000000000..1de4ea1577d5
--- /dev/null
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/* Copyright (c) 2018-2019 SiFive, Inc */
+
+/dts-v1/;
+
+#include "fu540-c000.dtsi"
+
+/* Clock frequency (in Hz) of the PCB crystal for rtcclk */
+#define RTCCLK_FREQ		1000000
+
+/ {
+	#address-cells = <2>;
+	#size-cells = <2>;
+	model = "SiFive HiFive Unleashed A00";
+	compatible = "sifive,hifive-unleashed-a00", "sifive,fu540-c000";
+
+	chosen {
+	};
+
+	cpus {
+		timebase-frequency = <RTCCLK_FREQ>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x2 0x00000000>;
+	};
+
+	soc {
+	};
+
+	hfclk: hfclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <33333333>;
+		clock-output-names = "hfclk";
+	};
+
+	rtcclk: rtcclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <RTCCLK_FREQ>;
+		clock-output-names = "rtcclk";
+	};
+};
+
+&qspi0 {
+	flash@0 {
+		compatible = "issi,is25wp256", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		m25p,fast-read;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+	};
+};
+
+&qspi2 {
+	status = "okay";
+	mmc@0 {
+		compatible = "mmc-spi-slot";
+		reg = <0>;
+		spi-max-frequency = <20000000>;
+		voltage-ranges = <3300 3300>;
+		disable-wp;
+	};
+};
-- 
2.20.1

