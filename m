Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F6C0586041
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236933AbiGaRsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237465AbiGaRsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:51 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5329EE05
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:50 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id 17so8713742pfy.0
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=9srpnaFLbfVaL5YYWGXQCwQ3oUJACuV3OZQN8eEBiHE=;
        b=ZxgFHA7OoNJq9X9Do75DAU0uk2g3QCOhHcQrJn21UdWGfoHeKL7p5dWNMdkNtFgbK/
         xdwDxZjJvduOLZcfP4dfZp5vFQ6QqPKQys8uw0Bzy1lDAuzuCSCbg7ZnG/6CsrjOZ1yh
         2Z9cForqkoN0H4o9CrULHG9B6GScor+XY+arSgNyMQVEjHPgmKD0abQozzaeHMr1WI/Y
         Z95CrUemvnRSfIiQNzfSaAM/she4520fhnyrXepn87HfuzV9KuP7luegNW/PKZU+2OGf
         gHCaSz7ya5DQnIwRBhk+dfNG6Unz8oeGeWpkqpbFN/hn3ejqX/X/zgxq34opQnGvOFSQ
         8Hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=9srpnaFLbfVaL5YYWGXQCwQ3oUJACuV3OZQN8eEBiHE=;
        b=4dUgBPu4y1pb8dQKS/wmJM+UKeRUr7XgiU9CwVbDD1joJyaeLp2LLZgvKNvkTsgFZr
         WL5J88u5PaR12grJYbFSnkbNQInIhtQ6YppQ3rYUAuKsPKBdnvSj6wp4SAUDz5nPqOnQ
         8ds0QJDxDEXX9JAuLJo0eTjssLC4mC9+bkBOeej/jlmSoINCRgmwjVYKc2r/95bbn1Wu
         SkjWhfNW3hooFctuVUTv1n9wehA6O09pY6+C91Zq/gqkc7AQT+xviZHkK3ETYgNj/Hs9
         Dd+VjN6iNdBSLSMF0U7+ycQT47WOMvpvq/mqiAaaFZMRqniyg0tduusiFstBwx9H+lPn
         COZw==
X-Gm-Message-State: AJIora+NG4iNqvNg7dXkM8pxrGeuHqKtap8AcjujK1dyCU7Eofk2J2GO
        GbmzjpiWNP/1p0S/d5++SqsF/A==
X-Google-Smtp-Source: AGRyM1ujZA85Y0shj2dUghLNEQsMHFcFq9xsPkqlxwhGlezaz5tfdBp5ZThFQ5uI/84sfGUncvyjTg==
X-Received: by 2002:a05:6a00:2190:b0:52b:fe5f:5939 with SMTP id h16-20020a056a00219000b0052bfe5f5939mr12778946pfi.83.1659289730193;
        Sun, 31 Jul 2022 10:48:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:49 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 20/20] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Sun, 31 Jul 2022 23:17:26 +0530
Message-Id: <20220731174726.72631-21-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
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
Changes for v2:
- change easy and meaningful dts name

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..361b68e5019e 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1097,6 +1097,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
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

