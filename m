Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6DE32AB1A
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1836194AbhCBUIF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:08:05 -0500
Received: from mail.cognitivepilot.com ([91.218.251.140]:42875 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383237AbhCBLFb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 06:05:31 -0500
X-Greylist: delayed 629 seconds by postgrey-1.27 at vger.kernel.org; Tue, 02 Mar 2021 06:05:28 EST
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4DqYsj1NgsznP12c
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 13:54:17 +0300 (MSK)
Authentication-Results: mail.cognitivepilot.com (amavisd-new);
        dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
        header.d=cognitivepilot.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        cognitivepilot.com; h=content-type:mime-version:user-agent:date
        :message-id:subject:to:from; s=dkim; t=1614682455; x=1617274456;
         bh=SotIZVPJhX+NNB3q6udIAe2AEULRs3GnzXImuPqbVfU=; b=udzyVaGMyQQk
        4v+bp3/f1gwX+quTCTvB8Tz+RtTHgQ19peGrGnnc2D3uQ2+aXW4JbVW+TNQhKTab
        kbo8monKbZYVN861y/sIWElsIPUNcri886k6rCJH31jbFkeTEBUiy47c+cL1DNTa
        PvVrlTuSv/nSIRikkQVl/KJPQJbTKTg=
X-Virus-Scanned: amavisd-new at cognitivepilot.com
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id S4xhLu5cbtdT for <devicetree@vger.kernel.org>;
        Tue,  2 Mar 2021 13:54:15 +0300 (MSK)
Received: from [192.168.3.118] (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTPSA id 4DqYsg4G2fznY37V;
        Tue,  2 Mar 2021 13:54:15 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Subject: [draft2 PATCH] ARM: dts: sun8i: r40: add devicetree for
 FETA40i-C/OKA40i-C
Message-ID: <c4c13d63-e319-48b5-17e6-26d9967aa66f@cognitivepilot.com>
Date:   Tue, 2 Mar 2021 13:54:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kESZAWtLHy8j4xCXZhhuoJfcbhnm5LnLD"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--kESZAWtLHy8j4xCXZhhuoJfcbhnm5LnLD
Content-Type: multipart/mixed; boundary="AtiGR84BiT5U1solkK8OCe5vv8wgfo8T1";
 protected-headers="v1"
From: Ivan Uvarov <i.uvarov@cognitivepilot.com>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Message-ID: <c4c13d63-e319-48b5-17e6-26d9967aa66f@cognitivepilot.com>
Subject: [draft2 PATCH] ARM: dts: sun8i: r40: add devicetree for
 FETA40i-C/OKA40i-C

--AtiGR84BiT5U1solkK8OCe5vv8wgfo8T1
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

From: Ivan Uvarov <i.uvarov@cognitivepilot.com>

This patch adds support for the Forlinx FETA40i-C SoM and OKA40i-C
devboard[1] that is based on it. The devicetree is split into a .dtsi=20
which (hopefully) corresponds to the functions of the SoM itself and=20
a .dts for the devboard.

[1]:https://linux-sunxi.org/Forlinx_OKA40i-C

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
---
 arch/arm/boot/dts/Makefile               |   1 +
 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi |  68 +++++++
 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts | 238 +++++++++++++++++++++++
 3 files changed, 307 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-r40-oka40i-c.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 8e5d4ab4e7..88aae9de95 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1222,6 +1222,7 @@ dtb-$(CONFIG_MACH_SUN8I) +=3D \
 	sun8i-r16-nintendo-super-nes-classic.dtb \
 	sun8i-r16-parrot.dtb \
 	sun8i-r40-bananapi-m2-ultra.dtb \
+	sun8i-r40-oka40i-c.dtb \
 	sun8i-s3-elimo-initium.dtb \
 	sun8i-s3-lichee-zero-plus.dtb \
 	sun8i-s3-pinecube.dtb \
diff --git a/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi b/arch/arm/boot/dts=
/sun8i-r40-feta40i.dtsi
new file mode 100644
index 0000000000..edfb846db1
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-r40-feta40i.dtsi
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
+// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
+//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
+//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+
+#include "sun8i-r40.dtsi"
+
+
+&i2c0 {
+	status =3D3D "okay";
+
+	axp22x: pmic@34 {
+		compatible =3D3D "x-powers,axp221";
+		reg =3D3D <0x34>;
+		interrupt-parent =3D3D <&nmi_intc>;
+		interrupts =3D3D <0 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+#include "axp22x.dtsi"
+
+&mmc2 {
+	vmmc-supply =3D3D <&reg_dcdc1>;
+	vqmmc-supply =3D3D <&reg_aldo2>;
+	bus-width =3D3D <8>;
+  non-removable;
+	status =3D3D "okay";
+};
+
+
+&pio {
+	pinctrl-names =3D3D "default";
+	pinctrl-0 =3D3D <&clk_out_a_pin>;
+	vcc-pa-supply =3D3D <&reg_dcdc1>;
+	vcc-pc-supply =3D3D <&reg_aldo2>;
+	vcc-pd-supply =3D3D <&reg_dcdc1>;
+	vcc-pf-supply =3D3D <&reg_dldo4>;
+	vcc-pg-supply =3D3D <&reg_dldo1>;
+};
+
+&reg_aldo2 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <1800000>;
+	regulator-max-microvolt =3D3D <2500000>;
+	regulator-name =3D3D "vcc-pa";
+};//2500000uV reported by kernel
+
+&reg_dcdc1 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <3300000>;
+	regulator-max-microvolt =3D3D <3300000>;
+	regulator-name =3D3D "vcc-3v3";
+};
+
+
+//I don't know whether these really belong here
+&reg_dldo1 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <3300000>;
+	regulator-max-microvolt =3D3D <3300000>;
+	regulator-name =3D3D "vcc-wifi-io";
+};
+
+&reg_dldo4 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <2500000>;
+	regulator-max-microvolt =3D3D <2500000>;
+	regulator-name =3D3D "vdd2v5-sata";
diff --git a/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts b/arch/arm/boot/dts=
/sun8i-r40-oka40i-c.dts
new file mode 100644
index 0000000000..7e47cf633e
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-r40-oka40i-c.dts
@@ -0,0 +1,238 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+// Copyright (C) 2021 Ivan Uvarov <i.uvarov@cognitivepilot.com>
+// Based on the sun8i-r40-bananapi-m2-ultra.dts, which is:
+//  Copyright (C) 2017 Chen-Yu Tsai <wens@csie.org>
+//  Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+
+/dts-v1/;
+#include "sun8i-r40-feta40i.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model =3D3D "Forlinx OKA40i-C";
+	compatible =3D3D "forlinx,oka40i-c", "allwinner,sun8i-r40";
+
+	aliases {
+		ethernet0 =3D3D &gmac;
+		serial0 =3D3D &uart0;
+	};
+
+	chosen {
+		stdout-path =3D3D "serial0:115200n8";
+	};
+
+	connector {
+		compatible =3D3D "hdmi-connector";
+		type =3D3D "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint =3D3D <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds {
+		compatible =3D3D "gpio-leds";
+
+		user-led-5 {
+			label =3D3D "oka40i:led5:user";
+			gpios =3D3D <&pio 7 26 GPIO_ACTIVE_LOW>;
+		};
+
+		user-led-6 {
+			label =3D3D "oka40i:led6:user";
+			gpios =3D3D <&pio 8 15 GPIO_ACTIVE_LOW>;
+		};
+
+	};
+
+	reg_vcc5v0: vcc5v0 {
+		compatible =3D3D "regulator-fixed";
+		regulator-name =3D3D "vcc5v0";
+		regulator-min-microvolt =3D3D <5000000>;
+		regulator-max-microvolt =3D3D <5000000>;
+		//gpio =3D3D <&pio 7 23 GPIO_ACTIVE_HIGH>; // PH23
+		//enable-active-high;
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible =3D3D "mmc-pwrseq-simple";
+		reset-gpios =3D3D <&pio 1 10 GPIO_ACTIVE_LOW>; // PB10 WIFI_EN
+		clocks =3D3D <&ccu CLK_OUTA>;
+		clock-names =3D3D "ext_clock";
+	};
+};
+
+&ahci {
+	ahci-supply =3D3D <&reg_dldo4>;
+	phy-supply =3D3D <&reg_eldo2>;
+	status =3D3D "okay";
+};
+
+&de {
+	status =3D3D "okay";
+};
+
+&ehci1 {
+	status =3D3D "okay";
+};
+
+&ehci2 {
+	status =3D3D "okay";
+};
+
+&gmac {
+	pinctrl-names =3D3D "default";
+	pinctrl-0 =3D3D <&gmac_rgmii_pins>;
+	phy-handle =3D3D <&phy1>;
+	phy-mode =3D3D "rgmii-id";
+	phy-supply =3D3D <&reg_dcdc1>;
+	status =3D3D "okay";
+};
+
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		compatible =3D3D "ethernet-phy-ieee802.3-c22";
+		reg =3D3D <1>;
+	};
+};
+
+&hdmi {
+	status =3D3D "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint =3D3D <&hdmi_con_in>;
+	};
+};
+
+
+&i2c2 {
+	status =3D3D "okay";
+};
+
+
+&mmc0 {
+	vmmc-supply =3D3D <&reg_dcdc1>;
+	vqmmc-supply =3D3D <&reg_dcdc1>;
+	bus-width =3D3D <4>;
+	cd-gpios =3D3D <&pio 8 11 GPIO_ACTIVE_LOW>; // PI11
+	status =3D3D "okay";
+};
+
+&mmc1 {
+	vmmc-supply =3D3D <&reg_dcdc1>;
+	vqmmc-supply =3D3D <&reg_dcdc1>;
+	mmc-pwrseq =3D3D <&wifi_pwrseq>;
+	bus-width =3D3D <4>;
+	status =3D3D "okay";
+};
+
+&ohci1 {
+	status =3D3D "okay";
+};
+
+&ohci2 {
+	status =3D3D "okay";
+};
+
+&reg_aldo3 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <3000000>;
+	regulator-max-microvolt =3D3D <3000000>;
+	regulator-name =3D3D "avcc";
+};
+
+&reg_dc1sw {
+	regulator-min-microvolt =3D3D <3300000>;
+	regulator-max-microvolt =3D3D <3300000>;
+	regulator-name =3D3D "vcc-lcd";
+};
+
+&reg_dcdc2 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <1100000>;
+	regulator-max-microvolt =3D3D <1160000>;
+	regulator-name =3D3D "vdd-cpu";
+};//1100000uV reported by kernel
+
+&reg_dcdc3 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <1100000>;
+	regulator-max-microvolt =3D3D <1200000>;
+	regulator-name =3D3D "vdd-sys";
+};//1100000uV reported by kernel
+
+
+&reg_dcdc5 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <1500000>;
+	regulator-max-microvolt =3D3D <1500000>;
+	regulator-name =3D3D "vcc-dram";
+};
+
+&reg_dldo2 {
+	// regulator-always-on;
+	regulator-min-microvolt =3D3D <3300000>;
+	regulator-max-microvolt =3D3D <3300000>;
+	regulator-name =3D3D "vcc-wifi";
+};
+
+&reg_dldo3 { // possibly unneeded
+	// regulator-always-on;
+	regulator-min-microvolt =3D3D <3300000>;
+	regulator-max-microvolt =3D3D <3300000>;
+	regulator-name =3D3D "vcc-wifi-2";
+};
+
+&reg_eldo2 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <1200000>;
+	regulator-max-microvolt =3D3D <1200000>;
+	regulator-name =3D3D "vdd1v2-sata";
+};
+
+&reg_eldo3 {
+	regulator-always-on;
+	regulator-min-microvolt =3D3D <2800000>;
+	regulator-max-microvolt =3D3D <2800000>;
+	regulator-name =3D3D "vcc-pe";
+};
+
+&tcon_tv0 {
+	status =3D3D "okay";
+};
+
+&uart0 {
+	pinctrl-names =3D3D "default";
+	pinctrl-0 =3D3D <&uart0_pb_pins>;
+	status =3D3D "okay";
+};
+
+&uart3 {
+	pinctrl-names =3D3D "default";
+	pinctrl-0 =3D3D <&uart3_pg_pins>, <&uart3_rts_cts_pg_pins>;
+	uart-has-rtscts;
+	status =3D3D "okay";
+
+	bluetooth {
+		compatible =3D3D "brcm,bcm43438-bt";
+		clocks =3D3D <&ccu CLK_OUTA>;
+		clock-names =3D3D "lpo";
+		vbat-supply =3D3D <&reg_dldo2>;
+		vddio-supply =3D3D <&reg_dldo1>;
+		device-wakeup-gpios =3D3D <&pio 6 11 GPIO_ACTIVE_HIGH>; /* PG11 */
+		/* TODO host wake line connected to PMIC GPIO pins */
+		shutdown-gpios =3D3D <&pio 7 12 GPIO_ACTIVE_HIGH>; /* PH12 */
+		max-speed =3D3D <1500000>;
+	};
+};
+
+&usbphy {
+	usb1_vbus-supply =3D3D <&reg_vcc5v0>;
+	usb2_vbus-supply =3D3D <&reg_vcc5v0>;
+	status =3D3D "okay";
+};
--=20
2.25.1




--AtiGR84BiT5U1solkK8OCe5vv8wgfo8T1--

--kESZAWtLHy8j4xCXZhhuoJfcbhnm5LnLD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEE5IiZk/imGrpdzUidYclaKunLjxIFAmA+GVcFAwAAAAAACgkQYclaKunLjxJm
pgv+KVMSNbGdS+lvPWe7HQC4StX5O99gRC/ROfMrJtXTueH3sV3G4veTzd7B7Spisfqhaei32Ft0
OStuS3D1Y/uFFDW6isUl/L3Nm2wLKRuSzUTDhv+dVugVxLWloUFpwR1tdPpkoCFjW6/tVMEEioEz
TLp33uur9QxheM6/YxJkxy9p94t73zh9sJz4vkUHRAv2SxwsaTK+moKdS5vfFaksl7rJeoAEg7J9
m2RVHyhYutJf9jk1cOJijng7qX4w35aKigy1rmWwCSKZ8PWkwCo/jijXV28iNM2gxPw4bl64pMCM
oNLzStEhGRx3UDVdvF4/SaaC/YpIQQHU1FMAxCF/ncGDLrTbFNfafubrk4cC/R7NZGeAf6F37r+5
17oL9mQ4ceDiBiFYeBJd/jeODH5iadLtv4x70mj/BBR79SA44P076pzYXBeGkQNRXLCfkJ9EAQH3
/zaN6rZv/hL2CiMOlYET/YMoZxSTYtLxVdm02BODgOH0D1AaXwrI7pimuf4/
=ASA3
-----END PGP SIGNATURE-----

--kESZAWtLHy8j4xCXZhhuoJfcbhnm5LnLD--
