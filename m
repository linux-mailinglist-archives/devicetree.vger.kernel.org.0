Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88EE62DFB98
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 12:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726830AbgLULeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 06:34:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726821AbgLULeE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 06:34:04 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6132FC0611CF
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:41 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id w1so7708233pjc.0
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VePJY0a6rjDmZpfDR0wNpF7s+xv1D864zlJ9ZXiy38M=;
        b=lQP3ku+VS8Ub5R3eHsUKnDTf6y6tkJ9QGLGUKnQGyDDD+LzcSWc7EFJJR7ngNK7a0P
         xR8Km5alOacfGVFdfwd8ICx1HcBOu0flXmW7O3uDKGtWCOjEjmTCv1WLiRFy861N6JUT
         V5mG4Bj/msFHk+fD62R0i5HLDze0J/I+VkGN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VePJY0a6rjDmZpfDR0wNpF7s+xv1D864zlJ9ZXiy38M=;
        b=M3fkxjA9KgKyPmJP8MVbOfWALDuD/WptOy3dvKYfmn65G68YvQLhl1mylTYOD4ITLV
         oQQ6sB6uwMpaDfjMfM4YaUAgeHOa18Kwczjrans/Ac5gHnUaLkM/1m8Z3pKrJNEmwkRW
         c8D8M0Ig3WQIV+DPSerYbEXEVS3gwdvTeq9n3D/rFNfRBTPGD9sGHQ+SD+08khZLRpB4
         KrfpwLZcDxldoGPptj6KFZjSoMOE77kMeV8gOR/gtQX4ZpagAn9yw1ROIqjeYu7+9ULt
         qrTtjJGYM91U7q68gltGmvvZvYmxbl5+2fx6j2m2NIy/WljcOTrW99SB+RBgRv7qChhc
         5+Zg==
X-Gm-Message-State: AOAM5305UAj67F7736olA3puPGSF92bEEvE44rfNVbOS8gRxLZs/n70v
        +lcaAHOBW8vPDE2twn7jnlgbKg==
X-Google-Smtp-Source: ABdhPJwhYAmdPJGgNmoDuDgkqJ6x8f16wYpwZmSMEoA9rVYpI8VRDTwU/7fhVjYJ0kDvp5LUGqRKKg==
X-Received: by 2002:a17:90b:19d2:: with SMTP id nm18mr17477538pjb.159.1608550359687;
        Mon, 21 Dec 2020 03:32:39 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:b9d4:ed90:a69c:2530])
        by smtp.gmail.com with ESMTPSA id 197sm16714859pgd.69.2020.12.21.03.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 03:32:39 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>
Subject: [PATCH v2 6/6] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
Date:   Mon, 21 Dec 2020 17:01:51 +0530
Message-Id: <20201221113151.94515-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201221113151.94515-1-jagan@amarulasolutions.com>
References: <20201221113151.94515-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Engicam EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board.

Genaral features:
- LCD 7" C.Touch
- microSD slot
- Ethernet 1Gb
- Wifi/BT
- 2x LVDS Full HD interfaces
- 3x USB 2.0
- 1x USB 3.0
- HDMI Out
- Mini PCIe
- MIPI CSI
- 2x CAN
- Audio Out

i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.

i.Core MX8M Mini needs to mount on top of this Evaluation board for
creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.

PCIe, DSI, CSI nodes will add it into imx8mm-engicam-edimm2.2.dtsi once
Mainline Linux supported.

Add support for it.

Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- updated commit message
- dropped engicam from filename since it aligned with imx6 engicam
  dts files naming conventions.

 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../freescale/imx8mm-engicam-edimm2.2.dtsi    |  7 +++++++
 .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts | 21 +++++++++++++++++++
 3 files changed, 29 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 8d49a2c74604..43783076f856 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
new file mode 100644
index 000000000000..294df07289a2
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "imx8mm-engicam-common.dtsi"
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
new file mode 100644
index 000000000000..672aee1800c4
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 NXP
+ * Copyright (c) 2019 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "imx8mm.dtsi"
+#include "imx8mm-engicam-edimm2.2.dtsi"
+#include "imx8mm-icore-mx8mm.dtsi"
+
+/ {
+	model = "Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit";
+	compatible = "engicam,icore-mx8mm-edimm2.2", "engicam,icore-mx8mm",
+		     "fsl,imx8mm";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+};
-- 
2.25.1

