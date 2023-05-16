Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFBFD70540E
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:36:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231165AbjEPQgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbjEPQge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:36:34 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16BE39EDA
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:08 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6438d95f447so9983705b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254966; x=1686846966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezjtQijoDVXErg3hmWyEVfCx0667IycZaqsDw1F5F8k=;
        b=h1bhJpU5LZMESAqY7xGRkiU1U/J9kvQbN5kGq9g2wcmA0iuC4zzv6xVvhI357rzANM
         90JDAwEBdoC8f7NJMoqmkpbOsOur4YkaIYPZ/ziYBL1Qr75X0JjKDW3noseAo5FsAKbu
         8LlMx+gX2zhiVLAemSHaEQUm2R4jKmJ1RbXsqhdXpAetKqSmVq2KJcYD1Gz5lJMpApoW
         bW19bIeJFeS6eIhucFz+ti6mYZx4tDjI/PBrbMdyd4g19/SuVPzdZOTE3/O0yhdGK+/U
         o+zg/x1MkSEaXbmo3LTP9qWuufYsGZHm4fgSA70pVwJN7WRYoK0EsnAgDEJMeDWdbnkE
         dUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254966; x=1686846966;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ezjtQijoDVXErg3hmWyEVfCx0667IycZaqsDw1F5F8k=;
        b=LdTjjREqKGBbxYATD4vsCXyCr/g9KWpLHtdJ1iI0RlaPRKF/xh7pdZkdHImnFxxPhV
         6QVlIj19/1I7+vXFSpP8lIQTejPi77MjwNs9ZfvNqIvVYpIPxEycyL5FyuVtDTTykl8B
         gKnB0RM3JLbc5gquEAhI8UUanmjGMhKpdc3qsKzY/WhuIml76gPOK8dksV0+z89igaIb
         bnrCsKyU3fh4KJErjiD2St1ccwmY0mjHsw1e5KXw1zLG3mDIE3xHeHneahwWCCZ40slk
         tjjR/MP2VOjS4QI0MS0scrdYJq7yvinwpBJ/zL5woshU9DwUZ/2TasbCZNk9UsWJDjR4
         N0bw==
X-Gm-Message-State: AC+VfDxO2E54Dfg3rYfTxtKnhALpTtaoI8LoFKSBAovpYxwqobcqrfsg
        thlbkt5x/xsRNBtY3hzpA+4zvQ==
X-Google-Smtp-Source: ACHHUZ7CHB5Je4dE3jfSR9609+uzPXUkoP7609DIkQIc8Mb1vVawZQSrl7ELnGBJcU2fxGqc/vpjwg==
X-Received: by 2002:a05:6a00:148b:b0:648:8c0d:6e4e with SMTP id v11-20020a056a00148b00b006488c0d6e4emr30425665pfu.19.1684254965912;
        Tue, 16 May 2023 09:36:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:36:05 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 4/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B IO
Date:   Tue, 16 May 2023 22:04:54 +0530
Message-Id: <20230516163454.997736-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 6B(Neu6B) IO board is an industrial form factor
ready-to-use IO board from Edgeble AI.

IO board offers plenty of peripherals and connectivity options and
this patch enables basic eMMC and UART which is enough to successfully
boot Linux.

General features:
- microSD slot
- 1x HDMI Out
- 1x HDMI In
- 2x DP
- 1x eDP
- 2x MIPI DSI connector
- 4x MIPI CSI2 connector
- 2x USB Host
- 2x USB 3.0 OTG/Host
- 1x SATA
- 1x 2.5Gbps Ethernet
- 1x 4G/5G mini PCIe
- 1x M.2 E-Key slot
- 1x Onboard PoE
- 1x RS485, RS232, CAN
- 1x Audio, MIC port
- RTC battery slot
- 40-pin GPIO expansion

Neu6B needs to mount on top of this IO board in order to create a
complete Edgeble Neural Compute Module 6B(Neu6B) IO platform.

Add support for Edgeble Neu6 Model B IO Board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 2d585bbb8f3a..f07f605749e3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -92,6 +92,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
new file mode 100644
index 000000000000..e9d5a8bab581
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rk3588j.dtsi"
+#include "rk3588-edgeble-neu6b.dtsi"
+
+/ {
+	model = "Edgeble Neu6B IO Board";
+	compatible = "edgeble,neural-compute-module-6b-io",
+		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.25.1

