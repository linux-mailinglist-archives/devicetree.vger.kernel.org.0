Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD43638B4B
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 14:34:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbiKYNeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 08:34:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbiKYNeq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 08:34:46 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B25931F97
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:42 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id ha10so10426714ejb.3
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 05:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJTIVK18fIcfINgW/kIkQre1Afy1mnOVsGapwQA3x6g=;
        b=p3jHphgvAvqTafW/HDcITMDwewqYLWtOgr1dDSEgtqgZwDcvSOVgW8cptFWw7p4jCH
         CwShcDAouhceOa2Whzez8j5AYsjcwm4rQ6+lIuJ1OeuNnSyzL8KrbPudu54yoz0xv7oo
         R840Ja7Ii4XhFeMT2NL42ZW/xptCHQeDjBMVYhQhNXh9dzPSSEnH6IiSWh9YI4RvpL01
         W40M+MyWglPwc2/vhGNCgu85WvPYaMps07tEhSmOkNb7awmSZ4wXCtNVQHJok2SX3HPK
         rnp3hZYoNGNNNZIQ+QLtF/+/1T9us9/MIoAP0BvEjDv/JguIsCT//7tlGn6xwAzVwXHA
         mOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJTIVK18fIcfINgW/kIkQre1Afy1mnOVsGapwQA3x6g=;
        b=gGvCFkPtNQ2SUcjjz40ATyg74wWjmmi7y4XRLNlNpbLhHDPleGSv/TW2tTXecrIuzV
         u4EgYKi9lx/dmUx+d5ozrvD3pv0I1XTJ7xe+fRgwLjV2+OUcCUexUpP+SW1vgfFxHFuZ
         baik4PoPd31JvuiQgUo74PLXV7glq0fsAm2ZETo/Epj+GnZd6jfYxJjwj02DF2SNTEU7
         o9jr0GEACbPq+6wSOmdVh1LF/9ywOQy4c81CDX0iWLzjEHqnOeSd/m9ZMaU/xBQwB2i6
         PzFDuyS/bvhIuH06f4cxQ6iI4MSqXgA7HV4Fd0aNWJD1XCFfS+bCzimOD6qGcU5/9NHZ
         1+Jw==
X-Gm-Message-State: ANoB5plbmPRFmr/gwSPYKR6mi/ODzSGiIAwPD0DeXX+BJLBFxbbYhmMj
        Y/AhR/5kTd+gkV1T6Necut4Ahw==
X-Google-Smtp-Source: AA0mqf6Qcb0ETYmj2YSw1h6NIzK4oVf7xhy/JaDNDlRdVUzGSwwq9SIV9QPlkNqsSxJV6vyfSRMJrg==
X-Received: by 2002:a17:906:cc8f:b0:78b:8ce7:fe3c with SMTP id oq15-20020a170906cc8f00b0078b8ce7fe3cmr31909858ejb.557.1669383281837;
        Fri, 25 Nov 2022 05:34:41 -0800 (PST)
Received: from melexis ([2a02:2378:1085:b41d:1fad:f315:d8eb:738b])
        by smtp.gmail.com with ESMTPSA id g3-20020a170906538300b0078cb06c2ef9sm1565351ejo.8.2022.11.25.05.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 05:34:41 -0800 (PST)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     <linux-media@vger.kernel.org>
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
        Volodymyr Kharuk <vkh@melexis.com>
Subject: [PATCH v3 7/8] media: dt-bindings: media: i2c: Add mlx7502x camera sensor
Date:   Fri, 25 Nov 2022 15:34:10 +0200
Message-Id: <343c0ab708ab35ec101bcefbe2fda5c15d5e6bfd.1669381013.git.vkh@melexis.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <cover.1669381013.git.vkh@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree binding of the mlx7502x and update MAINTAINERS

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 .../bindings/media/i2c/melexis,mlx7502x.yaml  | 126 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 2 files changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
new file mode 100644
index 000000000000..7b86b6c5b151
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/melexis,mlx7502x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Melexis ToF 7502x MIPI CSI-2 Sensor
+
+maintainers:
+  - Volodymyr Kharuk <vkh@melexis.com>
+
+description: |-
+  Melexis ToF 7502x sensors has a CSI-2 output. It supports 2 and 4 lanes,
+  and mipi speeds are 300, 600, 704, 800, 904, 960Mbs. Supported format is RAW12.
+  Sensor 75026 is QVGA, while 75027 is VGA sensor.
+
+properties:
+  compatible:
+    enum:
+      - melexis,mlx75026
+      - melexis,mlx75027
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    description: Clock frequency 8MHz
+    maxItems: 1
+
+  vdda-supply:
+    description:
+      Analog power supply(2.7V).
+
+  vddif-supply:
+    description:
+      Interface power supply(1.8V).
+
+  vddd-supply:
+    description:
+      Digital power supply(1.2V).
+
+  vdmix-supply:
+    description:
+      Mixed driver power supply(1.2V).
+
+  reset-gpios:
+    maxItems: 1
+    description: Reset Sensor GPIO Control (active low)
+
+  port:
+    description: MIPI CSI-2 transmitter port
+    $ref: /schemas/graph.yaml#/$defs/port-base
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            oneOf:
+              - items:
+                  - const: 1
+                  - const: 2
+              - items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
+        required:
+          - data-lanes
+          - link-frequencies
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - port
+  - vdda-supply
+  - vddif-supply
+  - vddd-supply
+  - vdmix-supply
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
+        mlx7502x: camera@57 {
+            compatible = "melexis,mlx75027";
+            reg = <0x57>;
+            clocks = <&mlx7502x_clk>;
+
+            assigned-clocks = <&mlx7502x_clk>;
+            assigned-clock-parents = <&mlx7502x_clk_parent>;
+            assigned-clock-rates = <8000000>;
+
+            vdda-supply = <&reg_2v7>;
+            vddif-supply = <&reg_1v8>;
+            vddd-supply = <&reg_1v2>;
+            vdmix-supply = <&reg_1v2>;
+
+            reset-gpios = <&gpio_exp 6 GPIO_ACTIVE_HIGH>;
+
+            port {
+                mlx7502x_out_mipi_csi2: endpoint {
+                    remote-endpoint = <&mipi_csi2_from_mlx7502x>;
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 < 960000000
+                                                   904000000
+                                                   800000000
+                                                   704000000
+                                                   600000000
+                                                   300000000 >;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 0a6dda8da6bc..de7bece020f8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13116,6 +13116,7 @@ M:	Volodymyr Kharuk <vkh@melexis.com>
 L:	linux-media@vger.kernel.org
 S:	Supported
 W:	http://www.melexis.com
+F:	Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
 F:	Documentation/userspace-api/media/drivers/mlx7502x.rst
 F:	Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
 F:	include/uapi/linux/mlx7502x.h
-- 
BR,
Volodymyr Kharuk

