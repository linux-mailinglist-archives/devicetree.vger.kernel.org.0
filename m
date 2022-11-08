Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02681620798
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 04:38:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232060AbiKHDiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 22:38:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232420AbiKHDiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 22:38:23 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A8339FD1
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 19:38:22 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id h132so6454454oif.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 19:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o1qE6GC8oXjZ8cmlUaD2BKYBmNdPTSK3HjF9SZnB9kY=;
        b=vfcDKckaAvB7b3EdRt1FUpkkRMIl1mGXtx+FaEKe/qDMjN9Pajy//6n0TBTkulS7af
         01DUrw5UKod/DpYjdYGxjlnWIZPM4uBn3H5eB8ByA2G3qTYrY1ULtMOchbK8YS7D5imM
         Ejx0yWslD9dTzidGqQ7ee7P40wCDumxUsYh/IrtNA32q+I/avZ/iSViJri/Aw+SgG8dz
         qnEvsNK5t0ny6lnHUfBn8txkXgeGoHSXB4pXZOQPIKKxza6KrgsStkPVMgAUz/+/IrOs
         Jc5jktzqGCpmjYmgddeKfbCMF1kJisKgOp7klVdohclBssESSF3kxlZqoSldYD3pDggK
         cz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o1qE6GC8oXjZ8cmlUaD2BKYBmNdPTSK3HjF9SZnB9kY=;
        b=0eABnzsG0xkHN+Uk4AbVvl1IWH7Z/zAtN0A5LdEtitJyrFZTYjp3XhTcEfqhze8+o9
         62IHP8KXerCvr/Ro5QvuAuns+8wj+aNH+BsTFiJdeR2OtrFwIXRAtNuciYdY0bXC4siV
         fGOo60M+RaiyfOQ/xnPgdA5j89A+nLkGlqu24NPmAVEGvqzEmXgQdB/YJ2+iMeSrKQxJ
         Dvrpq3yuyLA5HHbKLkd89ASgbfrKOGY8w8+rcogy8nH+xNDW/5Rv99vM47xEHCSMf/30
         tBgFOu8y2YUhJ9iQDylKFMF/rfFH9iK40kv6bHgAShkqx6OMtOQjwJfoPoNgiBddw4GS
         pbkw==
X-Gm-Message-State: ACrzQf1opzSRdIJRuGy+P6MyX8wlcoSjLR0NdtHWD61JemHPOCnwezgu
        RBN5Y7Dqm9JtHFCQacjAJZpc3ohITxuSClv3
X-Google-Smtp-Source: AMsMyM6XUGgoUB6eSWR4mKev5HGO21Y9Xz+8TVNAygZudVwQ0aDaBwIx2co4n7o9WP7h+idgimp/7g==
X-Received: by 2002:a05:6808:3010:b0:355:23ba:8631 with SMTP id ay16-20020a056808301000b0035523ba8631mr36626492oib.269.1667878700619;
        Mon, 07 Nov 2022 19:38:20 -0800 (PST)
Received: from nroth-pc.attlocal.net ([2600:1700:20:20c0:ffe2:ef38:3f9e:dd6d])
        by smtp.gmail.com with ESMTPSA id k15-20020a056870350f00b0010d5d5c3fc3sm4053672oah.8.2022.11.07.19.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 19:38:20 -0800 (PST)
From:   Nicholas Roth <nicholas@rothemail.net>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Nicholas Roth <nicholas@rothemail.net>
Subject: [PATCH] dt-bindings: media: Add Omnivision ov8858 binding
Date:   Mon,  7 Nov 2022 21:38:13 -0600
Message-Id: <20221108033813.16502-2-nicholas@rothemail.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108033813.16502-1-nicholas@rothemail.net>
References: <20221108033813.16502-1-nicholas@rothemail.net>
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
 .../bindings/i2c/ovti,ov8858-i2c.yaml         | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml b/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
new file mode 100644
index 000000000000..1300c1b6fa17
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-imx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale Inter IC (I2C) and High Speed Inter IC (HS-I2C) for OV8858
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible: ovti,ov8858
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: xvclk
+
+  clock-frequency:
+    minimum: 24000000
+    default: 24000000
+    maximum: 24000000
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c@ff110000 {
+        status = "okay";
+
+        clock-frequency = <400000>;
+        i2c-scl-rising-time-ns = <300>;
+        i2c-scl-falling-time-ns = <15>;
+        
+        pinctrl-0 = <&i2c1_xfer &cif_clkouta>;
+        
+        assigned-clocks = <&cru SCLK_CIF_OUT &cru SCLK_CIF_OUT_SRC>;
+        assigned-clock-parents = <&cru SCLK_CIF_OUT_SRC &cru PLL_GPLL>;
+        assigned-clock-rates = <19200000 0>;
+        ucam: camera@36 {
+            compatible = "ovti,ov8858";
+            reg = <0x36>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&ucam_pdn &ucam_rst>;
+
+            clocks = <&cru SCLK_CIF_OUT>;
+            clock-names = "xvclk";
+
+            dovdd-supply = <&vcc1v8_dvp>;
+            /*XXX: also depends on vcca1v8_codec for I2C bus power */
+
+            reset-gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_LOW>;
+            powerdown-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_LOW>;
+
+            rotation = <180>;
+
+            port {
+                ucam_out: endpoint {
+                    remote-endpoint = <&mipi_in_ucam>;
+                    data-lanes = <1 2 3 4>;
+                };
+            };
+        };
+    };
-- 
2.34.1

