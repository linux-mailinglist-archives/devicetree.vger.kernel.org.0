Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06C55257061
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:07:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726388AbgH3UHh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:07:37 -0400
Received: from mout.kundenserver.de ([212.227.126.187]:53455 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3UHe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:07:34 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIdNt-1kOtn93SzN-00EeMH; Sun, 30 Aug 2020 22:07:18 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: hisilicon: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 22:05:51 +0200
Message-Id: <20200830200551.1474-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:vNG48GUqGAjuFuYkzHlv2oF5YPl2777sfTXyqpHfG899+HithKg
 KPMe0+7kDKtUOSNhAevEPARqOFxF5761OKQ/osO6cE7igElNmHPykV+tA92Y4mOwCHyxg9U
 Zbd1ErGdbv5BTXGJTWcTLGBpuuSPN0v/7wTIqE4WOz77yr87pSuOBPsYF529htmAUutlEH5
 u5RH3SK0Klq2HVdKtpVUA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dNPPUaqcYTA=:Gc+S1/Vz/EaGH1hdvFIWFH
 J99dwBJK2clJy7D30KU6Vuh05Ag5jpF+Pi18QTagzFJsGGGqmoiKQ2U2PcCOoYmCEd7d+5KWv
 dGZCxnAH7axP3wKUBJcHWnTN7stqq9xS6hFQvWGaTTcW5buO0TY8j9YU9VjdFxAvUa0RDrMKd
 OJuVb/tA/YyHzEriBHyLc3XIkyrxqqyBiS4Sa6jm8BpLBvFIDqF5ZX1/Gf6QciNKcweviN+JO
 K4os5PCYgMg0OsBQWtweI+r/yg80rFA2Ab3QBw3L6SLGWDrAaS5At9Rmlk40sLPxRoldzQJQE
 GiG8cPMyNmm2rknmK4Iluh7OKu4uHLF8qi4krG3MNp9o8gC1dSRvryWrYxjodEB4SgA1N7udd
 AOit6TISmemPZnTZoHC2rbuqluS7hsqCRM0shlwZf1fgzZXDFxCvIRqpMfttvWBsXw/nk98Yk
 wLAOXwD4eIhUvu/9zOb2TNXfwIF/1SGuMUQfeVXksoM8Q/hU1pVKYWMqTQz9z6UBDKdCJDx+v
 gEP2tq/7/bSi/nHyFX5dPKFu1q+Hl8jXg8SqD41MX/1Jns6rgpKL3KTTJArLvfNlQqPVlAUKY
 OiocQm+fqLWNVReMk6o5dUd9g65+eWkDWVn/8sg7nsTQriNQfqtbli+erF1W46MJKvrbJ5xsc
 jVWh5ASInEuS+fEla5zNQb55tAriPgwixc35QGLKXmEwRP+KI7YCk/5//rAqKB25JztmwIctV
 11cQjGe930oBLi4cdMzsok6lAIY60ZdUatCncu7DDx1erqCpfACty+DO9jMo0wux4CkVzPxLO
 2dcEbWQzXZSJO5uNg9XJ41dkT5Q3JMuTskAVA5WiZp3qCptBLREODUKY7h+kXRW/ogUTEGgDs
 RmkXf6Y22cWx9PeBb61A==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../boot/dts/hisilicon/hi3660-hikey960.dts    |  6 +++---
 .../boot/dts/hisilicon/hi3670-hikey970.dts    |  2 +-
 .../arm64/boot/dts/hisilicon/hi6220-hikey.dts | 18 ++++++++---------
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi     |  2 +-
 arch/arm64/boot/dts/hisilicon/hip05-d02.dts   |  6 +++---
 arch/arm64/boot/dts/hisilicon/hip06-d03.dts   | 18 ++++++++---------
 arch/arm64/boot/dts/hisilicon/hip07-d05.dts   | 20 +++++++++----------
 7 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
index c1b614dabb8e..963300eede17 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts
@@ -530,7 +530,7 @@
 	rt1711h: rt1711h@4e {
 		compatible = "richtek,rt1711h";
 		reg = <0x4e>;
-		status = "ok";
+		status = "okay";
 		interrupt-parent = <&gpio27>;
 		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
@@ -570,7 +570,7 @@
 	};
 
 	adv7533: adv7533@39 {
-		status = "ok";
+		status = "okay";
 		compatible = "adi,adv7533";
 		reg = <0x39>;
 		adi,dsi-lanes = <4>;
@@ -656,7 +656,7 @@
 		     &sdio_cfg_func>;
 	/* WL_EN */
 	vmmc-supply = <&wlan_en>;
-	status = "ok";
+	status = "okay";
 
 	wlcore: wlcore@2 {
 		compatible = "ti,wl1837";
diff --git a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
index 7dac33d4fd5c..7f9f9886c349 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
@@ -418,7 +418,7 @@
 		     &sdio_cfg_func>;
 	/* WL_EN */
 	vmmc-supply = <&wlan_en>;
-	status = "ok";
+	status = "okay";
 
 	wlcore: wlcore@2 {
 		compatible = "ti,wl1837";
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
index 533ed523888d..91d08673c02e 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts
@@ -267,7 +267,7 @@
 &uart1 {
 	assigned-clocks = <&sys_ctrl HI6220_UART1_SRC>;
 	assigned-clock-rates = <150000000>;
-	status = "ok";
+	status = "okay";
 
 	bluetooth {
 		compatible = "ti,wl1835-st";
@@ -278,21 +278,21 @@
 };
 
 &uart2 {
-	status = "ok";
+	status = "okay";
 	label = "LS-UART0";
 };
 
 &uart3 {
-	status = "ok";
+	status = "okay";
 	label = "LS-UART1";
 };
 
 &ade {
-	status = "ok";
+	status = "okay";
 };
 
 &dsi {
-	status = "ok";
+	status = "okay";
 
 	ports {
 		/* 1 for output port */
@@ -489,17 +489,17 @@
 
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c2 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-	status = "ok";
+	status = "okay";
 
 	adv7533: adv7533@39 {
 		compatible = "adi,adv7533";
@@ -541,5 +541,5 @@
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index 3d189d9f0d24..3bab4bc6ff99 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -371,7 +371,7 @@
 			clocks = <&sys_ctrl HI6220_EDMAC_ACLK>;
 			dma-no-cci;
 			dma-type = "hi6220_dma";
-			status = "ok";
+			status = "okay";
 		};
 
 		dual_timer0: timer@f8008000 {
diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
index e93c65ede06c..369b69b17b91 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
@@ -42,15 +42,15 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &peri_gpio0 {
-	status = "ok";
+	status = "okay";
 };
 
 &lbc {
-	status = "ok";
+	status = "okay";
 	#address-cells = <2>;
 	#size-cells = <1>;
 	ranges = <0 0 0x0 0x90000000 0x08000000>,
diff --git a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
index 677862beebef..9f4a930e734d 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
@@ -22,37 +22,37 @@
 };
 
 &ipmi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth1 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth2 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth3 {
-	status = "ok";
+	status = "okay";
 };
 
 &sas1 {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ohci {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ehci {
-	status = "ok";
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
index fcbdffe0868b..81a2312c8a26 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
@@ -50,41 +50,41 @@
 };
 
 &uart0 {
-	status = "ok";
+	status = "okay";
 };
 
 &ipmi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ohci {
-	status = "ok";
+	status = "okay";
 };
 
 &usb_ehci {
-	status = "ok";
+	status = "okay";
 };
 
 &eth0 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth1 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth2 {
-	status = "ok";
+	status = "okay";
 };
 
 &eth3 {
-	status = "ok";
+	status = "okay";
 };
 
 &sas1 {
-	status = "ok";
+	status = "okay";
 };
 
 &p0_pcie2_a {
-	status = "ok";
+	status = "okay";
 };
-- 
2.20.1

