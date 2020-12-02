Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6BAD2CBCB4
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729407AbgLBMPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:15:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727403AbgLBMPD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:15:03 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 413C0C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:39 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id w4so948255pgg.13
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aN+C5XQENQZ7PtixMGe2RSKK4cDKAHrNU44ZbK6c5Dk=;
        b=ewhJM7VVfBbiLXxcqR7Tye3PJM4h8qQjh6o9MQsaOtT9f05QDssdDlYXitidwdeL/E
         lU6DWVx4rAGo71BaKxCKI7b5W03O/vZXHJymRswJj4C916cLhJw9p3rbq3TsuEvut2nz
         4N4MFoSl8oOivG2IhbEgrpTY0D33I8/1dUQ3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aN+C5XQENQZ7PtixMGe2RSKK4cDKAHrNU44ZbK6c5Dk=;
        b=ZYLlnrJMTEyyAW+FAlQMdgU1hpT3ml0X43N+s0cmiHtIHn9ZADaeWOogBabaeEfWpO
         KAINB51X+XuxVehSl9hm0+kw33a4ARwQQKu1wVLbYqVoTpnEzKIw7ZopU2oOlhbaZHiS
         VnAPY/M5dON2XGbQkSrIWShu3Yn9G9yCzcAR+/yBAMxwKiPNxmGJZovhY0vP047hNv2V
         TtRjo75DyVGX1Qxq5YSAzRelmE/D/3zhAnJbNyWVc1+lYM2vVRx/Xc5T0p2qjSRFczHD
         npOV7CWLTMhBLXBlo2NXbutC0OVBprI0fHWyKzp7Cf2xytajMxXO/FK21KFdzzn7/Hkc
         GXgg==
X-Gm-Message-State: AOAM532x2QeZp/aoDPv3NLCMu2er5eDkxxBXSoEzyu0GGyR6xbEepwdn
        jWKL09BLePxrUW1XwzsqZocPyA==
X-Google-Smtp-Source: ABdhPJwLkTswKg8iQSMiDQUwVTnUkSFCv5sXMPRyt/MFmbeETyDC9KDGXoY5GXjYK8ny6CIiQBSKRQ==
X-Received: by 2002:a63:b554:: with SMTP id u20mr825574pgo.249.1606911218794;
        Wed, 02 Dec 2020 04:13:38 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:37 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 08/10] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
Date:   Wed,  2 Dec 2020 17:42:39 +0530
Message-Id: <20201202121241.109952-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SOM based on NXP i.MX8MM from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

i.Core MX8M Mini needs to mount on top of this Carrier board for
creating complete i.Core MX8M Mini C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  1 +
 .../imx8mm-engicam-icore-mx8mm-ctouch2.dts    | 21 +++++++++++++++++++
 2 files changed, 22 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-icore-mx8mm-ctouch2.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 4369d783dade..8191db4c64fa 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2162a-qds.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-beacon-kit.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-engicam-icore-mx8mm-ctouch2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-engicam-icore-mx8mm-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-engicam-icore-mx8mm-ctouch2.dts b/arch/arm64/boot/dts/freescale/imx8mm-engicam-icore-mx8mm-ctouch2.dts
new file mode 100644
index 000000000000..aa3c03ad3109
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-engicam-icore-mx8mm-ctouch2.dts
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
+#include "imx8mm-engicam-ctouch2.dtsi"
+#include "imx8mm-engicam-icore-mx8mm.dtsi"
+
+/ {
+	model = "Engicam i.Core MX8M Mini C.TOUCH 2.0";
+	compatible = "engicam,icore-mx8mm-ctouch2", "engicam,icore-mx8mm",
+		     "fsl,imx8mm";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+};
-- 
2.25.1

