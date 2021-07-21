Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79EDB3D10A0
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238151AbhGUNYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:42 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:44461 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238104AbhGUNYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:41 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id 053445C0227;
        Wed, 21 Jul 2021 10:05:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 21 Jul 2021 10:05:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=SvLPCg20mvURT
        pIh5BRHphp0RU4/yoCcVyzC86PBhS0=; b=MWPdhtombRcTe+JusqV61N0qNBXBa
        ifzAr9HgFSsTal/H6QAJ2q6+4x6Gl0Tu3rQP3pmE8iIzLxkqsdn5+CrR9JOB8fCP
        P2CjU5oR4MHtxZCSSWp9sF0uAU4DOI/CQBvAfJgKAWLvSiD42qtjXSHiu2cHIPPH
        WFoMHbSuKqFxgcWPMx4A4b/TWuNHwgbkDNglzMeMd2mTAFsy88lPXLf+AqfoX+dl
        gPY+kQ+PMiKF3Aj+zNF9HDlmEqxQEgKsaaSqUcP9qFPZzCg1dV90JtZ403DW6hmD
        lnNrkUIYDGMuQFgxrJ0T+ASG849bYmU4tKx/jV8T6SZSgTTfqgLrqhyOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=SvLPCg20mvURTpIh5BRHphp0RU4/yoCcVyzC86PBhS0=; b=ZWvyLHJ3
        28BwPnW6O4T+1HBjLFfJSFuVnREhH355ZtcSVCifkueb/rXVgTAofxFrSdwWUc0x
        dKX6uHe8mOpVlmSSiZuYyRZhZ5Vc2ezQFyvFWqsWjLUZhCvfOYlDh7pCLu++Ussu
        VbekN3S1VLkxknvKz9GEXlF+OgFFxM1Pd1czof6ZMRoDQfQxHo/2DTk7FqQb18DU
        Z/BokX4EuclQb0HDCWXj8J4dTO7CMV6zbdw1p7XFB0G5HrFwpvCdtGF7KGYnmee/
        vNifXx9eJvsDJsjfA8wJoYIxbovms9A5HEyCnql/yTZmN+BJUMU+DmoIrk8G87Ve
        GSgD1pS1/9PwlA==
X-ME-Sender: <xms:nSn4YK3WmobwkH9hDCPgswPOtCfcnVikLJBkJxCcOa0FPbIEhyQzHA>
    <xme:nSn4YNHxPqKXbrCs-gayv84MNsQ0qOzquzU_bzKpTcGZAYYvDB3Abmp31qKmAdg77
    aq7Z_XQuot5Z2713Xw>
X-ME-Received: <xmr:nSn4YC4UG8TdnmRk9ZK3aIJ7jjNfwfewOkZCtPxpGjV8eI_q13E9lcTt-Z9S-adr1vIBQ-tlcTLExGqQV_zz3lMQIpVJfIelVQBd>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nSn4YL1X9JbmOjOd5Sw--5RjguCoHW8q3I8QZ5_4_bxUcxUv6ykWiw>
    <xmx:nSn4YNHtXNG7jdkWtX0UnB6I_Y2UL0nYCTvoRHrlKwRbSXWczfiBXA>
    <xmx:nSn4YE-kzZ02R8m2BIroQjGFbNoZEb4wobfB1UPEAAtUN5xq-XX_Gw>
    <xmx:nSn4YE2S_JSRnPGiWdIHRkg_TJpvCXiaYlaRD6psU1aW2g9h5Y2B2w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:17 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 24/54] dt-bindings: mfd: Convert X-Powers AXP binding to a schema
Date:   Wed, 21 Jul 2021 16:03:54 +0200
Message-Id: <20210721140424.725744-25-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The X-Powers AXP PMICs are supported by Linux thanks to its device tree
binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/mfd/axp20x.txt        | 272 -------------
 .../bindings/mfd/x-powers,axp152.yaml         | 381 ++++++++++++++++++
 2 files changed, 381 insertions(+), 272 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml

diff --git a/Documentation/devicetree/bindings/mfd/axp20x.txt b/Documentation/devicetree/bindings/mfd/axp20x.txt
deleted file mode 100644
index 4991a6415796..000000000000
--- a/Documentation/devicetree/bindings/mfd/axp20x.txt
+++ /dev/null
@@ -1,272 +0,0 @@
-AXP family PMIC device tree bindings
-
-The axp20x family current members :
-axp152 (X-Powers)
-axp202 (X-Powers)
-axp209 (X-Powers)
-axp221 (X-Powers)
-axp223 (X-Powers)
-axp803 (X-Powers)
-axp806 (X-Powers)
-axp809 (X-Powers)
-axp813 (X-Powers)
-
-The AXP813 is 2 chips packaged into 1. The 2 chips do not share anything
-other than the packaging. Pins are routed separately. As such they should
-be treated as separate entities. The other half is an AC100 RTC/codec
-combo chip. Please see ./ac100.txt for its bindings.
-
-Required properties:
-- compatible: should be one of:
-    * "x-powers,axp152"
-    * "x-powers,axp202"
-    * "x-powers,axp209"
-    * "x-powers,axp221"
-    * "x-powers,axp223"
-    * "x-powers,axp803"
-    * "x-powers,axp806"
-    * "x-powers,axp805", "x-powers,axp806"
-    * "x-powers,axp809"
-    * "x-powers,axp813"
-- reg: The I2C slave address or RSB hardware address for the AXP chip
-- interrupts: SoC NMI / GPIO interrupt connected to the PMIC's IRQ pin
-- interrupt-controller: The PMIC has its own internal IRQs
-- #interrupt-cells: Should be set to 1
-
-Supported common regulator properties, see ../regulator/regulator.txt for
-more information:
-- regulator-ramp-delay: sets the ramp up delay in uV/us
-			AXP20x/DCDC2: 1600, 800
-			AXP20x/LDO3:  1600, 800
-- regulator-soft-start:	enable the output at the lowest possible voltage and
-			only then set the desired voltage
-			AXP20x/LDO3: software-based implementation
-
-Optional properties:
-- x-powers,dcdc-freq: defines the work frequency of DC-DC in KHz
-		      AXP152/20X: range:  750-1875, Default: 1.5 MHz
-		      AXP22X/8XX: range: 1800-4050, Default: 3   MHz
-
-- x-powers,drive-vbus-en: boolean, set this when the N_VBUSEN pin is
-			  used as an output pin to control an external
-			  regulator to drive the OTG VBus, rather then
-			  as an input pin which signals whether the
-			  board is driving OTG VBus or not.
-			  (axp221 / axp223 / axp803/ axp813 only)
-
-- x-powers,self-working-mode and
-  x-powers,master-mode: Boolean (axp806 only). Set either of these when the
-			PMIC is wired for self-working mode or master mode.
-			If neither is set then slave mode is assumed.
-			This corresponds to how the MODESET pin is wired.
-
-- <input>-supply: a phandle to the regulator supply node. May be omitted if
-		  inputs are unregulated, such as using the IPSOUT output
-		  from the PMIC.
-
-- regulators: A node that houses a sub-node for each regulator. Regulators
-	      not used but preferred to be managed by the OS should be
-	      listed as well.
-	      See Documentation/devicetree/bindings/regulator/regulator.txt
-	      for more information on standard regulator bindings.
-
-Optional properties for DCDC regulators:
-- x-powers,dcdc-workmode: 1 for PWM mode, 0 for AUTO (PWM/PFM) mode
-			  Default: Current hardware setting
-			  The DCDC regulators work in a mixed PWM/PFM mode,
-			  using PFM under light loads and switching to PWM
-			  for heavier loads. Forcing PWM mode trades efficiency
-			  under light loads for lower output noise. This
-			  probably makes sense for HiFi audio related
-			  applications that aren't battery constrained.
-
-AXP202/AXP209 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDC2		: DC-DC buck	: vin2-supply
-DCDC3		: DC-DC	buck	: vin3-supply
-LDO1		: LDO		: acin-supply		: always on
-LDO2		: LDO		: ldo24in-supply	: shared supply
-LDO3		: LDO		: ldo3in-supply
-LDO4		: LDO		: ldo24in-supply	: shared supply
-LDO5		: LDO		: ldo5in-supply
-
-AXP221/AXP223 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDC1		: DC-DC buck	: vin1-supply
-DCDC2		: DC-DC buck	: vin2-supply
-DCDC3		: DC-DC	buck	: vin3-supply
-DCDC4		: DC-DC	buck	: vin4-supply
-DCDC5		: DC-DC	buck	: vin5-supply
-DC1SW		: On/Off Switch	:			: DCDC1 secondary output
-DC5LDO		: LDO		:			: input from DCDC5
-ALDO1		: LDO		: aldoin-supply		: shared supply
-ALDO2		: LDO		: aldoin-supply		: shared supply
-ALDO3		: LDO		: aldoin-supply		: shared supply
-DLDO1		: LDO		: dldoin-supply		: shared supply
-DLDO2		: LDO		: dldoin-supply		: shared supply
-DLDO3		: LDO		: dldoin-supply		: shared supply
-DLDO4		: LDO		: dldoin-supply		: shared supply
-ELDO1		: LDO		: eldoin-supply		: shared supply
-ELDO2		: LDO		: eldoin-supply		: shared supply
-ELDO3		: LDO		: eldoin-supply		: shared supply
-LDO_IO0		: LDO		: ips-supply		: GPIO 0
-LDO_IO1		: LDO		: ips-supply		: GPIO 1
-RTC_LDO		: LDO		: ips-supply		: always on
-DRIVEVBUS	: Enable output	: drivevbus-supply	: external regulator
-
-AXP803 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDC1		: DC-DC buck	: vin1-supply
-DCDC2		: DC-DC buck	: vin2-supply		: poly-phase capable
-DCDC3		: DC-DC	buck	: vin3-supply		: poly-phase capable
-DCDC4		: DC-DC	buck	: vin4-supply
-DCDC5		: DC-DC	buck	: vin5-supply		: poly-phase capable
-DCDC6		: DC-DC	buck	: vin6-supply		: poly-phase capable
-DC1SW		: On/Off Switch	:			: DCDC1 secondary output
-ALDO1		: LDO		: aldoin-supply		: shared supply
-ALDO2		: LDO		: aldoin-supply		: shared supply
-ALDO3		: LDO		: aldoin-supply		: shared supply
-DLDO1		: LDO		: dldoin-supply		: shared supply
-DLDO2		: LDO		: dldoin-supply		: shared supply
-DLDO3		: LDO		: dldoin-supply		: shared supply
-DLDO4		: LDO		: dldoin-supply		: shared supply
-ELDO1		: LDO		: eldoin-supply		: shared supply
-ELDO2		: LDO		: eldoin-supply		: shared supply
-ELDO3		: LDO		: eldoin-supply		: shared supply
-FLDO1		: LDO		: fldoin-supply		: shared supply
-FLDO2		: LDO		: fldoin-supply		: shared supply
-LDO_IO0		: LDO		: ips-supply		: GPIO 0
-LDO_IO1		: LDO		: ips-supply		: GPIO 1
-RTC_LDO		: LDO		: ips-supply		: always on
-DRIVEVBUS	: Enable output	: drivevbus-supply	: external regulator
-
-AXP806 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDCA		: DC-DC buck	: vina-supply		: poly-phase capable
-DCDCB		: DC-DC buck	: vinb-supply		: poly-phase capable
-DCDCC		: DC-DC	buck	: vinc-supply		: poly-phase capable
-DCDCD		: DC-DC	buck	: vind-supply		: poly-phase capable
-DCDCE		: DC-DC	buck	: vine-supply		: poly-phase capable
-ALDO1		: LDO		: aldoin-supply		: shared supply
-ALDO2		: LDO		: aldoin-supply		: shared supply
-ALDO3		: LDO		: aldoin-supply		: shared supply
-BLDO1		: LDO		: bldoin-supply		: shared supply
-BLDO2		: LDO		: bldoin-supply		: shared supply
-BLDO3		: LDO		: bldoin-supply		: shared supply
-BLDO4		: LDO		: bldoin-supply		: shared supply
-CLDO1		: LDO		: cldoin-supply		: shared supply
-CLDO2		: LDO		: cldoin-supply		: shared supply
-CLDO3		: LDO		: cldoin-supply		: shared supply
-SW		: On/Off Switch : swin-supply
-
-Additionally, the AXP806 DC-DC regulators support poly-phase arrangements
-for higher output current. The possible groupings are: A+B, A+B+C, D+E.
-
-AXP809 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDC1		: DC-DC buck	: vin1-supply
-DCDC2		: DC-DC buck	: vin2-supply
-DCDC3		: DC-DC	buck	: vin3-supply
-DCDC4		: DC-DC	buck	: vin4-supply
-DCDC5		: DC-DC	buck	: vin5-supply
-DC1SW		: On/Off Switch	:			: DCDC1 secondary output
-DC5LDO		: LDO		:			: input from DCDC5
-ALDO1		: LDO		: aldoin-supply		: shared supply
-ALDO2		: LDO		: aldoin-supply		: shared supply
-ALDO3		: LDO		: aldoin-supply		: shared supply
-DLDO1		: LDO		: dldoin-supply		: shared supply
-DLDO2		: LDO		: dldoin-supply		: shared supply
-ELDO1		: LDO		: eldoin-supply		: shared supply
-ELDO2		: LDO		: eldoin-supply		: shared supply
-ELDO3		: LDO		: eldoin-supply		: shared supply
-LDO_IO0		: LDO		: ips-supply		: GPIO 0
-LDO_IO1		: LDO		: ips-supply		: GPIO 1
-RTC_LDO		: LDO		: ips-supply		: always on
-SW		: On/Off Switch : swin-supply
-
-AXP813 regulators, type, and corresponding input supply names:
-
-Regulator	  Type		  Supply Name		  Notes
----------	  ----		  -----------		  -----
-DCDC1		: DC-DC buck	: vin1-supply
-DCDC2		: DC-DC buck	: vin2-supply		: poly-phase capable
-DCDC3		: DC-DC	buck	: vin3-supply		: poly-phase capable
-DCDC4		: DC-DC	buck	: vin4-supply
-DCDC5		: DC-DC	buck	: vin5-supply		: poly-phase capable
-DCDC6		: DC-DC	buck	: vin6-supply		: poly-phase capable
-DCDC7		: DC-DC	buck	: vin7-supply
-ALDO1		: LDO		: aldoin-supply		: shared supply
-ALDO2		: LDO		: aldoin-supply		: shared supply
-ALDO3		: LDO		: aldoin-supply		: shared supply
-DLDO1		: LDO		: dldoin-supply		: shared supply
-DLDO2		: LDO		: dldoin-supply		: shared supply
-DLDO3		: LDO		: dldoin-supply		: shared supply
-DLDO4		: LDO		: dldoin-supply		: shared supply
-ELDO1		: LDO		: eldoin-supply		: shared supply
-ELDO2		: LDO		: eldoin-supply		: shared supply
-ELDO3		: LDO		: eldoin-supply		: shared supply
-FLDO1		: LDO		: fldoin-supply		: shared supply
-FLDO2		: LDO		: fldoin-supply		: shared supply
-FLDO3		: LDO		: fldoin-supply		: shared supply
-LDO_IO0		: LDO		: ips-supply		: GPIO 0
-LDO_IO1		: LDO		: ips-supply		: GPIO 1
-RTC_LDO		: LDO		: ips-supply		: always on
-SW		: On/Off Switch : swin-supply
-DRIVEVBUS	: Enable output	: drivevbus-supply	: external regulator
-
-Example:
-
-axp209: pmic@34 {
-	compatible = "x-powers,axp209";
-	reg = <0x34>;
-	interrupt-parent = <&nmi_intc>;
-	interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-	interrupt-controller;
-	#interrupt-cells = <1>;
-
-	regulators {
-		x-powers,dcdc-freq = <1500>;
-
-		vdd_cpu: dcdc2 {
-			regulator-always-on;
-			regulator-min-microvolt = <1000000>;
-			regulator-max-microvolt = <1450000>;
-			regulator-name = "vdd-cpu";
-		};
-
-		vdd_int_dll: dcdc3 {
-			regulator-always-on;
-			regulator-min-microvolt = <1000000>;
-			regulator-max-microvolt = <1400000>;
-			regulator-name = "vdd-int-dll";
-		};
-
-		vdd_rtc: ldo1 {
-			regulator-always-on;
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1400000>;
-			regulator-name = "vdd-rtc";
-		};
-
-		avcc: ldo2 {
-			regulator-always-on;
-			regulator-min-microvolt = <2700000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-name = "avcc";
-		};
-
-		ldo3 {
-			/* unused but preferred to be managed by OS */
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
new file mode 100644
index 000000000000..e2804965ba0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
@@ -0,0 +1,381 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/x-powers,axp152.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AXP PMIC Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - x-powers,axp152
+              - x-powers,axp202
+              - x-powers,axp209
+
+    then:
+      properties:
+        regulators:
+          properties:
+            x-powers,dcdc-freq:
+              minimum: 750
+              maximum: 1875
+              default: 1500
+
+    else:
+      properties:
+        regulators:
+          properties:
+            x-powers,dcdc-freq:
+              minimum: 1800
+              maximum: 4050
+              default: 3000
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - x-powers,axp152
+              - x-powers,axp202
+              - x-powers,axp209
+
+    then:
+      not:
+        required:
+          - x-powers,drive-vbus-en
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: x-powers,axp806
+
+    then:
+      allOf:
+        - not:
+            required:
+              - x-powers,self-working-mode
+
+        - not:
+            required:
+              - x-powers,master-mode
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - x-powers,axp152
+          - x-powers,axp202
+          - x-powers,axp209
+          - x-powers,axp221
+          - x-powers,axp223
+          - x-powers,axp803
+          - x-powers,axp806
+          - x-powers,axp809
+          - x-powers,axp813
+      - items:
+          - const: x-powers,axp805
+          - const: x-powers,axp806
+      - items:
+          - const: x-powers,axp818
+          - const: x-powers,axp813
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 1
+
+  x-powers,drive-vbus-en:
+    type: boolean
+    description: >
+      Set this when the N_VBUSEN pin is used as an output pin to control an
+      external regulator to drive the OTG VBus, rather then as an input pin
+      which signals whether the board is driving OTG VBus or not.
+
+  x-powers,self-working-mode:
+    type: boolean
+    description: >
+      Set this when the PMIC is wired for self-working mode through the MODESET
+      pin.
+
+  x-powers,master-mode:
+    type: boolean
+    description: >
+      Set this when the PMIC is wired for master mode through the MODESET pin.
+
+  vin1-supply:
+    description: >
+      DCDC1 power supply node, if present.
+
+  vin2-supply:
+    description: >
+      DCDC2 power supply node, if present.
+
+  vin3-supply:
+    description: >
+      DCDC3 power supply node, if present.
+
+  vin4-supply:
+    description: >
+      DCDC4 power supply node, if present.
+
+  vin5-supply:
+    description: >
+      DCDC5 power supply node, if present.
+
+  vin6-supply:
+    description: >
+      DCDC6 power supply node, if present.
+
+  vin7-supply:
+    description: >
+      DCDC7 power supply node, if present.
+
+  vina-supply:
+    description: >
+      DCDCA power supply node, if present.
+
+  vinb-supply:
+    description: >
+      DCDCB power supply node, if present.
+
+  vinc-supply:
+    description: >
+      DCDCC power supply node, if present.
+
+  vind-supply:
+    description: >
+      DCDCD power supply node, if present.
+
+  vine-supply:
+    description: >
+      DCDCE power supply node, if present.
+
+  acin-supply:
+    description: >
+      LDO1 power supply node, if present.
+
+  ldo24in-supply:
+    description: >
+      LDO2 and LDO4 power supply node, if present.
+
+  ldo3in-supply:
+    description: >
+      LDO3 power supply node, if present.
+
+  ldo5in-supply:
+    description: >
+      LDO5 power supply node, if present.
+
+  aldoin-supply:
+    description: >
+      ALDO* power supply node, if present.
+
+  bldoin-supply:
+    description: >
+      BLDO* power supply node, if present.
+
+  cldoin-supply:
+    description: >
+      CLDO* power supply node, if present.
+
+  dldoin-supply:
+    description: >
+      DLDO* power supply node, if present.
+
+  eldoin-supply:
+    description: >
+      ELDO* power supply node, if present.
+
+  fldoin-supply:
+    description: >
+      FLDO* power supply node, if present.
+
+  ips-supply:
+    description: >
+      LDO_IO0, LDO_IO1 and RTC_LDO power supply node, if present.
+
+  drivevbus-supply:
+    description: >
+      DRIVEVBUS power supply node, if present.
+
+  swin-supply:
+    description: >
+      SW power supply node, if present.
+
+  adc:
+    $ref: /schemas/iio/adc/x-powers,axp209-adc.yaml#
+
+  gpio:
+    $ref: /schemas/gpio/x-powers,axp209-gpio.yaml#
+
+  ac-power:
+    $ref: /schemas/power/supply/x-powers,axp20x-ac-power-supply.yaml#
+
+  battery-power:
+    $ref: /schemas/power/supply/x-powers,axp20x-battery-power-supply.yaml#
+
+  usb-power:
+    $ref: /schemas/power/supply/x-powers,axp20x-usb-power-supply.yaml#
+
+  regulators:
+    type: object
+
+    properties:
+      x-powers,dcdc-freq:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description: >
+          Defines the work frequency of DC-DC in kHz.
+
+    patternProperties:
+      "^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|rtc(_|-)ldo|drivevbus|dc5ldo)$":
+        $ref: /schemas/regulator/regulator.yaml#
+        type: object
+
+        properties:
+          regulator-ramp-delay:
+            enum: [ 800, 1600 ]
+            description: >
+              Only valid for the DCDC2 and LDO3 regulators.
+
+          regulator-soft-start:
+            description: >
+              Only valid for the LDO3 regulator.
+
+          x-powers,dcdc-workmode:
+            $ref: /schemas/types.yaml#/definitions/uint32
+            enum: [0, 1]
+            description: >
+              Only valid for DCDC regulators. Setup 1 for PWM mode, 0
+              for AUTO (PWM/PFM) mode. The DCDC regulators work in a
+              mixed PWM/PFM mode, using PFM under light loads and
+              switching to PWM for heavier loads. Forcing PWM mode
+              trades efficiency under light loads for lower output
+              noise. This probably makes sense for HiFi audio related
+              applications that aren't battery constrained.
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#interrupt-cells"
+  - interrupt-controller
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+      i2c0 {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          pmic@30 {
+              compatible = "x-powers,axp152";
+              reg = <0x30>;
+              interrupts = <0>;
+              interrupt-controller;
+              #interrupt-cells = <1>;
+          };
+      };
+
+  - |
+      #include <dt-bindings/interrupt-controller/irq.h>
+
+      i2c0 {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          pmic@34 {
+              compatible = "x-powers,axp209";
+              reg = <0x34>;
+              interrupt-parent = <&nmi_intc>;
+              interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+              interrupt-controller;
+              #interrupt-cells = <1>;
+
+              ac_power_supply: ac-power {
+                  compatible = "x-powers,axp202-ac-power-supply";
+              };
+
+              axp_adc: adc {
+                  compatible = "x-powers,axp209-adc";
+                  #io-channel-cells = <1>;
+              };
+
+              axp_gpio: gpio {
+                  compatible = "x-powers,axp209-gpio";
+                  gpio-controller;
+                  #gpio-cells = <2>;
+              };
+
+              battery_power_supply: battery-power {
+                  compatible = "x-powers,axp209-battery-power-supply";
+              };
+
+              regulators {
+                  /* Default work frequency for buck regulators */
+                  x-powers,dcdc-freq = <1500>;
+
+                  reg_dcdc2: dcdc2 {
+                      regulator-always-on;
+                      regulator-min-microvolt = <1000000>;
+                      regulator-max-microvolt = <1450000>;
+                      regulator-name = "vdd-cpu";
+                  };
+
+                  reg_dcdc3: dcdc3 {
+                      regulator-always-on;
+                      regulator-min-microvolt = <1000000>;
+                      regulator-max-microvolt = <1400000>;
+                      regulator-name = "vdd-int-dll";
+                  };
+
+                  reg_ldo1: ldo1 {
+                      /* LDO1 is a fixed output regulator */
+                      regulator-always-on;
+                      regulator-min-microvolt = <1300000>;
+                      regulator-max-microvolt = <1300000>;
+                      regulator-name = "vdd-rtc";
+                  };
+
+                  reg_ldo2: ldo2 {
+                      regulator-always-on;
+                      regulator-min-microvolt = <3000000>;
+                      regulator-max-microvolt = <3000000>;
+                      regulator-name = "avcc";
+                  };
+
+                  reg_ldo3: ldo3 {
+                      regulator-name = "ldo3";
+                  };
+
+                  reg_ldo4: ldo4 {
+                      regulator-name = "ldo4";
+                  };
+
+                  reg_ldo5: ldo5 {
+                      regulator-name = "ldo5";
+                  };
+              };
+
+              usb_power_supply: usb-power {
+                  compatible = "x-powers,axp202-usb-power-supply";
+              };
+          };
+      };
-- 
2.31.1

