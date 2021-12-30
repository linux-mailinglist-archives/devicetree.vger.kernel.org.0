Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3D9B481B93
	for <lists+devicetree@lfdr.de>; Thu, 30 Dec 2021 12:05:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238770AbhL3LFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Dec 2021 06:05:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235057AbhL3LFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Dec 2021 06:05:46 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FF02C061574
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 03:05:45 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id x7so53743963lfu.8
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 03:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Jv4pwgd1fihkEeiAHp/vtKcQgZuYWKKujmjMorzehpE=;
        b=b5sB+65vByqSrqg8Mw9rVA57hLwE7wPypcomk3vBx8LitzbsTJIuMHljqS1y4UlVmX
         +QHTJOreXBtShwCt8WCyKoZQU27tRWzp2qcimgBc06V/B4IhOaRxeESMAZc2VerhpqoH
         mph3L4WTS/IO+Xaw9c/DYAIlPcG6LqgHv8jYRR72/rOB2GnKsLHiDaKtLGBUSnlEwFX0
         qc+gcX8ASIpHvLgcI4br4WeAW0wMMMXSkhuI3ze8MlpTblXI/wUTmE88sgLThQTcWb2A
         +zUhMbd1eRK9kyjP4wD80L2BsK8N529KZCI5UomJ28pClJpApBuxpJYsz/sfL+xpcXh/
         5UCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Jv4pwgd1fihkEeiAHp/vtKcQgZuYWKKujmjMorzehpE=;
        b=nKyl/1acDO2jx1HdU2Fw4ep6TODdQehmeKD2HQs4yXF4hhU1+1X8FfqObqe9ne1y8n
         hNhkJNbFiWz6fDaiATyA7Jhk5R6NdBFDhnq3L6MGSfi1Au4l5WxeubWLQ5U3E9Xp6OuF
         2N1r6TajI9LV4EesD+2l8b7Qbfxz4b+TOvi8IL4DulxcLqTwEJ5PR8bHUDY71Asq84wP
         CuqOE4gTBVXaOr3cBtgN6wuLBx5kXfk6m0WW0/34bxVjvkumV+Ma3PIQNR6G8FbbDT8P
         XBbmuU3mRcQIY9Ha4TjWGljTTD++xyHWYAX17WyV86EBlzB1r5dYPTj+235ZBwYw9UUF
         2S1w==
X-Gm-Message-State: AOAM530S0eeSoKxcFh7aByl0NzazBo5is76ekpTiazhTR7LPVYA6DD9N
        196YvR+xM7aa8zruV+LipgE=
X-Google-Smtp-Source: ABdhPJyRhkRqbdWVxhLmx4GOlWU5h4eeDlbqlw7cDSAMc7utSDSbNBX6MzAnqZvEzGrO+mnxZuLvbQ==
X-Received: by 2002:ac2:5308:: with SMTP id c8mr11150921lfh.346.1640862343607;
        Thu, 30 Dec 2021 03:05:43 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id v22sm2464665ljh.129.2021.12.30.03.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Dec 2021 03:05:43 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: add pinctrl binding
Date:   Thu, 30 Dec 2021 12:05:35 +0100
Message-Id: <20211230110535.27543-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Describe pinmux block with its maps.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Validated with the
[PATCH V2 1/2] dt-bindings: pinctrl: Add binding for BCM4908 pinctrl
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 7034fe5a48ff..e8f62bed1879 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -287,6 +287,141 @@ gpio0: gpio-controller@500 {
 			gpio-controller;
 		};
 
+		pinctrl@560 {
+			compatible = "brcm,bcm4908-pinctrl";
+			reg = <0x560 0x10>;
+
+			pins_led_0_a: led_0-a-pins {
+				function = "led_0";
+				groups = "led_0_grp_a";
+			};
+
+			pins_led_1_a: led_1-a-pins {
+				function = "led_1";
+				groups = "led_1_grp_a";
+			};
+
+			pins_led_2_a: led_2-a-pins {
+				function = "led_2";
+				groups = "led_2_grp_a";
+			};
+
+			pins_led_3_a: led_3-a-pins {
+				function = "led_3";
+				groups = "led_3_grp_a";
+			};
+
+			pins_led_4_a: led_4-a-pins {
+				function = "led_4";
+				groups = "led_4_grp_a";
+			};
+
+			pins_led_5_a: led_5-a-pins {
+				function = "led_5";
+				groups = "led_5_grp_a";
+			};
+
+			pins_led_6_a: led_6-a-pins {
+				function = "led_6";
+				groups = "led_6_grp_a";
+			};
+
+			pins_led_7_a: led_7-a-pins {
+				function = "led_7";
+				groups = "led_7_grp_a";
+			};
+
+			pins_led_8_a: led_8-a-pins {
+				function = "led_8";
+				groups = "led_8_grp_a";
+			};
+
+			pins_led_9_a: led_9-a-pins {
+				function = "led_9";
+				groups = "led_9_grp_a";
+			};
+
+			pins_led_21_a: led_21-a-pins {
+				function = "led_21";
+				groups = "led_21_grp_a";
+			};
+
+			pins_led_22_a: led_22-a-pins {
+				function = "led_22";
+				groups = "led_22_grp_a";
+			};
+
+			pins_led_26_a: led_26-a-pins {
+				function = "led_26";
+				groups = "led_26_grp_a";
+			};
+
+			pins_led_27_a: led_27-a-pins {
+				function = "led_27";
+				groups = "led_27_grp_a";
+			};
+
+			pins_led_28_a: led_28-a-pins {
+				function = "led_28";
+				groups = "led_28_grp_a";
+			};
+
+			pins_led_29_a: led_29-a-pins {
+				function = "led_29";
+				groups = "led_29_grp_a";
+			};
+
+			pins_led_30_a: led_30-a-pins {
+				function = "led_30";
+				groups = "led_30_grp_a";
+			};
+
+			pins_hs_uart: hs_uart-pins {
+				function = "hs_uart";
+				groups = "hs_uart_grp";
+			};
+
+			pins_i2c_a: i2c-a-pins {
+				function = "i2c";
+				groups = "i2c_grp_a";
+			};
+
+			pins_i2c_b: i2c-b-pins {
+				function = "i2c";
+				groups = "i2c_grp_b";
+			};
+
+			pins_i2s: i2s-pins {
+				function = "i2s";
+				groups = "i2s_grp";
+			};
+
+			pins_nand_ctrl: nand_ctrl-pins {
+				function = "nand_ctrl";
+				groups = "nand_ctrl_grp";
+			};
+
+			pins_nand_data: nand_data-pins {
+				function = "nand_data";
+				groups = "nand_data_grp";
+			};
+
+			pins_emmc_ctrl: emmc_ctrl-pins {
+				function = "emmc_ctrl";
+				groups = "emmc_ctrl_grp";
+			};
+
+			pins_usb0_pwr: usb0_pwr-pins {
+				function = "usb0_pwr";
+				groups = "usb0_pwr_grp";
+			};
+
+			pins_usb1_pwr: usb1_pwr-pins {
+				function = "usb1_pwr";
+				groups = "usb1_pwr_grp";
+			};
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x18>;
-- 
2.31.1

