Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08BDB2CBCA5
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388692AbgLBMOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:14:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388774AbgLBMOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:14:32 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB41C061A49
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:18 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id p6so1014874plr.7
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mufF4hRgH4PDLGAGuI3iYOURtYD7y9AqiPoup7RwkJ8=;
        b=NmR75SXgoGoeKXN8n3vLL4WGPGcjQOXDjUZ0KyejZtTABMoXFiCIdliRBV9v7HehY5
         qe+Lmr42/pQhIWGTE5x55FMFWYO0AEh3Tz/VGLEUUK0AaHSJCMlo8iKjz9Az8yYHQoql
         6VjWi/fID1/alaq7Ty5qOWLEOrHF0aAh8wQs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mufF4hRgH4PDLGAGuI3iYOURtYD7y9AqiPoup7RwkJ8=;
        b=f+swrnyb1q/NAiox0c6QhLbb5EkoS+f1ykwhl+sKOobGqdp+9gz6NrPNC/hCfPSDs2
         bLBdBSjhQCx6USKMytHUvM2TbQqQF3Wbocg72gXuQX984AOXqVD1yiVO/gGSqBvtyjHp
         c534A0GGE1O+K3v6wjiR6pwJdgBr9+OJS6rZUz4aNOHTdgUCeAuVaj29krSVfp89kTcR
         A1FT/E78vDJutgkgfNprPU/or+1zzuJnS8DRI+OeiSQFRE29mpUp+WbViJV1JmVmQ7jk
         SeO/AFN3Fso3WXX5Yj+Iq5k16LUDSCOF0XKC0F3edLs4bnuETApGXFuuJQpU6Q+oxQRH
         7d7A==
X-Gm-Message-State: AOAM5323CXgAS/DmE/b/uZ4WzonMPGp8C/O0X+1rSrGmGEAIn3smMwLR
        RAni9WrwHwgaiqKzqIf9XwcNdg==
X-Google-Smtp-Source: ABdhPJwcB8XUFxscy78aQv3HGd9roxpS/vsoa5gr3WXBx6vXc6k/DyrYN52BS9HBdgtR6kENYcr0RA==
X-Received: by 2002:a17:902:b717:b029:d9:e816:fd0b with SMTP id d23-20020a170902b717b02900d9e816fd0bmr2327604pls.50.1606911198101;
        Wed, 02 Dec 2020 04:13:18 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:17 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 03/10] arm64: dts: imx: Add Engicam EDIMM2.2 Starter Kit
Date:   Wed,  2 Dec 2020 17:42:34 +0530
Message-Id: <20201202121241.109952-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
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

SOM's like i.Core MX8M Mini needs to mount on top of this Evaluation
board for creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/freescale/imx8mm-engicam-common.dtsi  | 24 +++++++++++++++++++
 .../freescale/imx8mm-engicam-edimm2.2.dtsi    |  7 ++++++
 2 files changed, 31 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-engicam-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-engicam-common.dtsi
new file mode 100644
index 000000000000..67c1a3fe26bc
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-engicam-common.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+/* SD */
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
+	cd-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+	max-frequency = <50000000>;
+	bus-width = <4>;
+	no-1-8-v;
+	pm-ignore-notify;
+	keep-power-in-suspend;
+	status = "okay";
+};
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
-- 
2.25.1

