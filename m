Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 317E61377B4
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2020 21:10:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726139AbgAJUK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jan 2020 15:10:29 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:36737 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbgAJUK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jan 2020 15:10:29 -0500
Received: by mail-lj1-f196.google.com with SMTP id r19so3402467ljg.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2020 12:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WcGRB9OJwUTfjlHMWeRNoxOKPcoBl1c/mM8EB+BB8ZI=;
        b=f8DjVUdNjVUau715imTFPI6GTPGGeHZbzV9S6CSJfzAqx1XdlI6sxt7zuXuSrriZEI
         XsSLw8wzn01AjyGGuJGBf3AqLVSQysy6ficQSWtOk3ulykB3EOCx+Gwdmg2ADtXYOvLX
         4Q7kYrfy5CE6wSFq5qeQpeKOPoBBKm49kWU/ZEmmTRV3DS150ipTWJfDGcUX81sYp6PQ
         cgkAqFdikuBu1Z3FnOx1Fc4S4wEsWXp8898La/qklAZvF66a6tvd37etjBf1TJ2uVGCq
         B1GDEN2Hmvdt2uSgaX+90Hzdxb87hmkgbvhhPJBpgbHcIrwR+T4ZJeiaAi7S4dJzD1bi
         hE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WcGRB9OJwUTfjlHMWeRNoxOKPcoBl1c/mM8EB+BB8ZI=;
        b=nLaVKCGRsj6/yQ1J3YmaQBTwGagOpGh7c1HlAYzyZO6szvp87OqQJDoylKnE2QoGL7
         94p72EzaydftJsJCTup1ecb+ExY3E7lJY0+Ajiz16twE2i4GPhUJfY5+2FYket51fKQA
         J/NHo/20OTjFPBzLKhXQhk2YPLual6kw1J2kCgt2uE4ICJj7f/RDExP242eAtqQLkWrM
         Hgjcan2m568qnONX5rzv1mh4cqYvpQ7c5KWrqi0JC+yg4fhy3LSecKhs4ORx24XTOxtB
         BFqiAyw1UOGzkGLtEx3YhfDq3/IQ1c1V55PaBDYpg/HGzglbtjbGgp4ZLTbDHOXIAWeQ
         6UMA==
X-Gm-Message-State: APjAAAWjZwyWfUxg0tXZWfRQWAtTGlIdaHXQ3aCKHN20vFQ9m5efS2t+
        976iwqRQQwwBhTKHX1djhUyEXg==
X-Google-Smtp-Source: APXvYqwkcRv9boHlXq0p6MOc5/aPysKWuSwBRF2/pK0ZfwrEc+fOIXsmzncrvhjxIAieQYXRmRwLQw==
X-Received: by 2002:a2e:978d:: with SMTP id y13mr3720238lji.103.1578687026948;
        Fri, 10 Jan 2020 12:10:26 -0800 (PST)
Received: from TM-8481.Dlink (office.dev.rtsoft.ru. [62.117.114.130])
        by smtp.googlemail.com with ESMTPSA id n13sm1484225lji.91.2020.01.10.12.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2020 12:10:26 -0800 (PST)
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        peter.griffin@linaro.org, dave.stevenson@raspberrypi.com,
        ezequiel@collabora.com, sakari.ailus@linux.intel.com,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX219 CMOS sensor binding
Date:   Fri, 10 Jan 2020 23:09:14 +0300
Message-Id: <20200110200915.22575-2-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110200915.22575-1-andrey.konovalov@linaro.org>
References: <20200110200915.22575-1-andrey.konovalov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add YAML device tree binding for IMX219 CMOS image sensor, and
the relevant MAINTAINERS entries.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 .../devicetree/bindings/media/i2c/imx219.yaml | 104 ++++++++++++++++++
 MAINTAINERS                                   |   8 ++
 2 files changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx219.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/imx219.yaml b/Documentation/devicetree/bindings/media/i2c/imx219.yaml
new file mode 100644
index 000000000000..536766b63e39
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/imx219.yaml
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/imx219.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony 1/4.0-Inch 8Mpixel CMOS Digital Image Sensor
+
+maintainers:
+  - Dave Stevenson <dave.stevenson@raspberrypi.com>
+
+description: |-
+  The Sony imx219 is a 1/4.0-inch CMOS active pixel digital image sensor
+  with an active array size of 3280H x 2464V. It is programmable through
+  I2C interface. The I2C address is fixed to 0x10 as per sensor data sheet.
+  Image data is sent through MIPI CSI-2, which is configured as either 2 or
+  4 data lanes.
+
+properties:
+  compatible:
+    const: sony,imx219
+
+  reg:
+    description: I2C device address
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  VDIG-supply:
+    description:
+      Digital I/O voltage supply, 1.8 volts
+
+  VANA-supply:
+    description:
+      Analog voltage supply, 2.8 volts
+
+  VDDL-supply:
+    description:
+      Digital core voltage supply, 1.2 volts
+
+  reset-gpios:
+    description: |-
+      Reference to the GPIO connected to the xclr pin, if any.
+      Must be released (set high) after all supplies are applied.
+
+  # See ../video-interfaces.txt for more details
+  port:
+    type: object
+    properties:
+      endpoint:
+        type: object
+        properties:
+          data-lanes:
+            description: |-
+              The sensor supports either two-lane, or four-lane operation.
+              If this property is omitted four-lane operation is assumed.
+              For two-lane operation the property must be set to <1 2>.
+            items:
+              - const: 1
+              - const: 2
+
+          clock-noncontinuous:
+            type: boolean
+            description: |-
+              MIPI CSI-2 clock is non-continuous if this property is present,
+              otherwise it's continuous.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - VANA-supply
+  - VDIG-supply
+  - VDDL-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        imx219: sensor@10 {
+            compatible = "sony,imx219";
+            reg = <0x10>;
+            clocks = <&imx219_clk>;
+            VANA-supply = <&imx219_vana>;   /* 2.8v */
+            VDIG-supply = <&imx219_vdig>;   /* 1.8v */
+            VDDL-supply = <&imx219_vddl>;   /* 1.2v */
+
+            port {
+                imx219_0: endpoint {
+                    remote-endpoint = <&csi1_ep>;
+                    data-lanes = <1 2>;
+                    clock-noncontinuous;
+                };
+            };
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 4017e6b760be..61b598f072e8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15351,6 +15351,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx214.c
 F:	Documentation/devicetree/bindings/media/i2c/sony,imx214.txt
 
+SONY IMX219 SENSOR DRIVER
+M:	Dave Stevenson <dave.stevenson@raspberrypi.com>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx219.c
+F:	Documentation/devicetree/bindings/media/i2c/imx219.yaml
+
 SONY IMX258 SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1

