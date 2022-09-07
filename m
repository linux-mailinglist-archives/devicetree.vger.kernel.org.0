Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0B7C5B09A0
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbiIGQFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230330AbiIGQFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:05:02 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 656CEBCCC8
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:03:23 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id p1-20020a17090a2d8100b0020040a3f75eso10350044pjd.4
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=P7INJJ0dSMSOYW8Kze8Tn6xVassfDthSwV+6T1Kwtkg=;
        b=tVtYJsvQ8YPGLHGTmXXS4y6kOnt4knAW670uJQpoqHsfCMwqQJiSCvR6nEWiGLN6cv
         bJk97bFyOns17ACAONgPWkav9G8uPCnoWxLYG5FyMLOjgJbyCjOJUez1QJWEScISKTYV
         LfsKWWMU+bqa3XkqCs1CEzQGDQg6PDkEhN1jb4cKa7/T/cGyOUqwG+yWQJySBH+bYozf
         4Iojxy18zyG32YS/OIodRYA3ii01MiBh9cljaMK2P9d6T1Kt0RRGLZVQZzc0wYcugEoE
         q3mjiK7202XCvmiGDEY9THyBsLHie0HX7+2DZB0dHWJjd1GyTVowM8bUmwSAUq1EDqDr
         ZUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=P7INJJ0dSMSOYW8Kze8Tn6xVassfDthSwV+6T1Kwtkg=;
        b=BepRJafLTJcyBVAq8c/LuE/tAhS5nfFImhkqMLKLMnCsHNZ0tJmzBVMP8NM/W5XkkQ
         HALfiySIrs4B14lpXYhPkeVBUIlfHJ/HZmFACRqVpWx4KsY6pKFmmqHwKtQ00YGXXGqr
         24Em8JisIRi2bWwKyZG9kLg3dly71zzgtUOYOzA2j0+i+vWf3fIX8wpfOGhoJiTJHr13
         ncUSZJf77dolRNlhxjwN/YVqCpMT8DyZEuUaJigAKloYuc75sKojUgqrQjok5+v//d3D
         fBux0n5ocnRFLnt8A+iEZ58T/72rQwjo2neAp9l78QX6N126OdQefTyIvpx8/FvEc7if
         66Bg==
X-Gm-Message-State: ACgBeo26FgiBXX+UMJ0QaIXzL9MJmnx7i7VSywTniendYJ+662pSsnsa
        usWf66egB+vzl4bRtb9W1EH7Qg==
X-Google-Smtp-Source: AA6agR5yCMir5Bw4XTBgOXc4QtLhWA/TW0ekwhyG4A2VOFwogBBBu/SuZsXTT0rAC8JbKTj1V+sY7A==
X-Received: by 2002:a17:90a:908:b0:200:14d8:1ff9 with SMTP id n8-20020a17090a090800b0020014d81ff9mr24131318pjn.16.1662566602593;
        Wed, 07 Sep 2022 09:03:22 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:22 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v4 13/13] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Wed,  7 Sep 2022 21:32:07 +0530
Message-Id: <20220907160207.3845791-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
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
Changes for v4:
- rebase on -next 
Changes for v3:
- none
Changes for v2:
- change easy and meaningful dts name

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 05d8aef6e5d2..69781a7227cb 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1114,6 +1114,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-ecm0-carrier.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
new file mode 100644
index 000000000000..150bfb9bd04a
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-edge-compute-module-0.dtsi"
+
+/ {
+	model = "Edgeble AI Edge Compute Module 0 Carrier board";
+	compatible = "edgeble,edge-compute-module-0-carrier",
+		     "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
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

