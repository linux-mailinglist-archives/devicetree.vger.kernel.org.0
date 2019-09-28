Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 94DE8C10BA
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725857AbfI1MIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:08:00 -0400
Received: from mout.gmx.net ([212.227.15.18]:55267 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725897AbfI1MIA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:08:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672457;
        bh=ju7Bd+dM/7yFl2EXq/i/+T9p6cJbvttYXIH7HB3K4LA=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=MO06V4tw9ITFvSFAsCsTbfpmle4bDMqTboMDKkGuDFJFAWi2S8mjEYGn48xh3KoUb
         OlOnHSo48IiPiqHtuUiBX0vgHZWpR0j3cWpL93K4Lvgg5874BWJbvwWfIsPDnkA8YD
         tc8Q/lefoRj5BE4QKAi7sVNZBT1vK+xls4S3sA0g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MfYPi-1hhKjZ1G1Y-00fyUv; Sat, 28 Sep 2019 14:07:37 +0200
From:   Stefan Wahren <wahrenst@gmx.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 3/8] ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
Date:   Sat, 28 Sep 2019 14:07:09 +0200
Message-Id: <1569672435-19823-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:rfi1TJTOMpvaFYav/L6kkd5dYIzFhDM2pH+LA2Yr8Wpdjb6OsuG
 4ZRa+voWUgUTPnCfFEurpUDmEIa1JPNhUCgCkGmrx+fdxUFRyhawhMHXKP61fj/XP/Cxxgb
 HPCei5f5SFk0uUKLIo0/+zDgsUg0kkKb1xeXbn4YLg6irs3Cro33SdhRPXbkAoDih1lU2F8
 ctvOHAdtwNiAGSf53C/+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:81yZYdK5xVs=:r28n+fKw1AhSnr3qo3hqP0
 Nc3cK3wkgihs1BEZ9ZpKZCCkypp37Wkkh3VqOzvE2ev92mcoDrgOTBz4PAQg4QwN5DpgOguIh
 NthODUlk8sSIU7V9gvq8A/Nb8LksDYj81pFICPGUAEWA0vhRuHstF74upM9dEORjj/TGm6EHk
 QoOc7sG6vkUiRtmXBi639qBP+6lswBhHY7VJBXCqPPOEehlW/hsR//l5rH/utV/TkEP3l17tj
 0PQB1kE2UCvVn7m5dJgCtZ2Q/ETTtmtt9ieRLV4UlNJycC+qIsXo+oyc6g6UoWfCeWHh+5ukp
 tQFBaplkTkz3qH8zr3j0r15K+NgVwa41B1EX0e2oRXVOcBuzaA8uFz8hWo5nrEayHLDC0a0U3
 4TWhSZZrrNRhcD7W38nkOs3af/YR2sMPMOUsTdpX3dZmC3GBW38OePuxewIgXW0e7eRJEZx+H
 1YTxLwQLFcb1noVNXfgYx7/cKCyaFOmHiypYwSgyXb7mfhmvnFK8cWHhYJB5VGq4f3HOGOzW9
 MOViksMmRxnx3H36ZxAugms+HqVJcWdLs0nsr9UvFlpGm0Bp87BAuXStCqoRVN4LeBymA/2gt
 FrSy6qJ6TUnztV7mW0V+fBeiNFSb0LpODe+3jMzgq7FcEk/MGmLQf7f9cRW+mskydTM7QP28S
 zv6DXxLxxjoQgdPcs0NopYi5a5mIW3DRCQaRr3WlAuOS2ltfywlbV0iuOUbNHfyCI83ayscfv
 mrxoHDvTlZ4lsYIhyqxKqx0C2ML9AdZhHQfv3zuSoyXifsLLYmTJNf6X4B1Ejf5/fnW0nXRBO
 RVofYnr7g3rZYhryio9xO9PfdiDhLUEcLr08MF+deF//Lu8UMiQfBLi9IXDhBpXu48kduiivm
 WsAoJUWLiI26+nVFNjnjM8vsT9oYpQayBu6AxtMbU7R4L9TWq/Zka/YZWwfjUJqn9FFxATvAt
 fSOekAbVBFd65P4fu10u9BqpVyAwkHVXzaPmr44ulvwVelR/Rg2ot/6viZhNUnHTSnHtPlzwn
 xqnQDE8fTJFZkgZ4QGwk5GNJv+TNPgDUWp6EOAV+o9XJYz4HyYisWOamrWjm+nZfoTU+Q2C0/
 GlnQQGsKTjkekKHvDcvkxTaK4d+Wm/PXzdZrNDPyu6/nlYLBxzLY209HR2+sD5kpSLcV1/yDj
 wdplZTSghZV82FXsi3dOTX2CcYCwiP3bTxtWExgvMBkzbTMjoCyx/L2hkUNbX0+7Ng7AOIvGf
 0rZAKByqQ+QAhQp4jOpesbktCOeIEO5CRuzek3A==
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As preparation we want all common BCM2711 + BCM2835/6/7 functions in
bcm283x.dtsi and all BCM2835/6/7 specific in the new
bcm2835-common.dtsi. Since i2c2 is BCM2835 specific, we also need
to move it to bcm2835-common.dtsi.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
=2D--
 arch/arm/boot/dts/bcm2835-common.dtsi | 194 +++++++++++++++++++++++++++++=
+++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi    |   4 -
 arch/arm/boot/dts/bcm2835.dtsi        |   1 +
 arch/arm/boot/dts/bcm2836.dtsi        |   1 +
 arch/arm/boot/dts/bcm2837.dtsi        |   1 +
 arch/arm/boot/dts/bcm283x.dtsi        | 174 +----------------------------=
-
 6 files changed, 198 insertions(+), 177 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi

diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm=
2835-common.dtsi
new file mode 100644
index 0000000..fe1ab40
=2D-- /dev/null
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -0,0 +1,194 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/* This include file covers the common peripherals and configuration betw=
een
+ * bcm2835, bcm2836 and bcm2837 implementations.
+ */
+
+/ {
+	interrupt-parent =3D <&intc>;
+
+	soc {
+		dma: dma@7e007000 {
+			compatible =3D "brcm,bcm2835-dma";
+			reg =3D <0x7e007000 0xf00>;
+			interrupts =3D <1 16>,
+				     <1 17>,
+				     <1 18>,
+				     <1 19>,
+				     <1 20>,
+				     <1 21>,
+				     <1 22>,
+				     <1 23>,
+				     <1 24>,
+				     <1 25>,
+				     <1 26>,
+				     /* dma channel 11-14 share one irq */
+				     <1 27>,
+				     <1 27>,
+				     <1 27>,
+				     <1 27>,
+				     /* unused shared irq for all channels */
+				     <1 28>;
+			interrupt-names =3D "dma0",
+					  "dma1",
+					  "dma2",
+					  "dma3",
+					  "dma4",
+					  "dma5",
+					  "dma6",
+					  "dma7",
+					  "dma8",
+					  "dma9",
+					  "dma10",
+					  "dma11",
+					  "dma12",
+					  "dma13",
+					  "dma14",
+					  "dma-shared-all";
+			#dma-cells =3D <1>;
+			brcm,dma-channel-mask =3D <0x7f35>;
+		};
+
+		intc: interrupt-controller@7e00b200 {
+			compatible =3D "brcm,bcm2835-armctrl-ic";
+			reg =3D <0x7e00b200 0x200>;
+			interrupt-controller;
+			#interrupt-cells =3D <2>;
+		};
+
+		pm: watchdog@7e100000 {
+			compatible =3D "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+			#power-domain-cells =3D <1>;
+			#reset-cells =3D <1>;
+			reg =3D <0x7e100000 0x114>,
+			      <0x7e00a000 0x24>;
+			clocks =3D <&clocks BCM2835_CLOCK_V3D>,
+				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
+				 <&clocks BCM2835_CLOCK_H264>,
+				 <&clocks BCM2835_CLOCK_ISP>;
+			clock-names =3D "v3d", "peri_image", "h264", "isp";
+			system-power-controller;
+		};
+
+		pixelvalve@7e206000 {
+			compatible =3D "brcm,bcm2835-pixelvalve0";
+			reg =3D <0x7e206000 0x100>;
+			interrupts =3D <2 13>; /* pwa0 */
+		};
+
+		pixelvalve@7e207000 {
+			compatible =3D "brcm,bcm2835-pixelvalve1";
+			reg =3D <0x7e207000 0x100>;
+			interrupts =3D <2 14>; /* pwa1 */
+		};
+
+		thermal: thermal@7e212000 {
+			compatible =3D "brcm,bcm2835-thermal";
+			reg =3D <0x7e212000 0x8>;
+			clocks =3D <&clocks BCM2835_CLOCK_TSENS>;
+			#thermal-sensor-cells =3D <0>;
+			status =3D "disabled";
+		};
+
+		i2c2: i2c@7e805000 {
+			compatible =3D "brcm,bcm2835-i2c";
+			reg =3D <0x7e805000 0x1000>;
+			interrupts =3D <2 21>;
+			clocks =3D <&clocks BCM2835_CLOCK_VPU>;
+			#address-cells =3D <1>;
+			#size-cells =3D <0>;
+			status =3D "okay";
+		};
+
+		pixelvalve@7e807000 {
+			compatible =3D "brcm,bcm2835-pixelvalve2";
+			reg =3D <0x7e807000 0x100>;
+			interrupts =3D <2 10>; /* pixelvalve */
+		};
+
+		hdmi: hdmi@7e902000 {
+			compatible =3D "brcm,bcm2835-hdmi";
+			reg =3D <0x7e902000 0x600>,
+			      <0x7e808000 0x100>;
+			interrupts =3D <2 8>, <2 9>;
+			ddc =3D <&i2c2>;
+			clocks =3D <&clocks BCM2835_PLLH_PIX>,
+				 <&clocks BCM2835_CLOCK_HSM>;
+			clock-names =3D "pixel", "hdmi";
+			dmas =3D <&dma 17>;
+			dma-names =3D "audio-rx";
+			status =3D "disabled";
+		};
+
+		v3d: v3d@7ec00000 {
+			compatible =3D "brcm,bcm2835-v3d";
+			reg =3D <0x7ec00000 0x1000>;
+			interrupts =3D <1 10>;
+			power-domains =3D <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+		};
+
+		vc4: gpu {
+			compatible =3D "brcm,bcm2835-vc4";
+		};
+	};
+};
+
+&cpu_thermal {
+	thermal-sensors =3D <&thermal>;
+};
+
+&gpio {
+	i2c_slave_gpio18: i2c_slave_gpio18 {
+		brcm,pins =3D <18 19 20 21>;
+		brcm,function =3D <BCM2835_FSEL_ALT3>;
+	};
+
+	jtag_gpio4: jtag_gpio4 {
+		brcm,pins =3D <4 5 6 12 13>;
+		brcm,function =3D <BCM2835_FSEL_ALT5>;
+	};
+
+	pwm0_gpio12: pwm0_gpio12 {
+		brcm,pins =3D <12>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+	pwm0_gpio18: pwm0_gpio18 {
+		brcm,pins =3D <18>;
+		brcm,function =3D <BCM2835_FSEL_ALT5>;
+	};
+	pwm0_gpio40: pwm0_gpio40 {
+		brcm,pins =3D <40>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio13: pwm1_gpio13 {
+		brcm,pins =3D <13>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio19: pwm1_gpio19 {
+		brcm,pins =3D <19>;
+		brcm,function =3D <BCM2835_FSEL_ALT5>;
+	};
+	pwm1_gpio41: pwm1_gpio41 {
+		brcm,pins =3D <41>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+	pwm1_gpio45: pwm1_gpio45 {
+		brcm,pins =3D <45>;
+		brcm,function =3D <BCM2835_FSEL_ALT0>;
+	};
+};
+
+&i2s {
+	dmas =3D <&dma 2>, <&dma 3>;
+	dma-names =3D "tx", "rx";
+};
+
+&sdhost {
+	dmas =3D <&dma 13>;
+	dma-names =3D "rx-tx";
+};
+
+&spi {
+	dmas =3D <&dma 6>, <&dma 7>;
+	dma-names =3D "tx", "rx";
+};
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm283=
5-rpi.dtsi
index 6c6a7f6..394c8a7 100644
=2D-- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -59,10 +59,6 @@
 	clock-frequency =3D <100000>;
 };

-&i2c2 {
-	status =3D "okay";
-};
-
 &usb {
 	power-domains =3D <&power RPI_POWER_DOMAIN_USB>;
 };
diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dt=
si
index a5c3824..53bf457 100644
=2D-- a/arch/arm/boot/dts/bcm2835.dtsi
+++ b/arch/arm/boot/dts/bcm2835.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible =3D "brcm,bcm2835";
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dt=
si
index c933e84..82d6c46 100644
=2D-- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible =3D "brcm,bcm2836";
diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dt=
si
index beb6c50..9e95fee 100644
=2D-- a/arch/arm/boot/dts/bcm2837.dtsi
+++ b/arch/arm/boot/dts/bcm2837.dtsi
@@ -1,4 +1,5 @@
 #include "bcm283x.dtsi"
+#include "bcm2835-common.dtsi"

 / {
 	compatible =3D "brcm,bcm2837";
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dt=
si
index ae8296f..addf3be 100644
=2D-- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -18,7 +18,6 @@
 / {
 	compatible =3D "brcm,bcm2835";
 	model =3D "BCM2835";
-	interrupt-parent =3D <&intc>;
 	#address-cells =3D <1>;
 	#size-cells =3D <1>;

@@ -36,8 +35,6 @@
 			polling-delay-passive =3D <0>;
 			polling-delay =3D <1000>;

-			thermal-sensors =3D <&thermal>;
-
 			trips {
 				cpu-crit {
 					temperature	=3D <80000>;
@@ -73,68 +70,6 @@
 			interrupts =3D <1 11>;
 		};

-		dma: dma@7e007000 {
-			compatible =3D "brcm,bcm2835-dma";
-			reg =3D <0x7e007000 0xf00>;
-			interrupts =3D <1 16>,
-				     <1 17>,
-				     <1 18>,
-				     <1 19>,
-				     <1 20>,
-				     <1 21>,
-				     <1 22>,
-				     <1 23>,
-				     <1 24>,
-				     <1 25>,
-				     <1 26>,
-				     /* dma channel 11-14 share one irq */
-				     <1 27>,
-				     <1 27>,
-				     <1 27>,
-				     <1 27>,
-				     /* unused shared irq for all channels */
-				     <1 28>;
-			interrupt-names =3D "dma0",
-					  "dma1",
-					  "dma2",
-					  "dma3",
-					  "dma4",
-					  "dma5",
-					  "dma6",
-					  "dma7",
-					  "dma8",
-					  "dma9",
-					  "dma10",
-					  "dma11",
-					  "dma12",
-					  "dma13",
-					  "dma14",
-					  "dma-shared-all";
-			#dma-cells =3D <1>;
-			brcm,dma-channel-mask =3D <0x7f35>;
-		};
-
-		intc: interrupt-controller@7e00b200 {
-			compatible =3D "brcm,bcm2835-armctrl-ic";
-			reg =3D <0x7e00b200 0x200>;
-			interrupt-controller;
-			#interrupt-cells =3D <2>;
-		};
-
-		pm: watchdog@7e100000 {
-			compatible =3D "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
-			#power-domain-cells =3D <1>;
-			#reset-cells =3D <1>;
-			reg =3D <0x7e100000 0x114>,
-			      <0x7e00a000 0x24>;
-			clocks =3D <&clocks BCM2835_CLOCK_V3D>,
-				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
-				 <&clocks BCM2835_CLOCK_H264>,
-				 <&clocks BCM2835_CLOCK_ISP>;
-			clock-names =3D "v3d", "peri_image", "h264", "isp";
-			system-power-controller;
-		};
-
 		clocks: cprman@7e101000 {
 			compatible =3D "brcm,bcm2835-cprman";
 			#clock-cells =3D <1>;
@@ -184,8 +119,7 @@
 			interrupt-controller;
 			#interrupt-cells =3D <2>;

-			/* Defines pin muxing groups according to
-			 * BCM2835-ARM-Peripherals.pdf page 102.
+			/* Defines common pin muxing groups
 			 *
 			 * While each pin can have its mux selected
 			 * for various functions individually, some
@@ -263,15 +197,7 @@
 				brcm,pins =3D <44 45>;
 				brcm,function =3D <BCM2835_FSEL_ALT2>;
 			};
-			i2c_slave_gpio18: i2c_slave_gpio18 {
-				brcm,pins =3D <18 19 20 21>;
-				brcm,function =3D <BCM2835_FSEL_ALT3>;
-			};

-			jtag_gpio4: jtag_gpio4 {
-				brcm,pins =3D <4 5 6 12 13>;
-				brcm,function =3D <BCM2835_FSEL_ALT5>;
-			};
 			jtag_gpio22: jtag_gpio22 {
 				brcm,pins =3D <22 23 24 25 26 27>;
 				brcm,function =3D <BCM2835_FSEL_ALT4>;
@@ -286,35 +212,6 @@
 				brcm,function =3D <BCM2835_FSEL_ALT2>;
 			};

-			pwm0_gpio12: pwm0_gpio12 {
-				brcm,pins =3D <12>;
-				brcm,function =3D <BCM2835_FSEL_ALT0>;
-			};
-			pwm0_gpio18: pwm0_gpio18 {
-				brcm,pins =3D <18>;
-				brcm,function =3D <BCM2835_FSEL_ALT5>;
-			};
-			pwm0_gpio40: pwm0_gpio40 {
-				brcm,pins =3D <40>;
-				brcm,function =3D <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio13: pwm1_gpio13 {
-				brcm,pins =3D <13>;
-				brcm,function =3D <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio19: pwm1_gpio19 {
-				brcm,pins =3D <19>;
-				brcm,function =3D <BCM2835_FSEL_ALT5>;
-			};
-			pwm1_gpio41: pwm1_gpio41 {
-				brcm,pins =3D <41>;
-				brcm,function =3D <BCM2835_FSEL_ALT0>;
-			};
-			pwm1_gpio45: pwm1_gpio45 {
-				brcm,pins =3D <45>;
-				brcm,function =3D <BCM2835_FSEL_ALT0>;
-			};
-
 			sdhost_gpio48: sdhost_gpio48 {
 				brcm,pins =3D <48 49 50 51 52 53>;
 				brcm,function =3D <BCM2835_FSEL_ALT0>;
@@ -410,8 +307,6 @@
 			reg =3D <0x7e202000 0x100>;
 			interrupts =3D <2 24>;
 			clocks =3D <&clocks BCM2835_CLOCK_VPU>;
-			dmas =3D <&dma 13>;
-			dma-names =3D "rx-tx";
 			status =3D "disabled";
 		};

@@ -419,10 +314,6 @@
 			compatible =3D "brcm,bcm2835-i2s";
 			reg =3D <0x7e203000 0x24>;
 			clocks =3D <&clocks BCM2835_CLOCK_PCM>;
-
-			dmas =3D <&dma 2>,
-			       <&dma 3>;
-			dma-names =3D "tx", "rx";
 			status =3D "disabled";
 		};

@@ -431,8 +322,6 @@
 			reg =3D <0x7e204000 0x200>;
 			interrupts =3D <2 22>;
 			clocks =3D <&clocks BCM2835_CLOCK_VPU>;
-			dmas =3D <&dma 6>, <&dma 7>;
-			dma-names =3D "tx", "rx";
 			#address-cells =3D <1>;
 			#size-cells =3D <0>;
 			status =3D "disabled";
@@ -448,18 +337,6 @@
 			status =3D "disabled";
 		};

-		pixelvalve@7e206000 {
-			compatible =3D "brcm,bcm2835-pixelvalve0";
-			reg =3D <0x7e206000 0x100>;
-			interrupts =3D <2 13>; /* pwa0 */
-		};
-
-		pixelvalve@7e207000 {
-			compatible =3D "brcm,bcm2835-pixelvalve1";
-			reg =3D <0x7e207000 0x100>;
-			interrupts =3D <2 14>; /* pwa1 */
-		};
-
 		dpi: dpi@7e208000 {
 			compatible =3D "brcm,bcm2835-dpi";
 			reg =3D <0x7e208000 0x8c>;
@@ -490,14 +367,6 @@

 		};

-		thermal: thermal@7e212000 {
-			compatible =3D "brcm,bcm2835-thermal";
-			reg =3D <0x7e212000 0x8>;
-			clocks =3D <&clocks BCM2835_CLOCK_TSENS>;
-			#thermal-sensor-cells =3D <0>;
-			status =3D "disabled";
-		};
-
 		aux: aux@7e215000 {
 			compatible =3D "brcm,bcm2835-aux";
 			#clock-cells =3D <1>;
@@ -587,16 +456,6 @@
 			status =3D "disabled";
 		};

-		i2c2: i2c@7e805000 {
-			compatible =3D "brcm,bcm2835-i2c";
-			reg =3D <0x7e805000 0x1000>;
-			interrupts =3D <2 21>;
-			clocks =3D <&clocks BCM2835_CLOCK_VPU>;
-			#address-cells =3D <1>;
-			#size-cells =3D <0>;
-			status =3D "disabled";
-		};
-
 		vec: vec@7e806000 {
 			compatible =3D "brcm,bcm2835-vec";
 			reg =3D <0x7e806000 0x1000>;
@@ -605,26 +464,6 @@
 			status =3D "disabled";
 		};

-		pixelvalve@7e807000 {
-			compatible =3D "brcm,bcm2835-pixelvalve2";
-			reg =3D <0x7e807000 0x100>;
-			interrupts =3D <2 10>; /* pixelvalve */
-		};
-
-		hdmi: hdmi@7e902000 {
-			compatible =3D "brcm,bcm2835-hdmi";
-			reg =3D <0x7e902000 0x600>,
-			      <0x7e808000 0x100>;
-			interrupts =3D <2 8>, <2 9>;
-			ddc =3D <&i2c2>;
-			clocks =3D <&clocks BCM2835_PLLH_PIX>,
-				 <&clocks BCM2835_CLOCK_HSM>;
-			clock-names =3D "pixel", "hdmi";
-			dmas =3D <&dma 17>;
-			dma-names =3D "audio-rx";
-			status =3D "disabled";
-		};
-
 		usb: usb@7e980000 {
 			compatible =3D "brcm,bcm2835-usb";
 			reg =3D <0x7e980000 0x10000>;
@@ -636,17 +475,6 @@
 			phys =3D <&usbphy>;
 			phy-names =3D "usb2-phy";
 		};
-
-		v3d: v3d@7ec00000 {
-			compatible =3D "brcm,bcm2835-v3d";
-			reg =3D <0x7ec00000 0x1000>;
-			interrupts =3D <1 10>;
-			power-domains =3D <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
-		};
-
-		vc4: gpu {
-			compatible =3D "brcm,bcm2835-vc4";
-		};
 	};

 	clocks {
=2D-
2.7.4

