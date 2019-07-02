Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA5785CB1A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 10:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728849AbfGBIKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 04:10:39 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:39895 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728832AbfGBIKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 04:10:34 -0400
Received: by mail-wm1-f67.google.com with SMTP id z23so2174786wma.4
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 01:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RsDRgnG30eH/2HxBr2CWqa8LThIzd6WAhW3RPg8E7LY=;
        b=ATtYMSiq8qyZaEXMNFb5e+Q1VIOVwuQ/cIZS9AYHlGxNZAf3RTf6nN5q1seQ09EHgP
         zb1FCvEsnqA+eEYxkdQZviWbWCTKnlv/jrHh9IYa3APdlmKxxw4Zg5ijEHFdOqXq1HTN
         ZPog4pcB5zmhpfGq+yfqHYea9B6OuulG6lgLi1Yf/EjoB/+kGaVAzTdKj91fnMxUzw1v
         d3Jv2ocNz2RNdqJkefwvMh5VaYaksRGdRDJKGaJTYYTf5tZ06mi+tpq01zpMfZRJyFky
         aPQmy+6JOz3bxqYQhhoJmtu4MokxglB7eaKIpdqUvSLnESGfGoZl8LSGZzuhI0vmjLCr
         fgrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RsDRgnG30eH/2HxBr2CWqa8LThIzd6WAhW3RPg8E7LY=;
        b=SyEd5tsHjbZ66QtMJ62MYCRItS7+rG0VYJ5/1c3u+I2658IWeOWBkDfDAMRJJkKoT/
         u+at1JCMUcD6tGVP1UdoVXqfpjZ0cTRViHq77Ai7lBP4tyaanBlNfhtZ6PjcQ2CbJKkF
         Xp8J3WhrrTplEUaAihPrSBjfmHNAeoPxss2KM4wpMmptM1UaIA2ME9LUfqCF0CVcWgkC
         mmtyhWdwBJp4u+XRF3DsYiAm/fo7quw77ZLS2rcMGKLsOF6eoMawRTrNuQdGLc1gWpnN
         /L0/V6mK+BV8Z5fTfPPI1nwxc8FqO9JjOAucOu8uzrCDHDTns5Pc361hKwh3JdVFuNZ2
         FbaQ==
X-Gm-Message-State: APjAAAXKefnFXu5yZok6lv53bqFXLF8Ytow3BtoUSF8HaCjDiWikZcTL
        SU+NSPB1fC54eo5MIcfQA5zYIA==
X-Google-Smtp-Source: APXvYqzJ3k2SZabdiLOVGHVAtma51tP5xjFabLy3yxUQK8/QSeWwE0oZUiOjABUQya6P04Vtgf7arA==
X-Received: by 2002:a1c:f115:: with SMTP id p21mr2257357wmh.134.1562055031841;
        Tue, 02 Jul 2019 01:10:31 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id e4sm1608859wme.16.2019.07.02.01.10.30
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 01:10:31 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org,
        srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 1/6] ASoC: dt-bindings: add dt bindings for WCD9340/WCD9341 audio codec
Date:   Tue,  2 Jul 2019 09:09:15 +0100
Message-Id: <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for wcd9340/wcd9341 audio codec which can
support both SLIMbus and I2S/I2C interface.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wcd934x.txt           | 188 ++++++++++++++++++
 1 file changed, 188 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd934x.txt

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt b/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
new file mode 100644
index 000000000000..2b48c98b5b7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd934x.txt
@@ -0,0 +1,188 @@
+QCOM WCD9340/9341 Codec Bindings
+
+Qualcomm WCD9340/WCD9341 Codec is a standalone Hi-Fi audio codec IC, supports
+Qualcomm Technologies, Inc. (QTI) multimedia solutions, including
+the MSM8996, MSM8976, and MSM8956 chipsets. It has in-built
+Soundwire controller, interrupt mux. It supports both I2S/I2C and
+SLIMbus audio interfaces.
+
+Required properties with SLIMbus Interface:
+
+- compatible:
+	Usage: required
+	Value type: <stringlist>
+	Definition: For SLIMbus interface it should be "slimMID,PID",
+		    textual representation of Manufacturer ID, Product Code,
+		    shall be in lower case hexadecimal with leading zeroes
+		    suppressed.  Refer to slimbus/bus.txt for details.
+		    Should be:
+		    "slim217,250" for SDM845/SDA845 SoCs with SLIMbus.
+
+- reg
+	Usage: required
+	Value type: <u32 u32>
+	Definition: Should be ('Device index', 'Instance ID')
+
+- interrupts
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: Interrupts via WCD INTR1 and INTR2 pins
+
+- interrupt-names:
+	Usage: required
+	Value type: <String array>
+	Definition: Interrupt names of WCD INTR1 and INTR2
+	Should be: "intr1", "intr2"
+
+- reset-gpios:
+	Usage: required
+	Value type: <String Array>
+	Definition: Reset gpio line
+
+- slim-ifc-dev:
+	Usage: required
+	Value type: <phandle>
+	Definition: SLIM interface device
+
+- clocks:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: See clock-bindings.txt section "consumers". List of
+                three clock specifiers for mclk, mclk2 and slimbus clock.
+
+- clock-names:
+	Usage: required
+	Value type: <string>
+	Definition: Must contain "mclk", "mclk2" and "slimbus" strings.
+
+- vdd-buck-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the 1.8V buck supply
+
+- vdd-buck-sido-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the 1.8V SIDO buck supply
+
+- vdd-rx-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the 1.8V rx supply
+
+- vdd-tx-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the 1.8V tx supply
+
+- vdd-vbat-supply:
+	Usage: Optional
+	Value type: <phandle>
+	Definition: Should contain a reference to the vbat supply
+
+- vdd-micbias-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the micbias supply
+
+- vdd-io-supply:
+	Usage: required
+	Value type: <phandle>
+	Definition: Should contain a reference to the 1.8V io supply
+
+- qcom,micbias1-lvl:
+	Usage: required
+	Value type: <u32>
+	Definition: Should be voltage in milli Volts for micbias1 output
+	Supported values are in inbetween 1800mV-2850mV
+
+- qcom,micbias2-lvl:
+	Usage: required
+	Value type: <u32>
+	Definition: Should be voltage in milli Volts for micbias2 output
+	Supported values are in inbetween 1800mV-2850mV
+
+- qcom,micbias3-lvl:
+	Usage: required
+	Value type: <u32>
+	Definition: Should be voltage in milli Volts for micbias3 output
+	Supported values are in inbetween 1800mV-2850mV
+
+- qcom,micbias4-lvl:
+	Usage: required
+	Value type: <u32>
+	Definition: Should be voltage in milli Volts for micbias4 output
+	Supported values are in inbetween 1800mV-2850mV
+
+- clock-output-names:
+	Usage: required
+	Value type: <string>
+	Definition: Should be the "mclk", corresponding to name
+			of the clk output.
+
+- clock-frequency:
+	Usage: required
+	Definition: Indicating the frequency of mclk output.
+
+- interrupt-controller:
+	Usage: required
+	Definition: Indicating that this is a interrupt controller
+
+- #interrupt-cells:
+	Usage: required
+	Value type: <int>
+	Definition: should be 1
+
+- #clock-cells:
+	Usage: required
+	Value type: <int>
+	Definition: should be 0, as there is only one clock out supported.
+
+#sound-dai-cells
+	Usage: required
+	Value type: <u32>
+	Definition: Must be 1
+
+Example:
+
+wcd9340: audio-codec@1{
+	compatible = "slim217,250";
+	reg  = <1 0>;
+	reset-gpios = <&tlmm 64 0>;
+	slim-ifc-dev  = <&wcd9340_ifd>;
+	vdd-buck-supply = <&vreg_s4a_1p8>;
+	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
+	vdd-tx-supply = <&vreg_s4a_1p8>;
+	vdd-rx-supply = <&vreg_s4a_1p8>;
+	vdd-io-supply = <&vreg_s4a_1p8>;
+	qcom,micbias1-lvl = <1800>;
+	qcom,micbias2-lvl = <1800>;
+	qcom,micbias3-lvl = <1800>;
+	qcom,micbias4-lvl = <1800>;
+
+	interrupt-parent = <&tlmm>;
+	interrupts = <54 IRQ_TYPE_LEVEL_HIGH>;
+	interrupt-names  = "intr1";
+	interrupt-controller;
+	#interrupt-cells = <1>;
+
+	#clock-cells = <0>;
+	clock-frequency = <9600000>;
+	clock-output-names = "mclk";
+	#sound-dai-cells = <1>;
+
+	pinctrl@42 {
+		compatible = "qcom,wcd9340-pinctrl";
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-ranges = <&wcdpinctrl 0 0 5>;
+		reg = <0x42 0x2>;
+		...
+	};
+
+	soundwire@c85{
+		compatible = "qcom,soundwire-v1.3.0";
+		reg = <0xc85 0x40>;
+		...
+	};
+};
-- 
2.21.0

