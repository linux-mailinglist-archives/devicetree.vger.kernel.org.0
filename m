Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2718C29E4E8
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730134AbgJ2Ht1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:49:27 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51578 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731791AbgJ2HtZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:49:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955020; x=1606547020;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=0SVRAPcQ4hxCJgL+mTQ8tzP1RilMXC68OwzvKAjMNfg=;
        b=tBG7h54Wju05jqBQQPdewj9rg8fEUsnQhd1avoKdhibC+IHnZLH2oUXqms19wwya
        u6rc5tCkWmzWra8Yy2ciUAROpCHVgRNVUk93tRWM3kYCZXF4xUUws/Qbn8WWuxD8
        maCFtAJCPcIHRtZu1A0Q8GZDCiDKpXP/L01AchUBJuc=;
X-AuditID: c39127d2-253ff70000001c25-1e-5f9a694c807a
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 2D.4B.07205.C496A9F5; Thu, 29 Oct 2020 08:03:40 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908033985-690349 ;
          Thu, 29 Oct 2020 08:03:39 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 5/6] ARM: dts: imx6ul: phytec: Add support for optional PEB-AV-02 LCD adapter
Date:   Thu, 29 Oct 2020 08:03:23 +0100
Message-Id: <20201029070324.16057-5-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:39,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:40
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOLMWRmVeSWpSXmKPExsWyRoCBS9cnc1a8wbVZLBbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZTzta2QquBNZ8e/fJ9YGxt3eXYycHBICJhIvDrezdjFycQgJbGWUWHjpPBOEc41R
        on/LYUaQKjYBI4kF0xqZQGwRAWWJUxv72EGKmAXuMEqsXX6LDSQhLJAgsefLBRYQm0VAVWJb
        yw1WEJtXwEZi5ZcWZoh18hIzL31nB7E5BWwlpjTOB+sVAqrpvnOMHaJeUOLkzCcsEPVXGCVa
        P9ZB2EISpxefBZvDLKAtsWzha+YJjAKzkLTMQpJawMi0ilEoNzM5O7UoM1uvIKOyJDVZLyV1
        EyMwcA9PVL+0g7FvjschRiYOxkOMEhzMSiK8LwRnxgvxpiRWVqUW5ccXleakFh9ilOZgURLn
        3cBbEiYkkJ5YkpqdmlqQWgSTZeLglGpgrPrz4uWUZr1gfz8fz/zdW7QzHT/+ficUpLzz7QRP
        +7kb/rUvdjpUlPC0eNGqdbVue+1+b546Xe5sh4SBgPGfXOMezRNR35gla37q+DvwvTPRXWo9
        eeL5Q8nvLa6xKj2onpzi83frNYmdIq8C75xUSyz/Madi7fTLXwNj+Co+vTiSql72cOmiJiWW
        4oxEQy3mouJEADpIXYNKAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PHYTEC PEB-AV-02 adapter adds the capability to connect a parallel
LCD display to the phyBOARD-Segin full featured, either with capacitive
or resistive touch.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---

Notes:
    Changes in v2:
     - Fixed alphabetic order

 .../dts/imx6ul-phytec-segin-ff-rdk-emmc.dts   |   1 +
 .../dts/imx6ul-phytec-segin-ff-rdk-nand.dts   |   1 +
 .../dts/imx6ul-phytec-segin-peb-av-02.dtsi    | 150 ++++++++++++++++++
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi    |  43 -----
 .../dts/imx6ull-phytec-segin-ff-rdk-emmc.dts  |   1 +
 .../dts/imx6ull-phytec-segin-ff-rdk-nand.dts  |   1 +
 .../dts/imx6ull-phytec-segin-peb-av-02.dtsi   |  26 +++
 arch/arm/boot/dts/imx6ull-phytec-segin.dtsi   |   7 -
 8 files changed, 180 insertions(+), 50 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-segin-peb-av-02.dtsi

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts b/arch/a=
rm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
index 4a25122e0da2..cfc744f8fcad 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
@@ -9,6 +9,7 @@
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-segin.dtsi"
 #include "imx6ul-phytec-segin-peb-eval-01.dtsi"
+#include "imx6ul-phytec-segin-peb-av-02.dtsi"
=20
 / {
 	model =3D "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with eMMC";
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts b/arch/a=
rm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index bfda5eda7a25..8296059c0084 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -9,6 +9,7 @@
 #include "imx6ul-phytec-phycore-som.dtsi"
 #include "imx6ul-phytec-segin.dtsi"
 #include "imx6ul-phytec-segin-peb-eval-01.dtsi"
+#include "imx6ul-phytec-segin-peb-av-02.dtsi"
=20
 / {
 	model =3D "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with NAND";
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi b/arch/ar=
m/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
new file mode 100644
index 000000000000..b511c6dec427
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2016, 2020 PHYTEC Messtechnik
+ * Author: Christian Hemp <c.hemp@phytec.de>
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+/ {
+	backlight=5Flcd: backlight-lcd {
+		compatible =3D "pwm-backlight";
+		brightness-levels =3D <0 4 8 16 32 64 128 255>;
+		default-brightness-level =3D <5>;
+		power-supply =3D <&reg=5Fbacklight=5Fen>;
+		pwms =3D <&pwm3 0 5000000>;
+		status =3D "disabled";
+	};
+
+	lcd=5Fpanel: lcd-panel {
+		compatible =3D "edt,etm0700g0edh6";
+		backlight =3D <&backlight=5Flcd>;
+		status =3D "disabled";
+
+		port {
+			lcd=5Fpanel=5Fin: endpoint {
+				remote-endpoint =3D <&lcdif=5Fparallel=5Fout>;
+			};
+		};
+	};
+
+	reg=5Fbacklight=5Fen: regulator-backlight-en {
+		compatible =3D "regulator-fixed";
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fbacklight=5Fen>;
+		regulator-name =3D "backlight-lcd";
+		regulator-min-microvolt =3D <3300000>;
+		regulator-max-microvolt =3D <3300000>;
+		gpio =3D <&gpio1 18 GPIO=5FACTIVE=5FHIGH>;
+		enable-active-high;
+	};
+};
+
+&i2c1 {
+	edt=5Fft5406: touchscreen@38 {
+		compatible =3D "edt,edt-ft5406";
+		reg =3D <0x38>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fedt=5Fft5406>;
+		interrupt-parent =3D <&gpio5>;
+		interrupts =3D <5 IRQ=5FTYPE=5FEDGE=5FFALLING>;
+		wakeup-source;
+		status =3D "disabled";
+	};
+
+	stmpe: touchscreen@44 {
+		compatible =3D "st,stmpe811";
+		reg =3D <0x44>;
+		pinctrl-names =3D "default";
+		pinctrl-0 =3D <&pinctrl=5Fstmpe>;
+		interrupts =3D <3 IRQ=5FTYPE=5FLEVEL=5FLOW>;
+		interrupt-parent =3D <&gpio5>;
+		status =3D "disabled";
+
+		stmpe=5Ftouchscreen {
+			compatible =3D "st,stmpe-ts";
+			st,sample-time =3D <4>;
+			st,mod-12b =3D <1>;
+			st,ref-sel =3D <0>;
+			st,adc-freq =3D <1>;
+			st,ave-ctrl =3D <1>;
+			st,touch-det-delay =3D <2>;
+			st,settling =3D <2>;
+			st,fraction-z =3D <7>;
+			st,i-drive =3D <1>;
+			touchscreen-inverted-x =3D <1>;
+			touchscreen-inverted-y =3D <1>;
+		};
+	};
+};
+
+&lcdif {
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Flcdif=5Fdat>;
+	status =3D "disabled";
+
+	port {
+		lcdif=5Fparallel=5Fout: endpoint {
+			remote-endpoint =3D <&lcd=5Fpanel=5Fin>;
+		};
+	};
+};
+
+&pwm3 {
+	#pwm-cells =3D <2>;
+	pinctrl-names =3D "default";
+	pinctrl-0 =3D <&pinctrl=5Fpwm3>;
+	status =3D "disabled";
+};
+
+&iomuxc {
+	pinctrl=5Fedt=5Fft5406: edtft5406grp {
+		fsl,pins =3D <
+			MX6UL=5FPAD=5FSNVS=5FTAMPER5=5F=5FGPIO5=5FIO05	0x1b0b0
+		>;
+	};
+
+	pinctrl=5Fbacklight=5Fen: bachlightengrp {
+		fsl,pins =3D <
+			MX6UL=5FPAD=5FUART1=5FCTS=5FB=5F=5FGPIO1=5FIO18	0x1b0b0
+		>;
+	};
+
+	pinctrl=5Flcdif=5Fdat: lcdifdatgrp {
+		fsl,pins =3D <
+			MX6UL=5FPAD=5FLCD=5FDATA00=5F=5FLCDIF=5FDATA00  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA01=5F=5FLCDIF=5FDATA01  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA02=5F=5FLCDIF=5FDATA02  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA03=5F=5FLCDIF=5FDATA03  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA04=5F=5FLCDIF=5FDATA04  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA05=5F=5FLCDIF=5FDATA05  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA06=5F=5FLCDIF=5FDATA06  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA07=5F=5FLCDIF=5FDATA07  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA08=5F=5FLCDIF=5FDATA08  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA09=5F=5FLCDIF=5FDATA09  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA10=5F=5FLCDIF=5FDATA10  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA11=5F=5FLCDIF=5FDATA11  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA12=5F=5FLCDIF=5FDATA12  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA13=5F=5FLCDIF=5FDATA13  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA14=5F=5FLCDIF=5FDATA14  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA15=5F=5FLCDIF=5FDATA15  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA16=5F=5FLCDIF=5FDATA16  0x59
+			MX6UL=5FPAD=5FLCD=5FDATA17=5F=5FLCDIF=5FDATA17  0x59
+			MX6UL=5FPAD=5FLCD=5FCLK=5F=5FLCDIF=5FCLK	    0x59
+			MX6UL=5FPAD=5FLCD=5FENABLE=5F=5FLCDIF=5FENABLE  0x59
+			MX6UL=5FPAD=5FLCD=5FHSYNC=5F=5FLCDIF=5FHSYNC    0x59
+			MX6UL=5FPAD=5FLCD=5FVSYNC=5F=5FLCDIF=5FVSYNC    0x59
+		>;
+	};
+
+	pinctrl=5Fpwm3: pwm3grp {
+		fsl,pins =3D <
+			MX6UL=5FPAD=5FGPIO1=5FIO04=5F=5FPWM3=5FOUT	0x0b0b0
+		>;
+	};
+
+	pinctrl=5Fstmpe: stmpegrp {
+		fsl,pins =3D <
+			MX6UL=5FPAD=5FSNVS=5FTAMPER3=5F=5FGPIO5=5FIO03	0x17059
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts=
/imx6ul-phytec-segin.dtsi
index e33d783c3849..b8f66a86a045 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -130,31 +130,6 @@ tlv320: codec@18 {
 		status =3D "disabled";
 	};
=20
-	stmpe: touchscreen@44 {
-		compatible =3D "st,stmpe811";
-		reg =3D <0x44>;
-		interrupts =3D <3 IRQ=5FTYPE=5FLEVEL=5FLOW>;
-		interrupt-parent =3D <&gpio5>;
-		pinctrl-names =3D "default";
-		pinctrl-0 =3D <&pinctrl=5Fstmpe>;
-		status =3D "disabled";
-
-		stmpe=5Ftouchscreen {
-			compatible =3D "st,stmpe-ts";
-			st,sample-time =3D <4>;
-			st,mod-12b =3D <1>;
-			st,ref-sel =3D <0>;
-			st,adc-freq =3D <1>;
-			st,ave-ctrl =3D <1>;
-			st,touch-det-delay =3D <2>;
-			st,settling =3D <2>;
-			st,fraction-z =3D <7>;
-			st,i-drive =3D <1>;
-			touchscreen-inverted-x =3D <1>;
-			touchscreen-inverted-y =3D <1>;
-		};
-	};
-
 	i2c=5Frtc: rtc@68 {
 		pinctrl-names =3D "default";
 		pinctrl-0 =3D <&pinctrl=5Frtc=5Fint>;
@@ -176,12 +151,6 @@ ethphy2: ethernet-phy@2 {
 	};
 };
=20
-&pwm3 {
-	pinctrl-names =3D "default";
-	pinctrl-0 =3D <&pinctrl=5Fpwm3>;
-	status =3D "disabled";
-};
-
 &sai2 {
 	pinctrl-names =3D "default";
 	pinctrl-0 =3D <&pinctrl=5Fsai2>;
@@ -267,12 +236,6 @@ MX6UL=5FPAD=5FSNVS=5FTAMPER2=5F=5FGPIO5=5FIO02	0x17059
 		>;
 	};
=20
-	pinctrl=5Fpwm3: pwm3grp {
-		fsl,pins =3D <
-			MX6UL=5FPAD=5FGPIO1=5FIO04=5F=5FPWM3=5FOUT	0x0b0b0
-		>;
-	};
-
 	pinctrl=5Frtc=5Fint: rtcintgrp {
 		fsl,pins =3D <
 			MX6UL=5FPAD=5FSNVS=5FTAMPER1=5F=5FGPIO5=5FIO01	0x17059
@@ -289,12 +252,6 @@ MX6UL=5FPAD=5FJTAG=5FTMS=5F=5FSAI2=5FMCLK		0x17088
 		>;
 	};
=20
-	pinctrl=5Fstmpe: stmpegrp {
-		fsl,pins =3D <
-			MX6UL=5FPAD=5FSNVS=5FTAMPER3=5F=5FGPIO5=5FIO03	0x17059
-		>;
-	};
-
 	pinctrl=5Fuart5: uart5grp {
 		fsl,pins =3D <
 			MX6UL=5FPAD=5FUART5=5FTX=5FDATA=5F=5FUART5=5FDCE=5FTX	0x1b0b1
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts b/arch/=
arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
index 9648d4ecaf58..8e2a4c5d7765 100644
--- a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-emmc.dts
@@ -9,6 +9,7 @@
 #include "imx6ull-phytec-phycore-som.dtsi"
 #include "imx6ull-phytec-segin.dtsi"
 #include "imx6ull-phytec-segin-peb-eval-01.dtsi"
+#include "imx6ull-phytec-segin-peb-av-02.dtsi"
=20
 / {
 	model =3D "PHYTEC phyBOARD-Segin i.MX6 ULL Full Featured with eMMC";
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts b/arch/=
arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
index 656baf846453..c8d3eff9ed4b 100644
--- a/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-ff-rdk-nand.dts
@@ -9,6 +9,7 @@
 #include "imx6ull-phytec-phycore-som.dtsi"
 #include "imx6ull-phytec-segin.dtsi"
 #include "imx6ull-phytec-segin-peb-eval-01.dtsi"
+#include "imx6ull-phytec-segin-peb-av-02.dtsi"
=20
 / {
 	model =3D "PHYTEC phyBOARD-Segin i.MX6 ULL Full Featured with NAND";
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin-peb-av-02.dtsi b/arch/a=
rm/boot/dts/imx6ull-phytec-segin-peb-av-02.dtsi
new file mode 100644
index 000000000000..06bb7f327780
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin-peb-av-02.dtsi
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright (C) 2018 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include "imx6ul-phytec-segin-peb-av-02.dtsi"
+
+&iomuxc {
+	/delete-node/ edtft5406grp;
+	/delete-node/ stmpegrp;
+};
+
+&iomuxc=5Fsnvs {
+	pinctrl=5Fedt=5Fft5406: edtft5406grp {
+		fsl,pins =3D <
+			MX6ULL=5FPAD=5FSNVS=5FTAMPER5=5F=5FGPIO5=5FIO05	0x1b0b0
+		>;
+	};
+
+	pinctrl=5Fstmpe: stmpegrp {
+		fsl,pins =3D <
+			MX6ULL=5FPAD=5FSNVS=5FTAMPER3=5F=5FGPIO5=5FIO03	0x17059
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi b/arch/arm/boot/dt=
s/imx6ull-phytec-segin.dtsi
index c1595fc785f7..e287a0453b5f 100644
--- a/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ull-phytec-segin.dtsi
@@ -14,7 +14,6 @@ / {
 &iomuxc {
 	/delete-node/ flexcan1engrp;
 	/delete-node/ rtcintgrp;
-	/delete-node/ stmpegrp;
 };
=20
 &iomuxc=5Fsnvs {
@@ -29,10 +28,4 @@ pinctrl=5Frtc=5Fint: rtcintgrp {
 			MX6ULL=5FPAD=5FSNVS=5FTAMPER1=5F=5FGPIO5=5FIO01	0x17059
 		>;
 	};
-
-	pinctrl=5Fstmpe: stmpegrp {
-		fsl,pins =3D <
-			MX6ULL=5FPAD=5FSNVS=5FTAMPER3=5F=5FGPIO5=5FIO03	0x17059
-		>;
-	};
 };
--=20
2.25.1

