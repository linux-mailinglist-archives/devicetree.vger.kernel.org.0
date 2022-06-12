Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DD5B547CCF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 00:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237316AbiFLWdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 18:33:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237496AbiFLWdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 18:33:11 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B55518394
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:10 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id n28so4977686edb.9
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 15:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4nJEq+0F6Kk8Ge3MLggAIqmACf86QHCZyLCCT4E4CWQ=;
        b=hW24e/VAQZnxK1I15mgerWtrXu7REOsHGwRMjz5Cju/IfqimQ0m4ko9tvi9gOecUmO
         Gvb4VyInGJFktcU88SQpRG08A0WjL9G64Y6YbmX6tWoV+q4AWRG1P0r5h5UZNyU6iYWO
         JM6M7TdccyNDB8zDpehOPzY4J5SsPsG2zGogk5mEZeReDdWyU/ar7LtWQzW1pRghADRP
         /ey6Nd3hd24Hi3ylnJEbpdDQvNXqLIeF74LPsI5bf0nFgnkbPzqULfffgP+bU8l6oWDR
         0sK1PLusEoEnJp2IIJwvf5sNrhsUM/9BfpPAJCyiKAIPU/86oZVv4sGkihkGG7RN8abT
         a+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4nJEq+0F6Kk8Ge3MLggAIqmACf86QHCZyLCCT4E4CWQ=;
        b=tV8ixVwfS3mrbsrrLktfwrx5VZU7ruXwwHLak9+l1MaxT8KhYEeHfX65McD0Fc3Hf2
         x7JkJ1foMWBXqlyUonn2Cfa2nwffIus+GkafM9nR3N7Q9QrucOe1jdwh4mE+GzIjkvkZ
         UgiXV+OCpxH0LtbXLEBEU6scZYjZipP64KK1Af7IaWZMoesR1emWZfL5vMiw9BF76yLR
         lxsAx0Yde8lphd39FBN0oQSWIxYAtAnKhsxpKxso0t99B7UPvX/RcVnUUkdmrpl8goh1
         C/w0Lhu4GDEvddgEP6K8R0H8RgVBAjg2exRa1UZP66Bnr1DNnJ0bJjdqHpcBW9vJWWLI
         hyRA==
X-Gm-Message-State: AOAM533otig0wIZBmP7NPYD50UyDufAyeiOO8W6EK31omhGoL/qr3B6K
        rtdzgHjhDeK9kLIme7HAW3DZ/g==
X-Google-Smtp-Source: ABdhPJxpX0mJKgMB5LTCM0Ad0hLLNGFtaBXZ5buJwb9RS3/hnzB7Uv6+BRAUihiZS5MkLfcuoJwR0A==
X-Received: by 2002:aa7:c14b:0:b0:42d:d763:104 with SMTP id r11-20020aa7c14b000000b0042dd7630104mr62964220edp.104.1655073188982;
        Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
Received: from bismarck.berto.se (p4fca22cf.dip0.t-ipconnect.de. [79.202.34.207])
        by smtp.googlemail.com with ESMTPSA id e3-20020a056402104300b0042b5cf75d6esm3766559edu.97.2022.06.12.15.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 15:33:08 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH 6/6] arm64: dts: ti: Add missing space around properties
Date:   Mon, 13 Jun 2022 00:32:01 +0200
Message-Id: <20220612223201.2740248-7-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing space around properties before the typo spreads to other
files.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi           | 4 ++--
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi           | 4 ++--
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 2 +-
 arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi         | 4 ++--
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts     | 2 +-
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi    | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi    | 4 ++--
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi   | 4 ++--
 8 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index d08abad0bcf4e58c..df3b9883e88753d5 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -144,8 +144,8 @@ dmsc: system-controller@44043000 {
 		compatible = "ti,k2g-sci";
 		ti,host-id = <12>;
 		mbox-names = "rx", "tx";
-		mboxes= <&secure_proxy_main 12>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 12>,
+			 <&secure_proxy_main 13>;
 		reg-names = "debug_messages";
 		reg = <0x00 0x44043000 0x00 0xfe0>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index f64b368c6c371757..7bfddd35eb93e4e8 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -174,8 +174,8 @@ dmsc: system-controller@44043000 {
 		compatible = "ti,k2g-sci";
 		ti,host-id = <12>;
 		mbox-names = "rx", "tx";
-		mboxes= <&secure_proxy_main 12>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 12>,
+			 <&secure_proxy_main 13>;
 		reg-names = "debug_messages";
 		reg = <0x00 0x44043000 0x00 0xfe0>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index 6e41f2fa044af9f3..d050c410c6917a8f 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -574,7 +574,7 @@ &mcu_spi0 {
 	pinctrl-0 = <&mcu_spi0_pins_default>;
 
 	#address-cells = <1>;
-	#size-cells= <0>;
+	#size-cells = <0>;
 	ti,pindir-d0-out-d1-in;
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
index 9c69d0917f69ac9c..fa11d7142006a72a 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
@@ -12,8 +12,8 @@ dmsc: system-controller@44083000 {
 
 		mbox-names = "rx", "tx";
 
-		mboxes= <&secure_proxy_main 11>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 11>,
+			 <&secure_proxy_main 13>;
 
 		reg-names = "debug_messages";
 		reg = <0x44083000 0x1000>;
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 57497cb1ed68ecb3..048228c89d5b58d7 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -330,7 +330,7 @@ &main_spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_spi0_pins_default>;
 	#address-cells = <1>;
-	#size-cells= <0>;
+	#size-cells = <0>;
 	ti,pindir-d0-out-d1-in;
 
 	flash@0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 1044ec6c4b0d4b10..ff13bbeed30c91e6 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -12,8 +12,8 @@ dmsc: system-controller@44083000 {
 
 		mbox-names = "rx", "tx";
 
-		mboxes= <&secure_proxy_main 11>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 11>,
+			 <&secure_proxy_main 13>;
 
 		reg-names = "debug_messages";
 		reg = <0x00 0x44083000 0x00 0x1000>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index b4972dfb7da815a0..df08724bbf1c51c3 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -12,8 +12,8 @@ dmsc: system-controller@44083000 {
 
 		mbox-names = "rx", "tx";
 
-		mboxes= <&secure_proxy_main 11>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 11>,
+			 <&secure_proxy_main 13>;
 
 		reg-names = "debug_messages";
 		reg = <0x00 0x44083000 0x0 0x1000>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index 6c5c02edb375db32..4d1bfabd1313a560 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -12,8 +12,8 @@ sms: system-controller@44083000 {
 
 		mbox-names = "rx", "tx";
 
-		mboxes= <&secure_proxy_main 11>,
-			<&secure_proxy_main 13>;
+		mboxes = <&secure_proxy_main 11>,
+			 <&secure_proxy_main 13>;
 
 		reg-names = "debug_messages";
 		reg = <0x00 0x44083000 0x00 0x1000>;
-- 
2.36.1

