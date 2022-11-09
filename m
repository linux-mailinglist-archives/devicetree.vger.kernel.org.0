Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 767036221F4
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 03:31:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiKICbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 21:31:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbiKICbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 21:31:16 -0500
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88ECC5E9D3
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 18:31:15 -0800 (PST)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-13b23e29e36so18292561fac.8
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 18:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CvwKYoaQMQBGhpIx95TjIL08797uddmCVIwy9Hsa2sw=;
        b=x/2GAnwcFDfYRCxolKTAYJb6bpYsA/VH3hzsYZcxCV45P02zT/OXzcbPfguISJYTG2
         rT7iBOX+JOfIufaq40STxKvpRecqegGdSWjhr1GTTh2MUDGP+2tukLfZyVQtIjz5yhZB
         MXXacuaKCJNcTeFg7gQQE3JgDKMVkAijN53em3jmbGq27JyEOK5QbFtqCrLZdOU4RqUX
         aNcRDgQQzVyUKDocnt1FeAltQusNhJKKKFAGBa9Gv+4LpyFyA+VMmo6uIr9E/d/yHbHq
         Z1ay0vPM5u7p98dif/czi66QN/OF1WUhvpVAmUMTudQTytJ6QL4vVl73lXfxUyKgpN/D
         tqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CvwKYoaQMQBGhpIx95TjIL08797uddmCVIwy9Hsa2sw=;
        b=iVdzjKGxgJWJi/5cY/nIDaqA5UbT61XFT1FgyKnzi65+4z73JpvFFWUYnJdJvMHh5n
         In/nddl3JHRHfRvjR+wiPOfUIPVqVR1XIIbFx1Id7jr/7a+y8bi8uk6zt+tWO0ck9a7r
         sKD0eAd+yei38JOh8INeb+1EdlyVk7W7n/zkJp5WamyF3q8TvoREWaH57EdfyfApRpEl
         Gy/DyRvDUSpKAnpdoGOzufIiCDCslyz7WKtj2YuP0n2wLrUNTUCDhVSbbpTJx9EntsDA
         0v7QrStHzUm8l01RfvzwIuoKsuxa7KjgwL10LTPNf+ohDLGhUnTxvgLbBRLU4H9qlBFd
         rS6w==
X-Gm-Message-State: ACrzQf18A5N45tqmykZRvDSgy9Y2Od1lC0sgJBHzcIWCJMfWgbpfP0zk
        nZbpA1IVYT7GgfmkLPNCB3ihoLyhktAklbaN
X-Google-Smtp-Source: AMsMyM5KrsfxaA7t4qNlRQWs1DLMymEseNg6jgsQyA2ddoeOpsJsPs0uJeSI7+TTdfrRXlQLw9145w==
X-Received: by 2002:a05:6870:808f:b0:13d:3e44:49ff with SMTP id q15-20020a056870808f00b0013d3e4449ffmr26050456oab.63.1667961074079;
        Tue, 08 Nov 2022 18:31:14 -0800 (PST)
Received: from nroth-pc.attlocal.net ([2600:1700:20:20c0:52f1:294a:8d5c:ee])
        by smtp.gmail.com with ESMTPSA id m14-20020a9d7ace000000b0066cacb8343bsm4257675otn.41.2022.11.08.18.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 18:31:13 -0800 (PST)
From:   Nicholas Roth <nicholas@rothemail.net>
To:     devicetree@vger.kernel.org
Cc:     mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Nicholas Roth <nicholas@rothemail.net>
Subject: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
Date:   Tue,  8 Nov 2022 20:31:01 -0600
Message-Id: <20221109023100.64143-2-nicholas@rothemail.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221109023100.64143-1-nicholas@rothemail.net>
References: <20221109023100.64143-1-nicholas@rothemail.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a device tree binding for the Omnivision OV8858 image sensor.
The OV8858 is an 8 megapixel image sensor which provides images in RAW
format over MIPI CSI-2 data bus and is controlled through an
I2C-compatibile SCCB bus.

Tested on PinePhone Pro with libcamera cam and qcam.

Signed-off-by: Nicholas Roth <nicholas@rothemail.net>
---
 .../devicetree/bindings/media/i2c/ov8858.yaml | 139 ++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8858.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8858.yaml b/Documentation/devicetree/bindings/media/i2c/ov8858.yaml
new file mode 100644
index 000000000000..f004e57b05ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov8858.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/ov8858.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
+
+maintainers:
+  - Nicholas Roth <nicholas@rothemail.net>
+
+description: |-
+  The Omnivision OV8858 is an 8 megapixel image sensor which provides
+  images in RAW format over MIPI CSI-2 data bus with up to 4 lanes
+  and is controlled through an I2C-compatibile SCCB bus.
+
+properties:
+  compatible:
+    const: ovti,ov8858
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    description:
+      Input clock for the sensor.
+    items:
+      - const: xvclk
+
+  clock-frequency:
+    description:
+      Frequency of the xvclk clock in Hertz.
+    minimum: 6000000
+    default: 24000000
+    maximum: 27000000
+
+  dovdd-supply:
+    description:
+      Definition of the regulator used as interface power supply.
+
+  avdd-supply:
+    description:
+      Definition of the regulator used as analog power supply.
+
+  dvdd-supply:
+    description:
+      Definition of the regulator used as digital power supply.
+
+  reset-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls sensor reset.
+      This corresponds to the hardware pin XSHUTDN which is physically
+      active low.
+
+  powerdown-gpios:
+    description:
+      The phandle and specifier for the GPIO that controls power down.
+      This corresponds to the hardware pin PWDNB which is physically
+      active low.
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            description: |-
+              The driver supports both two- and four-lane operation.
+            items:
+              - const: 1
+              - const: 2
+              - const: 3
+              - const: 4
+
+          link-frequencies:
+            description: Frequencies listed are driver, not h/w limitations.
+            maxItems: 1
+            items:
+              enum: [ 360000000 ]
+
+        required:
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-frequency
+  - dovdd-supply
+  - avdd-supply
+  - dvdd-supply
+  - reset-gpios
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ucam: camera@36 {
+            compatible = "ovti,ov8858";
+            reg = <0x36>;
+
+            reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+            powerdown-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&ucam_pdn &ucam_rst>;
+
+            clocks = <&cam_osc>;
+            clock-names = "xvclk";
+            clock-frequency = <24000000>;
+
+            dovdd-supply = <&vcc1v8_dvp>;
+            dvdd-supply = <&vcc1v2_dvp>;
+            avdd-supply = <&vcc2v8_dvp>;
+
+            port {
+                ucam_out: endpoint {
+                    remote-endpoint = <&mipi_in_ucam>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <360000000>;
+                };
+            };
+        };
+    };
-- 
2.34.1

