Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7CE6F8B20
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 23:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232200AbjEEVhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 17:37:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbjEEVhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 17:37:54 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F40740EB
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 14:37:52 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E8FD2847B4;
        Fri,  5 May 2023 23:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1683322670;
        bh=sCoJIcyJn57OBbXz+UIeQXoZcPT1NlToEObIQS32cWM=;
        h=From:To:Cc:Subject:Date:From;
        b=bpx1YYAeXshyGsyDhZmNoRTuMtAH6I8ykEIQB/Xkjkw2eG5I1N28JsyeuKKnoBzDs
         m4HiB/ZaOOvEgxd/qRdT67Sqg93CcFXWpo7ZXLYYxHGKdJaAkjP/CAt7o0wuABGgwa
         T9FCRzlKAJty2jL2dV3qaFwQaMx1teJtOeJSYeQ5oOirDj3CyrrH8Fm65ERYPyO2bP
         NqegsNq2I3kKkiOvpKBsR6rCN10pkbcs+goSdCabZZ/K73ALzZQEaR+AwIvxqZEJxF
         UJbOaCgWcFzZOIbdMgMk2HO3owQwFnq3ofEznYSWUZ+T7TtcaXWN4H9gpiJu4EGfYe
         gZf3ReVFvb6kQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Move ethernet MAC EEPROM from SoM to carrier boards
Date:   Fri,  5 May 2023 23:37:29 +0200
Message-Id: <20230505213729.119789-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ethernet MAC EEPROM is not populated on the SoM itself, it has to be
populated on each carrier board. Move the EEPROM into the correct place
in DTs, i.e. the carrier board DTs. Add label to the EEPROM too.

Fixes: 7e76f82acd9e1 ("ARM: dts: stm32: Split Avenger96 into DHCOR SoM and Avenger96 board")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi   | 6 ++++++
 arch/arm/boot/dts/stm32mp15xx-dhcor-drc-compact.dtsi | 6 ++++++
 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi         | 6 ------
 arch/arm/boot/dts/stm32mp15xx-dhcor-testbench.dtsi   | 8 ++++++++
 4 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
index 8232bbbae379c..302efac5d26f0 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
@@ -321,6 +321,12 @@ adv7513_i2s0: endpoint {
 			};
 		};
 	};
+
+	dh_mac_eeprom: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
 };
 
 &ltdc {
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-drc-compact.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-drc-compact.dtsi
index c32c160f97f20..39af79dc654cc 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-drc-compact.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-drc-compact.dtsi
@@ -192,6 +192,12 @@ eeprom@50 {
 		reg = <0x50>;
 		pagesize = <16>;
 	};
+
+	dh_mac_eeprom: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
 };
 
 &sdmmc1 {	/* MicroSD */
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
index 948054382136b..864960387e634 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
@@ -213,12 +213,6 @@ watchdog {
 			status = "disabled";
 		};
 	};
-
-	eeprom@53 {
-		compatible = "atmel,24c02";
-		reg = <0x53>;
-		pagesize = <16>;
-	};
 };
 
 &ipcc {
diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-testbench.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-testbench.dtsi
index 5fdb74b652aca..faed31b6d84a1 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-testbench.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-testbench.dtsi
@@ -90,6 +90,14 @@ phy0: ethernet-phy@7 {
 	};
 };
 
+&i2c4 {
+	dh_mac_eeprom: eeprom@53 {
+		compatible = "atmel,24c02";
+		reg = <0x53>;
+		pagesize = <16>;
+	};
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
-- 
2.39.2

