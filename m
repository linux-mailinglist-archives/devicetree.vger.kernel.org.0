Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3801863BB19
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:55:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbiK2Hza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:55:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbiK2Hz3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:55:29 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC8464AF3F
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:28 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id ns17so5085918pjb.1
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVaOWtQJYEfFjgCfIO0nKUUiRBiv1wPc261PVtkO8Q4=;
        b=eGPiDNrRYLRj3arUf4TQluOQSSX86JCVn2ysyw868tmPwWST3cQoWu1PM/21IHNTFO
         kYAkeiJoDcKpRT8BsPXJfbDyGoZKjtgtlbV96F7mT1Fne/t1geuNT7ZSsRvoOPLEShCB
         SwoG+qc+512r4bhnH69bIzeSKCPBhdi5trnO2+czTu0QIR7YfExw/PgPgpqbE1fe6pt3
         8UX2+1pJu0CoSBh6rCfy0e1iRWJZwpNJ/t4IK/tOT/WDQQ1JccMa8f3mBhXVRjliQfYm
         q3n+FyyBUl/NsN61fmYf6mjljp/8utBL+2cDrwq3AG1wC8ef9vEvfd69BPtBQNpjgB14
         7WJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVaOWtQJYEfFjgCfIO0nKUUiRBiv1wPc261PVtkO8Q4=;
        b=oGbYQ9sKgNRRTc6k6LYtFmy/3mCRbfBwg7uJvqR581r7AsNfrZqgbuU8m6RPzTfw3S
         BThpV/Z/pQHch+iipPVJro20aYAuT4yR1WgVUyDCWcNN7Fv85LxewugJ1yYTfasxH9a3
         Knm2rPE4VprDc66JDv98Rb3AXjKJldOcbH6HHSsKuzPBpS4VwUSxvuljOrhgB+brdKk6
         7mWQVFY1a1N6nl0YrjjxwOFvJVciuqvmfBXtvFpidxE0AoCNORkwGCBsht8qJhr+057L
         c46OW+YSv5EH2EyiN3GGTqXFldFCAenaISZ3LtISZLJKEKEAkiytsRnFl/mua/Cs1Waz
         1bfw==
X-Gm-Message-State: ANoB5pkHe6g9xhIbV/qI6VfAUSDIdI6g2XiRQ9toFF9xcl116Esk5KPD
        1QkDIC2HUlZCREYfGxQdDRuEvA==
X-Google-Smtp-Source: AA0mqf4HBSDUkTFn2Wa8RMOIpHEhkGQlAtDGGU4QZ6ZD7B2SYpCouter2bx2iUvHVadJ8YixjKLRVA==
X-Received: by 2002:a17:902:a706:b0:189:9031:6758 with SMTP id w6-20020a170902a70600b0018990316758mr7254845plq.138.1669708528435;
        Mon, 28 Nov 2022 23:55:28 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:28 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v9 8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date:   Tue, 29 Nov 2022 13:24:24 +0530
Message-Id: <20221129075424.189655-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
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

Neural Compute Module 2(Neu2) IO board is an industrial form factor
evaluation board from Edgeble AI.

General features:
- microSD slot
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

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- add serial2 aliases
Changes for v8, v7:
- none
Changes for v6:
- update the carrier name.

 arch/arm/boot/dts/Makefile                   |  1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 42 ++++++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e48cfbc4e8e4..40cc34bd4945 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1122,6 +1122,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-neu2-io.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
new file mode 100644
index 000000000000..dded0a12f0cd
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-neu2.dtsi"
+
+/ {
+	model = "Edgeble Neu2 IO Board";
+	compatible = "edgeble,neural-compute-module-2-io",
+		     "edgeble,neural-compute-module-2", "rockchip,rv1126";
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

