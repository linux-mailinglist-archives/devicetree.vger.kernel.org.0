Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B13492AC354
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 19:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730624AbgKISLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 13:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730591AbgKISLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 13:11:01 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C49DC0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 10:11:00 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id y7so8885962pfq.11
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 10:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wjZIs3gsKOhZP3Z4DFYN/Q2HQQloeesXH2rTefzKVgk=;
        b=XbDlzlt6WmKkQkPsiKciH+cq0Mr5brzczNjGactRkpwCTdYWbacfVrCFtQ+c/GeN7M
         3ZXOcLGq2MVN59gjOvscRkJ+oqFdG53rvCpZLmeubK5QvCVe4jIzJoemkGfEluEFU6Z6
         wurQNCXC+ENc0AjbQ46lb+4LtPP4xXaTlIevw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wjZIs3gsKOhZP3Z4DFYN/Q2HQQloeesXH2rTefzKVgk=;
        b=ekAxnjO9zztdBZP5xdbgjz0E7CNMQOukRD9qzWHbdKqgdEWKVY02rilBFcAPWWo0z5
         jji45dUdRr//Uhs0Cf97qjZsNjM3uM6cnW9oNEj6M1Rzp8pXrZqNRtsUlm5pU3+n7TTX
         uEWncd1SqfN7EMFZ4TGu19jdk7vOGAS+wSbYErNjfSMHTN7VkAfkb8hTdolc2kostJrd
         90mgQ7u9X+bk91PRqT1nKYFBXMtV+FjrGAkb+gm3CLkWsHESeAqlQ9q+BOBiVBw4ZlPf
         c3FO1ADtqpP8Vn6nLRw1paYflTLptsudUkE8I7uHHxhymbM5n5jPYJ4hB5URxkMZ6aWA
         LfIg==
X-Gm-Message-State: AOAM530yu8ec+iVsXIQXQbqVHZDS3105AWw4BMUZWQ/nFS5/tH+HBXbE
        eDzaptow91/5ivMnuY7quLe2AA==
X-Google-Smtp-Source: ABdhPJwkWlnfvR8Ho9XK/H7l6qEQW5AvXUjbLbczYApNsFndtaEzyy6OkbglbRiV8oEEHL7M1EieoQ==
X-Received: by 2002:a17:90a:5b0a:: with SMTP id o10mr386043pji.197.1604945459840;
        Mon, 09 Nov 2020 10:10:59 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
        by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 10:10:59 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 4/9] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
Date:   Mon,  9 Nov 2020 23:40:12 +0530
Message-Id: <20201109181017.206834-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

PX30.Core needs to mount on top of C.TOUCH 2.0 carrier with pluged
10.1" OF for creating complete PX30.Core C.TOUCH 2.0 10.1" Open Frame.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../px30-engicam-px30-core-ctouch2-of10.dts   | 77 +++++++++++++++++++
 2 files changed, 78 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 5a53979b7057..1ab55a124a87 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
new file mode 100644
index 000000000000..47aa30505a42
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-ctouch2.dtsi"
+#include "px30-engicam-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core C.TOUCH 2.0 10.1\" Open Frame";
+	compatible = "engicam,px30-core-ctouch2-of10", "engicam,px30-core",
+		     "rockchip,px30";
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm0 0 25000 0>;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	panel {
+		compatible = "ampire,am-1280800n3tzqw-t00h";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_lcd>;
+		data-mapping = "vesa-24";
+
+		port {
+			panel_in_lvds: endpoint {
+				remote-endpoint = <&lvds_out_panel>;
+			};
+		};
+	};
+};
+
+&display_subsystem {
+	status = "okay";
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+&lvds {
+	status = "okay";
+
+	ports {
+		port@1 {
+			reg = <1>;
+
+			lvds_out_panel: endpoint {
+				remote-endpoint = <&panel_in_lvds>;
+			};
+		};
+	};
+};
+
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
-- 
2.25.1

