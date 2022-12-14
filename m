Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BAFA64C60B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:34:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237713AbiLNJeC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:34:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237841AbiLNJeB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:34:01 -0500
Received: from amity.mint.lgbt (vmi888983.contaboserver.net [149.102.157.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C60CE3
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:33:59 -0800 (PST)
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
        by amity.mint.lgbt (Postfix) with ESMTP id 4NX9D56h0qz1S5Ct
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:33:57 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
        content-transfer-encoding:mime-version:x-mailer:message-id:date
        :subject:to:from; s=dkim; t=1671010436; x=1671874437; bh=+4eI0BR
        yErHUQAcVy7S9osoMtm4H8W2qLOP03Y0Xnss=; b=Bz/dPr0gkJWRNuhET+Flmrf
        A/EC1dhHMzxuQnMHLUFC9XViPUDj6PzLmwEXM3+DtYnUD1TPTNpIv8PnZEddtc8M
        r+C6svXLzQkvhhFv0bKj7nBtJ0aYkPKbulxJrJe83uDnM8/JCdwP3Y9Si2bzlLCr
        hO4G07JpkqyMB+R9qW4iFlns2Evo7p8kMIP8IvHX4naLyQSgoNkcU1LV1BcJx9Dm
        gMY3HCBrrKsUg09mx+NQuVqYiHi4qz09YQYE6k4sm6G4b5gsMreWyKgOSK5QQgBl
        lhjLVnLe0Y1jXpH3rjPDSODkw34iEwUuYSlOQssLuJXQZDJBliGK1CqnDXw22gQ=
        =
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
        by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id VPKUcolaNWAo for <devicetree@vger.kernel.org>;
        Wed, 14 Dec 2022 04:33:56 -0500 (EST)
Received: from dorothy.. (unknown [190.196.92.66])
        by amity.mint.lgbt (Postfix) with ESMTPSA id 4NX9D01JJ5z1S52g;
        Wed, 14 Dec 2022 04:33:51 -0500 (EST)
From:   Lux Aliaga <they@mint.lgbt>
Cc:     Lux Aliaga <they@mint.lgbt>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: sm6125: Initial support for xiaomi-laurel_sprout
Date:   Wed, 14 Dec 2022 06:33:41 -0300
Message-Id: <20221214093342.153479-1-they@mint.lgbt>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit implements support for the Xiaomi Mi A3
(xiaomi-laurel_sprout). Here's a summary on what's working.

- dmesg output to bootloader preconfigured display
- USB
- UFS
- SMD RPM regulators

Signed-off-by: Lux Aliaga <they@mint.lgbt>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../dts/qcom/sm6125-xiaomi-laurel_sprout.dts  | 251 ++++++++++++++++++
 2 files changed, 252 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel_sprout.=
dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom=
/Makefile
index d7669a7cee9f..7b4fbb4cbb84 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -140,6 +140,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+=3D sdm845-shift-axolotl.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sdm850-lenovo-yoga-c630.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sdm850-samsung-w737.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sm6125-sony-xperia-seine-pdx201.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+=3D sm6125-xiaomi-laurel_sprout.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sm6350-sony-xperia-lena-pdx213.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sm7225-fairphone-fp4.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+=3D sm8150-hdk.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel_sprout.dts b/a=
rch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel_sprout.dts
new file mode 100644
index 000000000000..edc5f13bae28
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel_sprout.dts
@@ -0,0 +1,251 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2022, Lux Aliaga <they@mint.lgbt>
+ */
+
+/dts-v1/;
+
+#include "sm6125.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/input/gpio-keys.h>
+
+/ {
+	/* required for bootloader to select correct board */
+	qcom,msm-id =3D <0x18a 0x00>; /* sm6125 v1 */
+	qcom,board-id =3D <0x0b 0x00>;
+
+	model =3D "Xiaomi Mi A3";
+	compatible =3D "xiaomi,laurel_sprout", "qcom,sm6125";
+	chassis-type =3D "handset";
+
+	chosen {
+		#address-cells =3D <2>;
+		#size-cells =3D <2>;
+		ranges;
+
+		framebuffer0: framebuffer@5c000000 {
+			compatible =3D "simple-framebuffer";
+			reg =3D <0 0x5c000000 0 (1560 * 720 * 4)>;
+			width =3D <720>;
+			height =3D <1560>;
+			stride =3D <(720 * 4)>;
+			format =3D "a8r8g8b8";
+		};
+	};
+
+	extcon_usb: extcon-usb {
+		compatible =3D "linux,extcon-usb-gpio";
+		id-gpio =3D <&tlmm 102 GPIO_ACTIVE_HIGH>;
+	};
+
+	reserved_memory {
+		#address-cells =3D <2>;
+		#size-cells =3D <2>;
+		debug_mem: memory@ffb00000 {
+			reg =3D <0x0 0xffb00000 0x0 0xc0000>;
+			no-map;
+		};
+
+		last_log_mem: memory@ffbc0000 {
+			reg =3D <0x0 0xffbc0000 0x0 0x80000>;
+			no-map;
+		};
+
+		pstore_mem: ramoops@ffc00000 {
+			compatible =3D "ramoops";
+			reg =3D <0x0 0xffc40000 0x0 0xc0000>;
+			record-size =3D <0x1000>;
+			console-size =3D <0x40000>;
+			msg-size =3D <0x20000 0x20000>;
+		};
+
+		cmdline_mem: memory@ffd00000 {
+			reg =3D <0x0 0xffd40000 0x0 0x1000>;
+			no-map;
+		};
+	};
+};
+
+&rpm_requests {
+	regulators-0 {
+		compatible =3D "qcom,rpm-pm6125-regulators";
+
+		vreg_s6a: s6 {
+			regulator-min-microvolt =3D <936000>;
+			regulator-max-microvolt =3D <1422000>;
+		};
+
+		vreg_l1a: l1 {
+			regulator-min-microvolt =3D <1200000>;
+			regulator-max-microvolt =3D <1256000>;
+		};
+
+		vreg_l2a: l2 {
+			regulator-min-microvolt =3D <1000000>;
+			regulator-max-microvolt =3D <1056000>;
+		};
+
+		vreg_l3a: l3 {
+			regulator-min-microvolt =3D <1000000>;
+			regulator-max-microvolt =3D <1064000>;
+		};
+
+		vreg_l4a: l4 {
+			regulator-min-microvolt =3D <872000>;
+			regulator-max-microvolt =3D <976000>;
+		};
+
+		vreg_l5a: l5 {
+			regulator-min-microvolt =3D <1648000>;
+			regulator-max-microvolt =3D <3104000>;
+		};
+
+		vreg_l6a: l6 {
+			regulator-min-microvolt =3D <576000>;
+			regulator-max-microvolt =3D <656000>;
+		};
+
+		vreg_l7a: l7 {
+			regulator-min-microvolt =3D <872000>;
+			regulator-max-microvolt =3D <976000>;
+		};
+
+		vreg_l8a: l8 {
+			regulator-min-microvolt =3D <400000>;
+			regulator-max-microvolt =3D <728000>;
+		};
+
+		vreg_l9a: l9 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1896000>;
+		};
+
+		vreg_l10a: l10 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1896000>;
+		};
+
+		vreg_l11a: l11 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1952000>;
+		};
+
+		vreg_l12a: l12 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1996000>;
+		};
+
+		vreg_l13a: l13 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1832000>;
+		};
+
+		vreg_l14a: l14 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1904000>;
+		};
+
+		vreg_l15a: l15 {
+			regulator-min-microvolt =3D <3104000>;
+			regulator-max-microvolt =3D <3232000>;
+		};
+
+		vreg_l16a: l16 {
+			regulator-min-microvolt =3D <1800000>;
+			regulator-max-microvolt =3D <1904000>;
+		};
+
+		vreg_l17a: l17 {
+			regulator-min-microvolt =3D <1248000>;
+			regulator-max-microvolt =3D <1304000>;
+		};
+
+		vreg_l18a: l18 {
+			regulator-min-microvolt =3D <1200000>;
+			regulator-max-microvolt =3D <1264000>;
+		};
+
+		vreg_l19a: l19 {
+			regulator-min-microvolt =3D <1648000>;
+			regulator-max-microvolt =3D <2952000>;
+		};
+
+		vreg_l20a: l20 {
+			regulator-min-microvolt =3D <1648000>;
+			regulator-max-microvolt =3D <2952000>;
+		};
+
+		vreg_l21a: l21 {
+			regulator-min-microvolt =3D <2600000>;
+			regulator-max-microvolt =3D <2856000>;
+		};
+
+		vreg_l22a: l22 {
+			regulator-min-microvolt =3D <2944000>;
+			regulator-max-microvolt =3D <3304000>;
+		};
+
+		vreg_l23a: l23 {
+			regulator-min-microvolt =3D <3000000>;
+			regulator-max-microvolt =3D <3400000>;
+		};
+
+		vreg_l24a: l24 {
+			regulator-min-microvolt =3D <2944000>;
+			regulator-max-microvolt =3D <3304000>;
+		};
+	};
+};
+
+&hsusb_phy1 {
+	status =3D "okay";
+};
+
+
+&sdc2_off_state {
+	sd-cd {
+		pins =3D "gpio98";
+		bias-disable;
+		drive-strength =3D <2>;
+	};
+};
+
+&sdc2_on_state {
+	sd-cd {
+		pins =3D "gpio98";
+		bias-pull-up;
+		drive-strength =3D <2>;
+	};
+};
+
+&ufs_mem_hc {
+	vcc-supply =3D <&vreg_l24a>;
+	vccq2-supply =3D <&vreg_l11a>;
+	vcc-max-microamp =3D <600000>;
+	vccq2-max-microamp =3D <600000>;
+
+	status =3D "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply =3D <&vreg_l4a>;
+	vdda-pll-supply =3D <&vreg_l10a>;
+	vdda-phy-max-microamp =3D <51400>;
+	vdda-pll-max-microamp =3D <14200>;
+	vddp-ref-clk-supply =3D <&vreg_l18a>;
+
+	status =3D "okay";
+};
+
+&tlmm {
+	gpio-reserved-ranges =3D <22 2>, <28 6>;
+};
+
+&usb3 {
+	status =3D "okay";
+};
+
+&usb3_dwc3 {
+	extcon =3D <&extcon_usb>;
+};
--=20
2.38.1

