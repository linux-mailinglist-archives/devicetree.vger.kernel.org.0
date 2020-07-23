Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA5222AF8F
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 14:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728848AbgGWMkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 08:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728265AbgGWMkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jul 2020 08:40:19 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47FCC0619DC
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 05:40:19 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id x8so2497198plm.10
        for <devicetree@vger.kernel.org>; Thu, 23 Jul 2020 05:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S8BrKGFOX92wI7Q6LfoafDhnOXbyYBWnVUMYQMlRIgM=;
        b=CxpBGTue7nd+N0CdNq7NdsZ8r/L/dPw1A2lpMkUB4YI5J4u9rZAFqLtoqQvrVdEa0+
         XcpPCo90XlXmWgHmd00FtJ6maDRzK211c3QQkydMYAo8rVcgvcBxXUQLFXTG93C2nwRz
         JP3NWHl/irgos39j4I5bAgiQd4RgFwGHwADLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S8BrKGFOX92wI7Q6LfoafDhnOXbyYBWnVUMYQMlRIgM=;
        b=XKQir+5Y3ooiN1lYdfrfWZRT4Q8TtlqZBQm4UwQ/IWgiKCdsNglDYEmFFp/K6gBkCG
         PmHAEm1wX5DvsyV7LTN/yavSCn2dSkSQ61t9tR3n/IEyS4oJDw98EWpS8IlBc0Ck7IaQ
         toI4mJs317D1cQnwkHgXWzlPdVbmy3P1fCBp4NuPGmJNUpfOWdRqFzdCEmN6043/PZTj
         8EO9wWdaiA1d1fF71oTVwRismtlUfvNWU/RLsGZmFd8bjHJQ3RfmqcrtEV1DX39zXPvi
         Ba54xtjgN/GeCSRArlENUo7jUaBhvnkMmMRdrBxswUGr6niZrSmEDEAmOUK0NUtbj/yc
         CzEA==
X-Gm-Message-State: AOAM530bEL9yiQf1CvcTUb34lh9IhuNzRiUUYo0geDAWQvfRLGWlbAki
        yvD37t2BCBFjTpOqun9fwkmY2g==
X-Google-Smtp-Source: ABdhPJyo4a8KUjxm5ZJlqKwfK+qpMVIrio5tr2XGfPF9t9GzmZwAJmIuxWGPnkAxcfahJUCGDeafSQ==
X-Received: by 2002:a17:90a:fe6:: with SMTP id 93mr201901pjz.145.1595508019268;
        Thu, 23 Jul 2020 05:40:19 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:cbf:ea0:8a30:a3af])
        by smtp.gmail.com with ESMTPSA id m26sm3051270pff.84.2020.07.23.05.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 05:40:18 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/7] arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
Date:   Thu, 23 Jul 2020 18:09:46 +0530
Message-Id: <20200723123951.149497-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200723123951.149497-1-jagan@amarulasolutions.com>
References: <20200723123951.149497-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
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

SOM's like PX30.Core needs to mount on top of this Evaluation board
for creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/rockchip/px30-engicam-common.dtsi     | 31 +++++++++++++++++++
 .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |  7 +++++
 2 files changed, 38 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
new file mode 100644
index 000000000000..fa0645231b09
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/ {
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc5v0_sys";	/* +5V */
+	};
+};
+
+&gmac {
+	phy-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&sdmmc {
+	vmmc-supply = <&vcc_3v3>;	/* +3V3_SOM */
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
new file mode 100644
index 000000000000..cb00988953e9
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1

