Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 746E757F17D
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238713AbiGWUps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238585AbiGWUpr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:47 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5AC101E9
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:46 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 12so6859142pga.1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rmp0e7/4fUtG3oOLDCPWkUf+7fHroo7l46CJHVPi4qo=;
        b=szJJQaZ4BjwDmv82EfyTYDoJNkpmr8QGEpTZsXuUHmXWHhmKaAA7eInbV0KBEPyfKJ
         ZcY9e1K5Uz5x5d4JeBeyYnb6Sfn5bUCdNzUx5IP7eFGZNe5DZNlqSYEc7uK49PHflKVi
         UDQV6os7+0UznSRQkE/Hk3LN3/62RXhUV23SB2GDGYPaeMPKjZ1slBByDonq9bUY1oos
         HAcGQzejjhmY6but/ZrD5OKpenZaiQ8a3D+Ba3yIuKQR55XyGfnoJlGI7E2G41pRK/u9
         Hj1KUXfelkJsZRmxtYLqNUX539YSzrWAYl+JQsEHA0P5dabZw9lxcIItQkVlH8tDP2QQ
         nKQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rmp0e7/4fUtG3oOLDCPWkUf+7fHroo7l46CJHVPi4qo=;
        b=dGm0ZzLtu9FIt5APGSjz8lIwJy7vsS+Z2gMkFYjfUSbZVUMnl6boAGT9fD90/9gAdb
         a5gVUdTU3AqE8a2RtnPiu8gI/KtsYH4WI3RWj/5rQyiCRpeYX1RJ2elZkYuif8ZjXhjK
         nM3oHOpwtzi1xEIQ7NeLCB29/6L0/ML43wcgEJeF/nL8Q9J4m+Gy1lh+LGJMpZwQ3OEA
         ix3xsd3xNsRwKOw8nGbHd9ihWS35+PiVnmGhyEbuKU0Xosbbn/V6PPQJUBbe0RKlKVMu
         RklQ4Ul/lZGdwU2p87LdEVefv1Qry0cOTEJ9Bq3UR0tC4Z0tTgcZv9zoZThVKXc6WpBm
         lklA==
X-Gm-Message-State: AJIora/Q7jitlSRDIUFb3XfcJ2xP9Ngiz41iG7+jGj0qXGy/8zmcOK2s
        Ot95b6UZDhydHNIU8PL2KULSDw==
X-Google-Smtp-Source: AGRyM1vPMOd0pPCte7s43UG0YSt4Mwg5khwesmiicvyB5ZgMkQ7hTMPfSznK77hVYDhrhOO08+nJEQ==
X-Received: by 2002:a05:6a00:24d6:b0:52b:ee89:ecb2 with SMTP id d22-20020a056a0024d600b0052bee89ecb2mr1744598pfv.15.1658609146228;
        Sat, 23 Jul 2022 13:45:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:45 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 21/22] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Sun, 24 Jul 2022 02:13:34 +0530
Message-Id: <20220723204335.750095-22-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edge Compute Module 0 Carrier is an industrial form factor evaluation
board from Edgeble AI.

General features:
- microSD slot
- 2x MIPI CSI2 connectors
- MIPI DSI connector
- 2x USB Host
- 1x USB OTG
- Ethernet
- mini PCIe
- Onboard PoE
- RS485, RS232, CAN
- Micro Phone array
- Speaker
- RTC battery slot
- 40-pin expansion

Edge Compute Module 0 needs to mount on top of this Carrier board for
creating Edge Compute Module 0 Carrier platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../rv1126-edge-compute-module-0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..6a0ba434c1cf 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1097,6 +1097,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edge-compute-module-0-carrier.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts b/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
new file mode 100644
index 000000000000..b3b6f70c1a9b
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edge-compute-module-0-carrier.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edge-compute-module-0.dtsi"
+
+/ {
+	model = "Edgeble AI Edge Compute Module 0 Carrier board";
+	compatible = "edgeble,edge-compute-module-0-carrier",
+		     "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4 &sdmmc0_det>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.25.1

