Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 926C1325DFB
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 08:07:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbhBZHFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 02:05:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbhBZHFD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 02:05:03 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55D0FC061356
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:53 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id b21so5681445pgk.7
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nt/87T8Oe1O4rtLmNP94vxQZOdydKRwsIkh35yYg1yk=;
        b=IJhZHgg+y0yJBepC3PAYs0FDVrcYcIo8Au9TwDYVJUFuUgW5hGQwdbUSxrbhSREvQy
         c0QkwKTaRYPSjiaE7TUENOmQGl5RfjYst4uUaf3vC5BKVj7qdJNwgZ6ohLukDUMb9nbd
         X4xMu1M6Nz2D4CrdDOZ5ijDW3OMncacL2KQVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nt/87T8Oe1O4rtLmNP94vxQZOdydKRwsIkh35yYg1yk=;
        b=mbys1URuBf7cjpQNTHVNn17yeTyzP921lyqk7eT0Yq4Dc9HEWViVl+v2SIPIsmIux+
         DkF9WiIDYl0RRjPmegvY6g4VLhdiAJSk6hlFscxLwUYnYDfa26W9MHyitvbmPddMXCeu
         mMqkEU1Vl9m4Sn99rEwubeKiWUyV6hMFpzgPLoM0oNNgcWm5YpgZxCxUPtVYA0sfauCI
         VHiivctVyfCyOv0nGeASBmshwYJfQWUqt2iBpa+XcTDzfE5M0XbmoCy701HT1/yDX0Dm
         M3zKqL/ZWZonqrLqswB3AEX4Lsih0Zy2fUhRKEsY3FpR/8eNk/vUiyd6M9l9ecUgS66G
         lNhQ==
X-Gm-Message-State: AOAM530Lf9uUkz6TriC72N1DE/k0tefEsjg30wUTbp3dPsc9fFrFB2hL
        d/olqdjCYl72PLNVVqt7d8Ojxg==
X-Google-Smtp-Source: ABdhPJxtngTccqhogsLP5ubkMdy7NMhmDUzhWZKPl5sneGLDFPDMM4xDG3rAWR8H4ryADY/hi+wGXQ==
X-Received: by 2002:a63:4f56:: with SMTP id p22mr1745529pgl.224.1614323032859;
        Thu, 25 Feb 2021 23:03:52 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id f7sm7592156pjh.45.2021.02.25.23.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:03:52 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 07/10] ARM: dts: stm32: Add Engicam i.Core STM32MP1 SoM
Date:   Fri, 26 Feb 2021 12:33:01 +0530
Message-Id: <20210226070304.8028-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210226070304.8028-1-jagan@amarulasolutions.com>
References: <20210226070304.8028-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

General features:
- STM32MP157A
- Up to 1GB DDR3L
- 4GB eMMC
- 10/100 Ethernet
- USB 2.0 Host/OTG
- I2S
- MIPI DSI to LVDS
- rest of STM32MP157A features

i.Core STM32MP1 needs to mount on top of Engicam baseboards
for creating complete platform solutions.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 .../boot/dts/stm32mp157a-icore-stm32mp1.dtsi  | 195 ++++++++++++++++++
 1 file changed, 195 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi

diff --git a/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
new file mode 100644
index 000000000000..c8e4b68c5661
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (c) STMicroelectronics 2019 - All Rights Reserved
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutons(India)
+ */
+
+/ {
+	compatible = "engicam,icore-stm32mp1", "st,stm32mp157";
+
+	memory@c0000000 {
+		reg = <0xc0000000 0x20000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		mcuram2: mcuram2@10000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10000000 0x40000>;
+			no-map;
+		};
+
+		vdev0vring0: vdev0vring0@10040000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10040000 0x1000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@10041000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10041000 0x1000>;
+			no-map;
+		};
+
+		vdev0buffer: vdev0buffer@10042000 {
+			compatible = "shared-dma-pool";
+			reg = <0x10042000 0x4000>;
+			no-map;
+		};
+
+		mcuram: mcuram@30000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x30000000 0x40000>;
+			no-map;
+		};
+
+		retram: retram@38000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x38000000 0x10000>;
+			no-map;
+		};
+	};
+
+	vddcore: regulator-vddcore {
+		compatible = "regulator-fixed";
+		regulator-name = "vddcore";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+	};
+
+	vdd: regulator-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	vdd_usb: regulator-vdd-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_usb";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	vdda: regulator-vdda {
+		compatible = "regulator-fixed";
+		regulator-name = "vdda";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	vdd_ddr: regulator-vdd-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_ddr";
+		regulator-min-microvolt = <1350000>;
+		regulator-max-microvolt = <1350000>;
+		regulator-always-on;
+	};
+
+	vtt_ddr: regulator-vtt-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vtt_ddr";
+		regulator-min-microvolt = <675000>;
+		regulator-max-microvolt = <675000>;
+		regulator-always-on;
+		vin-supply = <&vdd>;
+	};
+
+	vref_ddr: regulator-vref-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vref_ddr";
+		regulator-min-microvolt = <675000>;
+		regulator-max-microvolt = <675000>;
+		regulator-always-on;
+		vin-supply = <&vdd>;
+	};
+
+	vdd_sd: regulator-vdd-sd {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	v3v3: regulator-v3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "v3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	v2v8: regulator-v2v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "v2v8";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		regulator-always-on;
+		vin-supply = <&v3v3>;
+	};
+
+	v1v8: regulator-v1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "v1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		vin-supply = <&v3v3>;
+	};
+};
+
+&dts {
+	status = "okay";
+};
+
+&i2c2 {
+	i2c-scl-falling-time-ns = <20>;
+	i2c-scl-rising-time-ns = <185>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&i2c2_pins_a>;
+	pinctrl-1 = <&i2c2_sleep_pins_a>;
+	status = "okay";
+};
+
+&ipcc {
+	status = "okay";
+};
+
+&iwdg2{
+	timeout-sec = <32>;
+	status = "okay";
+};
+
+&m4_rproc{
+	memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
+			<&vdev0vring1>, <&vdev0buffer>;
+	mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
+	mbox-names = "vq0", "vq1", "shutdown";
+	interrupt-parent = <&exti>;
+	interrupts = <68 1>;
+	status = "okay";
+};
+
+&rng1 {
+	status = "okay";
+};
+
+&rtc{
+	status = "okay";
+};
+
+&vrefbuf {
+	regulator-min-microvolt = <2500000>;
+	regulator-max-microvolt = <2500000>;
+	vdda-supply = <&vdd>;
+	status = "okay";
+};
-- 
2.25.1

